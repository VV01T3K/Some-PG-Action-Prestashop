import { seedCategories } from './api/category_manager';
import { cleanDatabase } from './api/clean_database';
import type { Product, ProductApiPayload } from "./types";
import products from './scrapper-results/products.json' assert { type: 'json' };
import { createProduct, updateStockAvailable, uploadProductImage } from './api/api';
import { readdirSync } from 'fs';
import { PRESTASHOP_DEFAULT_CAT_ID, PRESTASHOP_DEFAULT_CAT_ID_NUM } from './constants';

const IMAGES_PATH = "./scrapper-results/images/";

export async function seedShop() {
    await cleanDatabase();
    const categoryNameIdMap = await seedCategories();
    await seedProducts(categoryNameIdMap);
    
}
async function seedProducts(categoryNameIdMap: Map<string, number>) {
    for(const product of products) {
        const categoryNames = Object.keys(product.linked_categories_list);
        if (categoryNames.length === 0) continue;
        
        //retrieve category prestashop ids
        const categoryIds = categoryNames
            .map(name => categoryNameIdMap.get(name))
            .filter((id): id is number => id !== undefined);
        
        //create payload -> create product
        const productPayload = createProductApiPayload(product as unknown as Product, categoryIds);
        const productImagesDirId = product.product_specifications['Numer produktu'];
        const QUANTITY_TO_SET = 8; //TODO: change it to random or sth

        const productId = await createProduct(productPayload);
        console.log(`Created product with id:${productId}`);
                
        //upload all images for the product
        uploadAllProductImages(productId, productImagesDirId);
        
        updateStockAvailable(productId, QUANTITY_TO_SET);
        // return 0; //delete this line to seed all products
    }
}

//TODO: add rest of the fields
function createProductApiPayload(product: Product, categoryIds: number[]){
    const categoryDefaultId = categoryIds[0] ?? PRESTASHOP_DEFAULT_CAT_ID;
    //???we need to add also default category(id=2)
    const finalCategoryIds: number[] = [...categoryIds, PRESTASHOP_DEFAULT_CAT_ID_NUM];

    const categoriesXml = finalCategoryIds
        .map(id => `<category><id><![CDATA[${id}]]></id></category>`)
        .join("");
    const ean13 = generateRandomEAN13();

    const productPayload: ProductApiPayload = {
        category_default_id: categoryDefaultId.toString(),
        category_ids_xml: categoriesXml,
        name: product.name,
        description: product.description_long || "",
        price: product.price.replace(",", "."),
        ean13
    };
    return productPayload;
}
function generateRandomEAN13(): string {
    const digits = Array.from({ length: 12 }, () => Math.floor(Math.random() * 10));
    const sum = digits.reduce((acc, val, i) => acc + val * (i % 2 === 0 ? 1 : 3), 0);
    const checkDigit = (10 - (sum % 10)) % 10;
    return digits.join("") + checkDigit;
}
export async function uploadAllProductImages(productId: number, productImagesDirId: string) {
    const imageDir = `${IMAGES_PATH}${productImagesDirId}/`;
    const imageFileNames = readdirSync(imageDir);
    const imagePaths = imageFileNames.map(name => `${imageDir}${name}`);
    
    const uploadPromises = imagePaths.map(imagePath => uploadProductImage(productId, imagePath));
    await Promise.all(uploadPromises);
}

seedShop();

