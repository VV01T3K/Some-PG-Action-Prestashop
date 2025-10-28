process.env.NODE_TLS_REJECT_UNAUTHORIZED = "0"; //temporary fix for ssl todo:
import { readFileSync } from "fs";
import path from "path";

const API_URL = "https://shop.pg.wojtecs.com/api";
const API_KEY = "Z6TH1XF6IKEE9HMVU3XMS8LKW3HBN58V"; //todo: maybe move it later to .env or sth


function substitutePlaceholders(xmlTemplate: string, placeholders: { [key: string]: string }): string {
    for(const [key, val] of Object.entries(placeholders)){
        xmlTemplate = xmlTemplate.replaceAll(`{{ ${key} }}`, val);
    }
    return xmlTemplate;
}

async function createCategory(name: string) {
    let XML = readFileSync("./xml_templates/category_template.xml", "utf8");
    XML = substitutePlaceholders(XML, { name });
    const res = await fetch(`${API_URL}/categories?ws_key=${API_KEY}`, {
        method: "POST",
        headers: {
        "Content-Type": "text/xml",
        },
        body: XML,
    });

    if (!res.ok) {
        console.error(`❌ Błąd: ${res.status} ${res.statusText}`);
        const text = await res.text();
        console.error("Odpowiedź serwera:\n", text);
        return;
    }

    const result = await res.text();
    console.log("✅ Kategoria dodana pomyślnie:\n", result);
}

async function createProduct(category_id: string, name: string, description: string, price: string, ean13: string) {
    let XML = readFileSync("./xml_templates/product_template.xml", "utf8");
    XML = substitutePlaceholders(XML, {category_id, name, description, price, ean13});
    const res = await fetch(`${API_URL}/products?ws_key=${API_KEY}`, {
        method: "POST",
        headers: {
        "Content-Type": "text/xml",
        },
        body: XML,
    });
    if (!res.ok) {
        //500 code is probably also fine and the product was uploaded succesfully :>
        console.error(`❌ Błąd: ${res.status} ${res.statusText}`);
        const text = await res.text();
        console.error("Odpowiedź serwera:\n", text);
        return;
    }

    const result = await res.text();
    console.log("✅ Kategoria dodana pomyślnie:\n", result);
}

// createProduct("13", "new product", "some description probably", "99.12", "1231231231231");

async function uploadProductImage(productId: number, imagePath: string) {
    const blob = new Blob([readFileSync(imagePath)], { type: "image/jpeg" });
    // FormData Bun

    const formData = new FormData();
    formData.append("image", blob, path.basename(imagePath));

    const res = await fetch(`${API_URL}/images/products/${productId}?ws_key=${API_KEY}`, {
        method: "POST",
        body: formData
    });

    if (!res.ok) {
        // Probably error 500 is fine and the image was uploaded succesfully :))
        console.error(`❌ Błąd przy uploadzie obrazu dla produktu ${productId}: ${res.status} ${res.statusText}`);
        console.error(await res.text());
        return;
    }

    console.log(`✅ Obraz dla produktu ${productId} został przesłany.`);
}

// uploadProductImage(43, "./data/id1.jpg").catch(console.error);