import { seedCategories } from './api/category_manager';
import { cleanDatabase } from './api/clean_database';
import type { Product, ProductApiPayload } from "./types";
import products from './scrapper-results/products.json' assert { type: 'json' };
import { createProduct, PRESTASHOP_DEFAULT_CAT_ID, uploadProductImage } from './api/api';
import { readdirSync } from 'fs';
import { IMAGES_PATH } from './scrapper/download_images';


export async function seedShop() {
    const categoryNameIdMap = await seedCategories();

    for(const product of products) {
        const categoryNames = Object.keys(product.linked_categories_list);
        if (categoryNames.length === 0) continue;
        
        //retrieve category prestashop ids
        const categoryIds = categoryNames
            .map(name => categoryNameIdMap.get(name))
            .filter((id): id is number => id !== undefined);
        
        const productPayload = createProductApiPayload(product as unknown as Product, categoryIds);
        const productId = await createProduct(productPayload);

        //upload all images for the product
        const productImagesDirId = product.product_specifications['Numer produktu'];
        uploadAllProductImages(productId, productImagesDirId);

        return 0; //delete this line to seed all products
    }
}
// await cleanDatabase();
//TODO: add rest of the fields
function createProductApiPayload(product: Product, categoryIds: number[]){
    const categoriesXml = categoryIds
        .map(id => `<category><id><![CDATA[${id}]]></id></category>`)
        .join("");
    const categoryDefaultId = categoryIds[0] ?? PRESTASHOP_DEFAULT_CAT_ID;
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
    
    for (const imagePath of imagePaths) {
        await uploadProductImage(productId, imagePath);
    }

}

seedShop();

