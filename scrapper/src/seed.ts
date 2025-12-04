import { seedCategories, uploadAllCategoryImages } from './api/category_manager';
import { cleanDatabase } from './api/clean_database';
import type { FeatureAssociation, StringIdMap, FeatureValueIdMap, Product, ProductApiPayload } from "./types";
import { createProduct, updateProductUnitPrice, updateStockAvailable, uploadProductImage } from './api/api';
import { seedFeatureValues } from './api/features_manager';
import { readdir } from 'node:fs/promises';

const products = await Bun.file('../scrapper-results/products.json').json();

const PRESTASHOP_DEFAULT_CAT_ID = "2";
const PRESTASHOP_DEFAULT_CAT_ID_NUM = 2;
const IMAGES_PATH = "../scrapper-results/images/";
const MAX_IMAGES_PER_PRODUCT = 3;
const MAX_PRODUCTS_TO_SEED = 1000;

export async function seedShop() {
    console.log('Starting shop seeding...\n');
    
    await cleanDatabase();
    
    const [{ categoryNameIdMap, mainCategoryNameIdMap }, { featureIds, valueIds }] = await Promise.all([
        seedCategories(),
        seedFeatureValues()
    ]);
    
    console.log('\nUploading category images...');
    const { uploaded, failed } = await uploadAllCategoryImages(mainCategoryNameIdMap);
    console.log(`\nCategory images complete! Uploaded: ${uploaded}, Failed: ${failed}`);
    
    await seedProducts(categoryNameIdMap, featureIds, valueIds);
    
    console.log('\nShop seeding complete!');
}


async function seedProducts(
    categoryNameIdMap: StringIdMap, 
    featuresIdMap: StringIdMap, 
    valuesIdMap: FeatureValueIdMap) {
    
    const createdProducts: { productId: number; productImagesDirId: string; product: Product; quantity: number }[] = [];
    
    const productsToSeed = (products as Product[]).slice(0, MAX_PRODUCTS_TO_SEED);
    const totalProducts = productsToSeed.length;
    let processed = 0;
    
    console.log(`\nCreating ${totalProducts} products...`);
    
    for (const product of productsToSeed) {
        const categoryNames = Object.keys(product.category_list);
        if (categoryNames.length === 0) {
            processed++;
            continue;
        }
        
        const categoryIds = categoryNames
            .map(name => categoryNameIdMap.get(name))
            .filter((id): id is number => id !== undefined);
        const associations = createFeatureValueIdAssociations(product.product_specifications, featuresIdMap, valuesIdMap);

        const productPayload = createProductApiPayload(product, categoryIds, associations);
        const productImagesDirId = product.product_specifications['Numer produktu'];
        const QUANTITY_TO_SET = Math.floor(Math.random() * 11);

        if (!productImagesDirId) {
            processed++;
            continue;
        }

        const productId = await createProduct(productPayload);
        processed++;
        console.log(`Progress: ${processed}/${totalProducts}`);
        
        createdProducts.push({ productId, productImagesDirId, product, quantity: QUANTITY_TO_SET });
    }
    console.log(`Product creation complete! Created: ${createdProducts.length}`);
    
    console.log('\nUploading product images...');
    let uploadedImages = 0;
    const totalImages = createdProducts.length;
    
    const IMAGE_BATCH_SIZE = 5;
    for (let i = 0; i < createdProducts.length; i += IMAGE_BATCH_SIZE) {
        const batch = createdProducts.slice(i, i + IMAGE_BATCH_SIZE);
        
        await Promise.all(
            batch.map(async ({ productId, productImagesDirId }) => {
                await uploadAllProductImages(productId, productImagesDirId);
                uploadedImages++;
                console.log(`Progress: ${uploadedImages}/${totalImages}`);
            })
        );
    }
    console.log('Product images uploaded.');
    
    console.log('\nUpdating stock and unit prices...');
    let updated = 0;
    const totalUpdates = createdProducts.length;
    
    const UPDATE_BATCH_SIZE = 10;
    for (let i = 0; i < createdProducts.length; i += UPDATE_BATCH_SIZE) {
        const batch = createdProducts.slice(i, i + UPDATE_BATCH_SIZE);
        
        await Promise.all(
            batch.map(async ({ productId, product, quantity }) => {
                await Promise.all([
                    updateStockAvailable(productId, quantity),
                    setProductUnitPrice(productId, product)
                ]);
                updated++;
                console.log(`Progress: ${updated}/${totalUpdates}`);
            })
        );
    }
    console.log('Stock and unit prices updated.');
}

function setProductUnitPrice(productId: number, product: any){
    const {unity, unit_price} = retrieveUnityUnitPrice(product.price_description);
    
    // Skip if no unit price data available
    if (!unit_price || !unity) {
        console.log(`Skipping unit price for product ${productId} - no unit price data`);
        return;
    }
    
    const unit_price_ratio = calculateUnitPriceRatio(product.price, unit_price);
    updateProductUnitPrice(productId, unity, unit_price_ratio);
}

//TODO: add rest of the fields
function createProductApiPayload(product: Product, categoryIds: number[], associations: FeatureAssociation[]){
    const categoryDefaultId = categoryIds[0] ?? PRESTASHOP_DEFAULT_CAT_ID;
    //???we need to add also default category(id=2)
    const finalCategoryIds: number[] = [...categoryIds, PRESTASHOP_DEFAULT_CAT_ID_NUM];

    const categoriesXml = finalCategoryIds
        .map(id => `<category><id><![CDATA[${id}]]></id></category>`)
        .join("");
    const featuresXml = associations.map(assoc =>
        `<product_feature>
            <id><![CDATA[${assoc.featureId}]]></id>
            <id_feature_value><![CDATA[${assoc.featureValueId}]]></id_feature_value>
         </product_feature>
        `)
        .join("");

    const ean13 = generateRandomEAN13();

    // --- HTML DESCRIPTION BLOCK ---
    const htmlDescriptionBlock = `
<div id="product-description">
    <div id="product-description-title">
        <h2>Opis</h2>
    </div>

    <div id="product-description-long">
        ${product.description_long || ""}
    </div>
</div>
    `.trim();

    const productPayload: ProductApiPayload = {
        category_default_id: categoryDefaultId.toString(),
        category_ids_xml: categoriesXml,
        feature_associations_xml: featuresXml,
        name: product.name,
        description: htmlDescriptionBlock,
        description_short: product.subtitle,
        price: product.price.replace(",", "."),
        ean13
    };
    return productPayload;
}
async function uploadAllProductImages(productId: number, productImagesDirId: string) {
    const imageDir = `${IMAGES_PATH}${productImagesDirId}/`;
    const imageFileNames = await readdir(imageDir);
    const imagePaths = imageFileNames.map(name => `${imageDir}${name}`);
    const limitedImagePaths = imagePaths.slice(0, MAX_IMAGES_PER_PRODUCT);

    const uploadPromises = limitedImagePaths.map(imagePath => uploadProductImage(productId, imagePath));
    await Promise.all(uploadPromises);
}

seedShop();




// ---- HELPERS ----
function retrieveUnityUnitPrice(price_description: string){
    const priceDescription = price_description?.trim() || "";

    let unity = "";
    let unit_price = "";
    if (priceDescription) {
        const [ pricePart, unityPart ] = priceDescription.split('/');
        unit_price = (pricePart ?? "")
            .replace("zł", "")
            .replace(/\s/g, "")
            .replace(",", ".")
            .trim();
        unity = (unityPart ?? "").trim();
    }
    return { unit_price, unity };
}
function calculateUnitPriceRatio(price: string, unit_price: string){
    const basePriceNum = parseFloat(price.replace(/\s/g, '').replace(',', '.'));
    const unitPriceNum = parseFloat(unit_price.replace(/\s/g, '').replace(',', '.'));

    if (isNaN(basePriceNum) || basePriceNum < 0 || isNaN(unitPriceNum) || unitPriceNum < 0) {
        console.log(`Invalid or non-positive base or unit price: ${price}, ${unit_price}`);
        throw new Error(`Invalid or non-positive base or unit price: ${price}, ${unit_price}`);
    }

    const ratio = basePriceNum / unitPriceNum;
    return ratio.toFixed(6);

}
function generateRandomEAN13(): string {
    const digits = Array.from({ length: 12 }, () => Math.floor(Math.random() * 10));
    const sum = digits.reduce((acc, val, i) => acc + val * (i % 2 === 0 ? 1 : 3), 0);
    const checkDigit = (10 - (sum % 10)) % 10;
    return digits.join("") + checkDigit;
}
function createFeatureValueIdAssociations(specifications: Record<string, string>, 
    featuresIdMap: StringIdMap, 
    valuesIdMap: FeatureValueIdMap) {
    const associations: FeatureAssociation[] = [];
    for (const [featureName, featureValue] of Object.entries(specifications)) {
        const valueName = featureValue.trim();
        const featureId = featuresIdMap.get(featureName);
        const featureValueMap = valuesIdMap.get(featureName);
        
        // Sprawdzenie, czy klucze cechy i mapy wartości istnieją
        if (featureId === undefined || featureValueMap === undefined) {
            console.warn(`Pomięto cechę "${featureName}": Brak ID w mapach.`);
            continue;
        }            
        const featureValueId = featureValueMap.get(valueName);
        if (featureValueId !== undefined) {
            associations.push({ 
                featureId: featureId, 
                featureValueId: featureValueId 
            });
        } else {
            console.warn(`Pomięto wartość "${valueName}": Brak Value ID w mapie.`);
        }
    }
    return associations;
}