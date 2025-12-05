process.env.NODE_TLS_REJECT_UNAUTHORIZED = "0"; //temporary fix for ssl todo:
import * as cheerio from 'cheerio';
import type { ProductApiPayload } from "../types.ts";

const readTemplate = async (templatePath: string) => await Bun.file(templatePath).text();


const API_URL = process.env.PRESTASHOP_API_URL;
const API_KEY = process.env.PRESTASHOP_API_KEY;
const PRESTASHOP_ROOT_CAT_ID = "1";
const PRESTASHOP_DEFAULT_CAT_ID = "2";


/* ==== CREATE ==== */
async function createCategoryOrSubcategory(name: string, parent_id: string): Promise<number> {
    const maxRetries = 5;
    for (let attempt = 1; attempt <= maxRetries; attempt++) {
        let XML = await readTemplate("./src/templates/subcategory_template.xml");
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
            console.warn(`Błąd serwera (Status ${res.status}) dla ${name}. Ponawiam próbę za 2s... (Próba ${attempt}/${maxRetries})`);
            console.error("Odpowiedź serwera:\n", xmlText);
            await new Promise(resolve => setTimeout(resolve, 2000));
            continue;
        } else {
            const $ = cheerio.load(xmlText, { xmlMode: true });
            const createdId = $("category > id").text();
            const categoryId = parseInt(createdId);

            console.log(`Kategoria dodana pomyślnie. Nazwa: ${name}, createdId: ${createdId}`);
            return categoryId;
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
export async function createProduct(product: ProductApiPayload): Promise<number> {
    const { category_default_id, category_ids_xml, feature_associations_xml, name, description, description_short, price, ean13 } = product;

    let XML = await readTemplate("./src/templates/product_template2.xml");
    XML = substitutePlaceholders(XML, {
        category_default_id, name, description, description_short,
        price, ean13, categories_xml: category_ids_xml, feature_associations_xml
    });
    const res = await fetch(`${API_URL}/products?ws_key=${API_KEY}`, {
        method: "POST",
        headers: {
            "Content-Type": "text/xml",
        },
        body: XML,
    });
    if (!res.ok) {
        console.log("Something could have gone wrong while creating a new product");
        const xmlres = await res.text();
        console.log(xmlres);
    }
    const xmlText = await res.text();
    const $ = cheerio.load(xmlText, { xmlMode: true });
    const idText = $("product > id").text();
    const featureId = parseInt(idText.trim(), 10);
    return featureId;
    // bring it back if there are any problems
    // return getProductIdByEan(ean13);
}

export async function createFeature(feature_name: string): Promise<number> {
    let featureXml = await readTemplate("./src/templates/create_product_feature_template.xml");
    featureXml = substitutePlaceholders(featureXml, { feature_name });
    const resFeature = await fetch(`${API_URL}/product_features?ws_key=${API_KEY}`, {
        method: "POST",
        headers: { "Content-Type": "text/xml" },
        body: featureXml,
    });

    if (resFeature.ok) {
        const xmlText = await resFeature.text();
        const $ = cheerio.load(xmlText, { xmlMode: true });
        const idText = $("product_feature > id").text();
        const featureId = parseInt(idText.trim(), 10);
        console.log(`Utworzono feature "${feature_name}" z ID: ${idText}`);
        return featureId;
    } else {
        console.error(`Błąd POST /product_features (Status: ${resFeature.status}).`);
        console.log(await resFeature.text());
        return -1;
    }
}

export async function createFeatureValue(featureId: number, value: string): Promise<number> {
    let valueXml = await readTemplate("./src/templates/create_product_feature_value_template.xml");
    valueXml = substitutePlaceholders(valueXml, {
        feature_id: featureId.toString(),
        value,
    });
    const resValue = await fetch(`${API_URL}/product_feature_values?ws_key=${API_KEY}`, {
        method: "POST",
        headers: { "Content-Type": "text/xml" },
        body: valueXml,
    });

    if (resValue.ok) {
        const xmlText = await resValue.text();
        const $ = cheerio.load(xmlText, { xmlMode: true });
        const idText = $("product_feature_value > id").text();
        const valueId = parseInt(idText.trim(), 10);
        console.log(`Utworzono feature_value "${value}" z ID: ${idText}`);
        return valueId;
    } else {
        console.error(`Błąd POST /product_feature_values (Status: ${resValue.status}).`);
        console.log(await resValue.text());
        return -1;
    }
}

export async function uploadProductImage(productId: number, imagePath: string) {
    const MAX_RETRIES = 2;
    for (let attempt = 1; attempt <= MAX_RETRIES; attempt++) {
        const file = Bun.file(imagePath);
        const imageBuffer = Buffer.from(await file.arrayBuffer());

        const blob = new Blob([imageBuffer], { type: "image/png" });

        const formData = new FormData();
        formData.append("image", blob, imagePath.split('/').pop() ?? 'image.png');

        const res = await fetch(`${API_URL}/images/products/${productId}?ws_key=${API_KEY}`, {
            method: "POST",
            body: formData
        });

        if (res.status == 400) {
            if (attempt == MAX_RETRIES) {
                console.log(`Obraz dla produktu ${productId} nie został przesłany. Status: ${res.status}`)
                return;
            }
            await new Promise(resolve => setTimeout(resolve, 1000));
            continue;
        } else {
            console.log(`Obraz dla produktu ${productId} został przesłany. Status: ${res.status}`);
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
export async function getProductIdByEan(ean13: string): Promise<number> {
    const responseGet = await fetch(`${API_URL}/products?ws_key=${API_KEY}&filter[ean13]=[${ean13}]`);
    const xmlText = await responseGet.text();

    const $ = cheerio.load(xmlText);
    const productId = $("product").attr("id") ?? "-1";
    return parseInt(productId);
}


export async function updateStockAvailable(productId: number, stockNum: number) {
    const MAX_RETRIES = 3;
    for (let attempt = 1; attempt <= MAX_RETRIES; attempt++) {
        const res = await fetch(`${API_URL}/stock_availables?ws_key=${API_KEY}&filter[id_product]=[${productId}]`);
        const xmlText = await res.text();

        const $ = cheerio.load(xmlText);
        const stock_availableId = $("stock_available").attr("id");
        if (!stock_availableId) {
            if (attempt == MAX_RETRIES) {
                console.error("Could not update product's stock available");
                return;
            }
            console.warn(`⚠️ Stock ID not found for ${productId}. Retrying in 1s... (Attempt ${attempt}/${MAX_RETRIES})`);
            await new Promise(resolve => setTimeout(resolve, 1000));
            continue;
        }

        let modifiedStockXml = await readTemplate("./src/templates/stock_template.xml");
        modifiedStockXml = substitutePlaceholders(modifiedStockXml, { stock_id: stock_availableId, product_id: productId.toString(), stock: stockNum.toString() });

        const putRes = await fetch(`${API_URL}/stock_availables/${stock_availableId}?ws_key=${API_KEY}`, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/xml',
            },
            body: modifiedStockXml
        });
        if (!putRes.ok) {
            const x = await putRes.text();
            console.error(x);
            console.error(`Failed to update stock for product ID: ${productId}. Status: ${putRes.status}. Retrying in 1s... (Attempt ${attempt}/${MAX_RETRIES})`);
            await new Promise(resolve => setTimeout(resolve, 1000));
        } else {
            console.log(`Successfully updated stock for product ID: ${productId} to quantity: ${stockNum}`);
            return;
        }
    }
}

export async function updateProductUnitPrice(productId: number, unity: string, unitPriceRatio: string) {
    // 1. Pobierz istniejący produkt przez GET
    const getUrl = `${API_URL}/products/${productId}?ws_key=${API_KEY}`;
    const getRes = await fetch(getUrl, { method: "GET" });
    const xmlText = await getRes.text();

    const updatedXml = xmlText
        // Zmienia unity i unit_price_ratio i usuwa pola których nie można modyfikować
        .replace(/<unity><!\[CDATA\[.*?\]\]><\/unity>/s, `<unity><![CDATA[${unity}]]></unity>`)
        .replace(/<unit_price_ratio><!\[CDATA\[.*?\]\]><\/unit_price_ratio>/s, `<unit_price_ratio><![CDATA[${unitPriceRatio}]]></unit_price_ratio>`)

        .replace(/<\s*manufacturer_name[^>]*>.*?<\/manufacturer_name>/s, "")
        .replace(/<\s*position_in_category[^>]*>.*?<\/position_in_category>/s, "")
        .replace(/<\s*quantity[^>]*>.*?<\/quantity>/s, "")

        .replace(/<\s*id_default_image[^>]*>.*?<\/id_default_image>/s, "")
        .replace(/<\s*id_default_combination[^>]*>.*?<\/id_default_combination>/s, "");

    const putUrl = `${API_URL}/products/${productId}?ws_key=${API_KEY}`;
    const putRes = await fetch(putUrl, {
        method: "PUT",
        headers: {
            "Content-Type": "application/xml"
        },
        body: updatedXml
    });

    if (!putRes.ok) {
        const x = await putRes.text();
        console.log(x);
    }

    console.log(`Product: ${productId} unit price updated successfully!`);
}

/* ==== HELPERS ==== */
function substitutePlaceholders(xmlTemplate: string, placeholders: { [key: string]: string }): string {
    for (const [key, val] of Object.entries(placeholders)) {
        xmlTemplate = xmlTemplate.replaceAll(`{{ ${key} }}`, val);
    }
    return xmlTemplate;
}