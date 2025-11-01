import products from '../scrapper-results/products.json' assert { type: 'json' };
import { createCategory, createSubCategory } from './api';
import type { Product } from './types';

interface CategoryInfo {
    parentUrlKey: string | undefined;
    urlKey: string;
    depth: number;
}


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
function addAllCategoriesThroughApi(categoryMap: Map<string, CategoryInfo>){
    const categoryUrlKeyIdMap = new Map<string, number>();
    for (const [categoryName, categoryInfo] of categoryMap) {
        const parentUrlKey = categoryInfo.parentUrlKey;
        if (parentUrlKey == undefined) { //then it's category
            createCategory(categoryName); // we receive the id?? TODO: ADD AWAIT!
            categoryUrlKeyIdMap.set(categoryInfo.urlKey, 5); //TODO:
        } else { //subcategory
            const parent_id = categoryUrlKeyIdMap.get(parentUrlKey); //parents are added first, so it should already be in that map
            if (!parent_id) {
                console.log("Critical error occurred, parent category not found in map!");
                return;
            }
            createSubCategory(categoryName, parent_id);// TODO: ADD AWAIT!
            categoryUrlKeyIdMap.set(categoryInfo.urlKey, 5); //TODO:
        }
    }
}

const categoryMap: Map<string, CategoryInfo> = createCategoryMapWithCorrectOrder();
// now you can start creating categories/subcategories
