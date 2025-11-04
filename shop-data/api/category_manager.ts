import products from '../scrapper-results/products.json' assert { type: 'json' };
import { createCategory, createSubCategory } from './api';
import type { Product } from '../types';

interface CategoryInfo {
    parentUrlKey: string | undefined;
    urlKey: string;
    depth: number;
}

//analyzes products.json and extract all kategories 
function extractUniqueCategories(data: Product[], categories_field_name: keyof Product): Map<string, string> {
    const uniqueCategories = new Map<string, string>();
    for (const product of data) {
        const categories = product[categories_field_name] as Record<string, string>;
        if (!categories) continue;

        for(const [categoryName, categoryUrl] of Object.entries(categories)) {
            uniqueCategories.set(categoryName, categoryUrl);
        }
    }   
    return uniqueCategories;
}
//creates a map of CategoryName("Hobby",...) and parentUrlKey(needed later)("hobby", "zrob-to-sam",...), 
// ourUrlKey + depth num(e.g. 4==mainCategory, 5==subCategory, 6==subsubCategory,...)
function createCategoryMap(categories: Map<string, string>): Map<string, CategoryInfo> {
    const categoryMap = new Map<string, CategoryInfo>();
    
    for (const [categoryName, categoryUrl] of categories) {
        const parts = categoryUrl.split('/');
        const depth: number = parts.length;
        const urlKey = parts[depth - 2];
        let parentCategoryUrlKey: string | undefined = undefined;
        if (depth >= 6){ //then it's a subcategory
            parentCategoryUrlKey = parts[depth - 3];
            // console.log(`Category: ${categoryName} (URL: ${categoryUrl}) is a subcategory of ${parentCategoryName}`);
        } 
        if(!urlKey){
            console.log("Something went wrong. UrlKey not found");
            return new Map<string, CategoryInfo>();
        }
        const info: CategoryInfo = {
            parentUrlKey: parentCategoryUrlKey,
            urlKey: urlKey,
            depth: depth
        };
        categoryMap.set(categoryName, info);

    }
    return categoryMap;
}
function sortCategoryMapByDepth(categoryMap: Map<string, CategoryInfo>): Map<string, CategoryInfo> {
    const mapEntries = Array.from(categoryMap.entries());
    mapEntries.sort((a, b) => {
        return a[1].depth - b[1].depth;
    })
    const sortedMap = new Map<string, CategoryInfo>(mapEntries);
    return sortedMap;
}
function createCategoryMapWithCorrectOrder(): Map<string, CategoryInfo> {
    const unsortedMap = createCategoryMap(extractUniqueCategories(products as unknown as Product[], 'linked_categories_list')); 
    return sortCategoryMapByDepth(unsortedMap);
}
async function addAllCategoriesThroughApi(categoryMap: Map<string, CategoryInfo>): Promise<Map<string, number>>{
    const categoryUrlKeyIdMap = new Map<string, number>();
    const categoryNameIdMap = new Map<string, number>();
    for (const [categoryName, categoryInfo] of categoryMap) {
        const parentUrlKey = categoryInfo.parentUrlKey;
        if (parentUrlKey == undefined) { //then it's category
            const createdId: number = await createCategory(categoryName); // we receive the id
            categoryUrlKeyIdMap.set(categoryInfo.urlKey, createdId);
            categoryNameIdMap.set(categoryName, createdId);
        } else { //subcategory
            const parent_id = categoryUrlKeyIdMap.get(parentUrlKey); //parents are added first, so it should already be in that map
            if (!parent_id) {
                console.log("Critical error occurred, parent category not found in map!");
                return new Map<string, number>();
            }
            const createdId: number = await createSubCategory(categoryName, parent_id);
            categoryUrlKeyIdMap.set(categoryInfo.urlKey, createdId);
            categoryNameIdMap.set(categoryName, createdId);
        }
    }
    return categoryNameIdMap;
}

export async function seedCategories(): Promise<Map<string, number>> {
    const categoryMap: Map<string, CategoryInfo> = createCategoryMapWithCorrectOrder();
    const categoryNameIdMap = await addAllCategoriesThroughApi(categoryMap);
    console.log(categoryNameIdMap);
    return categoryNameIdMap;
}



