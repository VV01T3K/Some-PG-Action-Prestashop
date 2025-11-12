import fs from 'fs';
import products from '../scrapper-results/products.json' assert { type: 'json' };
import categories from '../scrapper-results/categories.json' assert { type: 'json' };
import sharp from 'sharp';

export const OUTPUT_IMAGES_PATH = '../scrapper-results/images/';
export const OUTPUT_CAT_IMAGES_PATH = '../scrapper-results/categoryImages/';

const delay = (ms: number) => new Promise(resolve => setTimeout(resolve, ms));

async function downloadImage(url: string, filepath: string) {
    try {
        const response = await fetch(url);
        if (!response.ok) {
            throw new Error(`HTTP error! status: ${response.status}`);
        }
        const buffer = Buffer.from(await response.arrayBuffer());

        //Convert .webp to .jpg
        const jpgBuffer = await sharp(buffer).jpeg({ quality: 90 }).toBuffer();

        fs.writeFileSync(filepath, jpgBuffer);
        console.log(`Image downloaded and saved to ${filepath}`);
    } catch (err) {
        console.error(`Error downloading image from ${url}:`, err);
        return;
    }   
}

//Download product images
for (let product of products){
    const productDir = `${OUTPUT_IMAGES_PATH}${product.product_specifications['Numer produktu']}`;
    for (let i = 0; i < product.image_urls.length; i++){

        if (!fs.existsSync(productDir)){
            fs.mkdirSync(productDir, { recursive: true});
        }
        const imageUrl = product.image_urls[i];
        const imageDir = `${productDir}/image_${i + 1}.jpg`;
        if (!imageUrl) continue;

        await downloadImage(imageUrl, imageDir);
        await delay(200); // small delay
    }
}

//Download category images
for (let [name, imageUrl] of Object.entries(categories)){
    const imageDir = `${OUTPUT_CAT_IMAGES_PATH}${name}.jpg`;
    if (!fs.existsSync(OUTPUT_CAT_IMAGES_PATH)){
        fs.mkdirSync(OUTPUT_CAT_IMAGES_PATH, { recursive: true});
    }
    await downloadImage(imageUrl, imageDir);
    await delay(200);
}