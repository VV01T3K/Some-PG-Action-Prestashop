import { createFeature, createFeatureValue } from './api.ts';
import type { FeatureValueIdMap, Product, StringIdMap } from '../types.ts';

const products = await Bun.file('../scrapper-results/products.json').json();

function extractUniqueFeaturesValues(data: Product[], features_field_name: keyof Product): Map<string, Set<string>> {
    const uniqueFeatureValues = new Map<string, Set<string>>();
    for (const product of data) {
        const features_field = product[features_field_name] as Record<string, string>;
        if (!features_field) continue;

        for(const [featureName, featureValue] of Object.entries(features_field)) {
            const valueSet = uniqueFeatureValues.get(featureName) ?? new Set<string>();
            valueSet.add(featureValue);
            uniqueFeatureValues.set(featureName, valueSet);
        }
    }   
    return uniqueFeatureValues;
}

// creates all features-values through API and creates Maps with createdIds
async function initializeFeaturesValuesMaps(uniqueFeatureValues: Map<string, Set<string>>) {
    const featureIds: StringIdMap = new Map();
    const valueIds: FeatureValueIdMap = new Map();

    // Step 1: Create all features in parallel
    const featureEntries = Array.from(uniqueFeatureValues.entries());
    const featureCreationPromises = featureEntries.map(async ([featureName]) => {
        const featureId = await createFeature(featureName);
        return { featureName, featureId };
    });
    
    const createdFeatures = await Promise.all(featureCreationPromises);
    
    // Populate featureIds map
    for (const { featureName, featureId } of createdFeatures) {
        featureIds.set(featureName, featureId);
        valueIds.set(featureName, new Map());
    }

    // Step 2: Create all feature values in parallel
    const allValuePromises: Promise<void>[] = [];
    for (const { featureName, featureId } of createdFeatures) {
        const valueSet = uniqueFeatureValues.get(featureName)!;
        const currentValueMap = valueIds.get(featureName)!;
        
        for (const valueName of valueSet) {
            const promise = createFeatureValue(featureId, valueName).then(
                featureValueId => {
                    currentValueMap.set(valueName, featureValueId);
                }
            );
            allValuePromises.push(promise);
        }
    }
    
    await Promise.all(allValuePromises);
    return { featureIds, valueIds };
}

export async function seedFeatureValues() {
    const uniqueFeatureValues = extractUniqueFeaturesValues(products as unknown as Product[], 'product_specifications');
    return initializeFeaturesValuesMaps(uniqueFeatureValues);
}