import sharp from 'sharp';

const products = await Bun.file('../scrapper-results/products.json').json();
const categories = await Bun.file('../scrapper-results/categories.json').json();

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

        //Convert .webp to .png
        const pngBuffer = await sharp(buffer).png().toBuffer();

        await Bun.write(filepath, pngBuffer);
        console.log(`Image downloaded and saved to ${filepath}`);
    } catch (err) {
        console.error(`Error downloading image from ${url}:`, err);
        return;
    }   
}

import { mkdir } from 'node:fs/promises';

//Download product images
for (let product of products){
    const productDir = `${OUTPUT_IMAGES_PATH}${product.product_specifications['Numer produktu']}`;
    await mkdir(productDir, { recursive: true });
    
    for (let i = 0; i < product.image_urls.length; i++){
        const imageUrl = product.image_urls[i];
        const imageDir = `${productDir}/image_${i + 1}.png`;
        if (!imageUrl) continue;

        await downloadImage(imageUrl, imageDir);
        await delay(200); // small delay
    }
}

//Download category images
await mkdir(OUTPUT_CAT_IMAGES_PATH, { recursive: true });
for (let [name, imageUrl] of Object.entries(categories)){
    const imageDir = `${OUTPUT_CAT_IMAGES_PATH}${name}.png`;
    await downloadImage(imageUrl as string, imageDir);
    await delay(200);
}