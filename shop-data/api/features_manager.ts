import products from '../scrapper-results/products.json' assert { type: 'json' };
import { createCategory, createFeature, createFeatureValue, createSubCategory } from './api';
import type { FeatureValueIdMap, Product, StringIdMap } from '../types';

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

    const allPromises = [];

    for (const [featureName, valueSet] of uniqueFeatureValues.entries()) {
        
        const featureId = await createFeature(featureName); 
        featureIds.set(featureName, featureId);
        valueIds.set(featureName, new Map());

        const currentValueMap = valueIds.get(featureName)!; //takes the reference
        const valuePromises = [];
        for (const valueName of valueSet) {
            const promise = createFeatureValue(featureId, valueName).then(
                featureValueId => {
                    currentValueMap.set(valueName, featureValueId);
            });
            valuePromises.push(promise);            
        }
        // await Promise.all(valuePromises); // maybe await also can be removed?
        allPromises.push(Promise.all(valuePromises));
    }
    await Promise.all(allPromises);
    return { featureIds, valueIds };
}

export async function seedFeatureValues() {
    const uniqueFeatureValues = extractUniqueFeaturesValues(products as unknown as Product[], 'product_specifications');
    return initializeFeaturesValuesMaps(uniqueFeatureValues);
}