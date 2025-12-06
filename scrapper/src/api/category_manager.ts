import { createCategory, createSubCategory, uploadCategoryImage } from './api';
import type { Product, StringIdMap } from '../types.ts';

const products = await Bun.file('../scrapper-results/products.json').json();

interface CategoryInfo {
    parentUrlKey: string | undefined;
    urlKey: string;
    depth: number;
}

export interface CategorySeedResult {
    categoryNameIdMap: StringIdMap;
    mainCategoryNameIdMap: StringIdMap; // Only main categories (depth 5) for image upload
}

//analyzes products.json and extract all kategories 
function extractUniqueCategories(data: Product[], categories_field_name: keyof Product): Map<string, string> {
    const uniqueCategories = new Map<string, string>();
    for (const product of data) {
        const categories = product[categories_field_name] as Record<string, string>;
        if (!categories) continue;

        for (const [categoryName, categoryUrl] of Object.entries(categories)) {
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
        if (depth >= 6) { //then it's a subcategory
            parentCategoryUrlKey = parts[depth - 3];
        }
        if (!urlKey) {
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
    const unsortedMap = createCategoryMap(extractUniqueCategories(products as unknown as Product[], 'category_list'));
    return sortCategoryMapByDepth(unsortedMap);
}

interface AddCategoriesResult {
    categoryNameIdMap: Map<string, number>;
    mainCategoryNameIdMap: Map<string, number>;
}

const CATEGORY_IMAGES_PATH = "../scrapper-results/categoryImages/";

async function getCategoryImagePath(categoryName: string): Promise<string | undefined> {
    const imagePath = `${CATEGORY_IMAGES_PATH}${categoryName}.png`;
    const file = Bun.file(imagePath);
    const exists = await file.exists();
    return exists ? imagePath : undefined;
}

async function addAllCategoriesThroughApi(categoryMap: Map<string, CategoryInfo>): Promise<AddCategoriesResult> {
    const categoryUrlKeyIdMap = new Map<string, number>();
    const categoryNameIdMap = new Map<string, number>();
    const mainCategoryNameIdMap = new Map<string, number>(); // Only main categories

    for (const [categoryName, categoryInfo] of categoryMap) {
        const parentUrlKey = categoryInfo.parentUrlKey;
        if (parentUrlKey == undefined) { //then it's a main category - upload image with it
            const imagePath = await getCategoryImagePath(categoryName);
            const createdId: number = await createCategory(categoryName); // we receive the id
            categoryUrlKeyIdMap.set(categoryInfo.urlKey, createdId);
            categoryNameIdMap.set(categoryName, createdId);
            mainCategoryNameIdMap.set(categoryName, createdId); // Track main categories
        } else { //subcategory - no image
            const parent_id = categoryUrlKeyIdMap.get(parentUrlKey); //parents are added first, so it should already be in that map
            if (!parent_id) {
                console.log("Critical error occurred, parent category not found in map!");
                return { categoryNameIdMap: new Map<string, number>(), mainCategoryNameIdMap: new Map<string, number>() };
            }
            const createdId: number = await createSubCategory(categoryName, parent_id);
            categoryUrlKeyIdMap.set(categoryInfo.urlKey, createdId);
            categoryNameIdMap.set(categoryName, createdId);
        }
    }
    return { categoryNameIdMap, mainCategoryNameIdMap };
}

export async function seedCategories(): Promise<CategorySeedResult> {
    const categoryMap: Map<string, CategoryInfo> = createCategoryMapWithCorrectOrder();
    const { categoryNameIdMap, mainCategoryNameIdMap } = await addAllCategoriesThroughApi(categoryMap);
    console.log(categoryNameIdMap);
    return { categoryNameIdMap, mainCategoryNameIdMap };
}

export async function uploadAllCategoryImages(
    mainCategoryNameIdMap: StringIdMap
): Promise<{ uploaded: number; failed: number }> {
    let uploaded = 0;
    let failed = 0;
    const total = mainCategoryNameIdMap.size;
    let current = 0;

    for (const [categoryName, categoryId] of mainCategoryNameIdMap) {
        current++;
        const imagePath = `${CATEGORY_IMAGES_PATH}${categoryName}.png`;

        try {
            const file = Bun.file(imagePath);
            const exists = await file.exists();

            if (!exists) {
                console.warn(`Category image not found: ${imagePath}`);
                failed++;
                console.log(`Progress: ${current}/${total}`);
                continue;
            }

            const success = await uploadCategoryImage(categoryId, imagePath);
            if (success) {
                uploaded++;
            } else {
                failed++;
            }
            console.log(`Progress: ${current}/${total}`);
        } catch (error) {
            console.error(`Error uploading image for category "${categoryName}":`, error);
            failed++;
            console.log(`Progress: ${current}/${total}`);
        }
    }

    return { uploaded, failed };
}



