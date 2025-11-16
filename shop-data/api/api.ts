process.env.NODE_TLS_REJECT_UNAUTHORIZED = "0"; //temporary fix for ssl todo:
import { readFileSync } from "fs";
import path from "path";
import * as cheerio from 'cheerio';
import type { ProductApiPayload } from "../types";
import { sleep } from "bun";
import { API_KEY, API_URL, PRESTASHOP_DEFAULT_CAT_ID, PRESTASHOP_ROOT_CAT_ID } from "../constants";





/* ==== CREATE ==== */
async function createCategoryOrSubcategory(name: string, parent_id: string): Promise<number> {
    const maxRetries = 5;
    for (let attempt = 1; attempt <= maxRetries; attempt++){
        let XML = readFileSync("./xml_templates/subcategory_template.xml", "utf8");
        XML = substitutePlaceholders(XML, { name, parent_id: parent_id });
        const res = await fetch(`${API_URL}/categories?ws_key=${API_KEY}`, {
            method: "POST",
            headers: {
            "Content-Type": "text/xml",
            },
            body: XML,
        });
        const xmlText = await res.text();
        if (res.status >= 500) {
            console.warn(`⚠️ Błąd serwera (Status ${res.status}) dla ${name}. Ponawiam próbę za 2s... (Próba ${attempt}/${maxRetries})`);
            console.error("Odpowiedź serwera:\n", xmlText);
            await new Promise(resolve => setTimeout(resolve, 2000));
            continue;
        } else {
            const $ = cheerio.load(xmlText, { xmlMode: true });
            const createdId = $("category > id").text();
            
            console.log(`✅ Kategoria dodana pomyślnie. Nazwa: ${name}, createdId: ${createdId}`);
            return parseInt(createdId);
        }

    }
    throw new Error(`Couldn't create a new category with name: ${name}`);
    
}
export async function createCategory(name: string) {
    return createCategoryOrSubcategory(name, PRESTASHOP_DEFAULT_CAT_ID);
}
export async function createSubCategory(name: string, parent_id: number) {
    return createCategoryOrSubcategory(name, parent_id.toString());
}
export async function createProduct(product: ProductApiPayload): Promise<number>{
    const { category_default_id, category_ids_xml, name, description, description_short, price, ean13 } = product;
    
    let XML = readFileSync("./xml_templates/product_template2.xml", "utf8");
    XML = substitutePlaceholders(XML, {category_default_id, name, description, description_short, 
        price, ean13, categories_xml: category_ids_xml});

    const res = await fetch(`${API_URL}/products?ws_key=${API_KEY}`, {
        method: "POST",
        headers: {
        "Content-Type": "text/xml",
        },
        body: XML,
    });
    if (!res.ok) {
        //500 code is probably also fine and the product was uploaded succesfully :>
    }
    //we have to call it bcs POST request won't give as the createdId
    return getProductIdByEan(ean13);
}


export async function uploadProductImage(productId: number, imagePath: string) {
    const MAX_RETRIES = 2;
    for (let attempt = 1; attempt <= MAX_RETRIES; attempt++) {
        const blob = new Blob([readFileSync(imagePath)], { type: "image/jpeg" });

        const formData = new FormData();
        formData.append("image", blob, path.basename(imagePath));

        const res = await fetch(`${API_URL}/images/products/${productId}?ws_key=${API_KEY}`, {
            method: "POST",
            body: formData
        });

        if(res.status == 400) {
            if (attempt == MAX_RETRIES) {
                console.log(`❌ Obraz dla produktu ${productId} nie został przesłany. Status: ${res.status}`)
                return;
            }
            await new Promise(resolve => setTimeout(resolve, 1000));
            continue;
        } else {
            console.log(`✅ Obraz dla produktu ${productId} został przesłany. Status: ${res.status}`);
            return;         
        }
    } 
}

/* ==== DELETE ====*/
// delete product with all its images
export async function deleteProductById(productId: number) {
    const responseProd = await fetch(`${API_URL}/products/${productId}?ws_key=${API_KEY}`, {
        method: "DELETE",
    });

    console.log(`Deleted product with ID ${productId}, response status: ${responseProd.status}`);
    deleteProductImagesById(productId);
    
}
export async function deleteProductImagesById(productId: number) {
    const response = await fetch(`${API_URL}/images/products/${productId}?ws_key=${API_KEY}`);
    const xmlText = await response.text();

    const $ = cheerio.load(xmlText);
    const imageIds = $("declination").map((_, el) => $(el).attr("id")).get();
    for (const imageId of imageIds) {
        if (!imageId) continue;
        const responseDel = await fetch(`${API_URL}/images/products/${productId}/${imageId}?ws_key=${API_KEY}`, {
            method: "DELETE",
        });
        // console.log(`Deleted image ID ${imageId} for product ID ${productId}, response status: ${responseDel.status}`);
    }
}
export async function deleteAllProducts() {
    const response = await fetch(`${API_URL}/products?ws_key=${API_KEY}&rand=${Date.now()}`);
    const xmlText = await response.text(); 
    const $ = cheerio.load(xmlText);
    const productIds = $("product").map((_, el) => $(el).attr("id")).get();
    for (const productId of productIds) {
        if (!productId) continue;
        await deleteProductById(Number(productId));
    }
}
export async function deleteCategoryById(categoryId: number) {
    const responseCat = await fetch(`${API_URL}/categories/${categoryId}?ws_key=${API_KEY}`, {
        method: "DELETE",
    });
    if (!responseCat.ok) {
        //probably also error == doesn't matter 
    }
    console.log(`Deleted category with ID ${categoryId}, response status: ${responseCat.status}`);
}
export async function deleteAllCategories() {
    const response = await fetch(`${API_URL}/categories?ws_key=${API_KEY}&filter[active]=1`);
    const xmlText = await response.text(); 

    const $ = cheerio.load(xmlText);
    const categoryIds = $("category").map((_, el) => $(el).attr("id")).get();
    for (const catId of categoryIds) {
        if (!catId || catId == PRESTASHOP_ROOT_CAT_ID || catId == PRESTASHOP_DEFAULT_CAT_ID) continue;
        await deleteCategoryById(Number(catId));
    }
}
export async function deleteAllProductFeatureValues() {
    const response = await fetch(`${API_URL}/product_feature_values?ws_key=${API_KEY}`);
    const xmlText = await response.text();

    const $ = cheerio.load(xmlText);
    const featureValueIds = $("product_feature_value").map((_, el) => $(el).attr("id")).get();
    for (const valueId of featureValueIds) {
        if (!valueId) continue;
        //delete feature value
        const responseDel = await fetch(`${API_URL}/product_feature_values/${valueId}?ws_key=${API_KEY}`, {
            method: "DELETE",
        });
        console.log(`Deleted feature value ID ${valueId}, response status: ${responseDel.status}`);
    }
}
export async function deleteAllProductFeatures() {
    const response = await fetch(`${API_URL}/product_features?ws_key=${API_KEY}`);
    const xmlText = await response.text();

    const $ = cheerio.load(xmlText);
    const featureIds = $("product_feature").map((_, el) => $(el).attr("id")).get();
    for (const featureId of featureIds) {
        if (!featureId) continue;
        //delete feature
        const responseDel = await fetch(`${API_URL}/product_features/${featureId}?ws_key=${API_KEY}`, {
            method: "DELETE",
        });
        console.log(`Deleted feature ID ${featureId}, response status: ${responseDel.status}`);
    }
}
export async function deleteAllManufacturers() {
    const response = await fetch(`${API_URL}/manufacturers?ws_key=${API_KEY}`);
    const xmlText = await response.text();

    const $ = cheerio.load(xmlText);
    const manufacturerIds = $("manufacturer").map((_, el) => $(el).attr("id")).get();
    for (const manufacturerId of manufacturerIds) {
        if (!manufacturerId) continue;
        //delete manufacturer
        const responseDel = await fetch(`${API_URL}/manufacturers/${manufacturerId}?ws_key=${API_KEY}`, {
            method: "DELETE",
        });
        console.log(`Deleted manufacturer ID ${manufacturerId}, response status: ${responseDel.status}`);
    }
}
export async function deleteAllSuppliers() {
    const response = await fetch(`${API_URL}/suppliers?ws_key=${API_KEY}`);
    const xmlText = await response.text();
    
    const $ = cheerio.load(xmlText);
    const supplierIds = $("supplier").map((_, el) => $(el).attr("id")).get();
    for (const supplierId of supplierIds) {
        if (!supplierId) continue;
        //delete supplier
        const responseDel = await fetch(`${API_URL}/suppliers/${supplierId}?ws_key=${API_KEY}`, {
            method: "DELETE",
        });
        console.log(`Deleted supplier ID ${supplierId}, response status: ${responseDel.status}`);
    }
}

/* ==== GET ==== */
export async function getProductIdByEan(ean13: string): Promise<number>{
    const responseGet = await fetch(`${API_URL}/products?ws_key=${API_KEY}&filter[ean13]=[${ean13}]`);
    const xmlText = await responseGet.text();

    const $ = cheerio.load(xmlText);
    const productId = $("product").attr("id") ?? "-1";
    return parseInt(productId);
}


export async function updateStockAvailable(productId: number, stockNum: number){
    const MAX_RETRIES = 3;
    for (let attempt = 1; attempt <= MAX_RETRIES; attempt++){
        const res = await fetch(`${API_URL}/stock_availables?ws_key=${API_KEY}&filter[id_product]=[${productId}]`);
        const xmlText = await res.text();
    
        const $ = cheerio.load(xmlText);
        const stock_availableId = $("stock_available").attr("id");
        if(!stock_availableId) {
            console.warn(`⚠️ Stock ID not found for ${productId}. Retrying in 1s... (Attempt ${attempt}/${MAX_RETRIES})`);
            await new Promise(resolve => setTimeout(resolve, 1000));
            continue;
        }
    
        let modifiedStockXml = readFileSync("./xml_templates/stock_template.xml", "utf8");
        modifiedStockXml = substitutePlaceholders(modifiedStockXml, { stock_id: stock_availableId, product_id: productId.toString(), stock: stockNum.toString() });
    
        const updateRes = await fetch(`${API_URL}/stock_availables/${stock_availableId}?ws_key=${API_KEY}`, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/xml',
            },
            body: modifiedStockXml
        });
        if (updateRes.ok) {
            console.log(`Successfully updated stock for product ID: ${productId} to quantity: ${stockNum}`);
            return;
        } else {
            const errorText = await updateRes.text();
            console.error(`Failed to update stock for product ID: ${productId}. Status: ${updateRes.status}. Retrying in 1s... (Attempt ${attempt}/${MAX_RETRIES})`);
            await new Promise(resolve => setTimeout(resolve, 1000));
        }
    }    
}

/* ==== HELPERS ==== */
function substitutePlaceholders(xmlTemplate: string, placeholders: { [key: string]: string }): string {
    for(const [key, val] of Object.entries(placeholders)){
        xmlTemplate = xmlTemplate.replaceAll(`{{ ${key} }}`, val);
    }
    return xmlTemplate;
}