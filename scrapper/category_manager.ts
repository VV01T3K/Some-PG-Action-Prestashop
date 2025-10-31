import products from '../scrapper-results/products.json' assert { type: 'json' };
import type { Product } from './types';

interface CategoryInfo {
    parentName: string | undefined;
    depth: number;
}

function extractCategories(data: Product[], categories_field_name: keyof Product): Map<string, string> {
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
    console.log('Creating category map:');
    const categoryMap = new Map<string, CategoryInfo>();
    
    for(const [categoryName, categoryUrl] of categories) {
        const parts = categoryUrl.split('/');
        const depth: number = parts.length;
        let parentCategoryName: string | undefined = undefined;
        if (depth >= 6){ //then it's a subcategory
            parentCategoryName = parts[depth - 3];
            // console.log(`Category: ${categoryName} (URL: ${categoryUrl}) is a subcategory of ${parentCategoryName}`);
        } 
        const info: CategoryInfo = {
            parentName: parentCategoryName,
            depth: depth
        };
        categoryMap.set(categoryName, info);

    }
    console.log(categoryMap);
    return categoryMap;
}
createCategoryMap(extractCategories(products as Product[], 'linked_categories_list')); 