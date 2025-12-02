const products = await Bun.file('../scrapper-results/products.json').json();
const categories = await Bun.file('../scrapper-results/categories.json').json();

export const OUTPUT_IMAGES_PATH = '../scrapper-results/images/';
export const OUTPUT_CAT_IMAGES_PATH = '../scrapper-results/categoryImages/';

const delay = (ms: number) => new Promise(resolve => setTimeout(resolve, ms));

function getExtensionFromUrl(url: string): string {
    const urlPath = new URL(url).pathname;
    const ext = urlPath.split('.').pop()?.toLowerCase();
    return ext && ['webp', 'jpg', 'jpeg', 'png', 'gif'].includes(ext) ? ext : 'webp';
}

async function downloadImage(url: string, filepath: string) {
    try {
        const response = await fetch(url);
        if (!response.ok) {
            throw new Error(`HTTP error! status: ${response.status}`);
        }
        const buffer = Buffer.from(await response.arrayBuffer());

        // Save original image without conversion
        await Bun.write(filepath, buffer);
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
        if (!imageUrl) continue;
        
        const ext = getExtensionFromUrl(imageUrl);
        const imageDir = `${productDir}/image_${i + 1}.${ext}`;

        await downloadImage(imageUrl, imageDir);
        await delay(200); // small delay
    }
}

//Download category images
await mkdir(OUTPUT_CAT_IMAGES_PATH, { recursive: true });
for (let [name, imageUrl] of Object.entries(categories)){
    const ext = getExtensionFromUrl(imageUrl as string);
    const imageDir = `${OUTPUT_CAT_IMAGES_PATH}${name}.${ext}`;
    await downloadImage(imageUrl as string, imageDir);
    await delay(200);
}