const products = await Bun.file('../scrapper-results/products.json').json();
const categories = await Bun.file('../scrapper-results/categories.json').json();

export const OUTPUT_IMAGES_PATH = '../scrapper-results/original/images/';
export const OUTPUT_CAT_IMAGES_PATH = '../scrapper-results/original/categoryImages/';

const delay = (ms: number) => new Promise(resolve => setTimeout(resolve, ms));

async function downloadImage(url: string, filepath: string) {
    try {
        const response = await fetch(url);
        if (!response.ok) {
            throw new Error(`HTTP error! status: ${response.status}`);
        }
        const buffer = Buffer.from(await response.arrayBuffer());

        await Bun.write(filepath, buffer);
        console.log(`Image downloaded and saved to ${filepath}`);
    } catch (err) {
        console.error(`Error downloading image from ${url}:`, err);
        return;
    }
}

import { mkdir } from 'node:fs/promises';

for (let product of products) {
    const productDir = `${OUTPUT_IMAGES_PATH}${product.product_specifications['Numer produktu']}`;
    await mkdir(productDir, { recursive: true });

    for (let i = 0; i < product.image_urls.length; i++) {
        const imageUrl = product.image_urls[i];
        if (!imageUrl) continue;

        const imageDir = `${productDir}/image_${i + 1}.webp`;

        await downloadImage(imageUrl, imageDir);
        await delay(200); // delay to avoid overwhelming the third party server
    }
}

await mkdir(OUTPUT_CAT_IMAGES_PATH, { recursive: true });
for (let [name, imageUrl] of Object.entries(categories)) {
    const imageDir = `${OUTPUT_CAT_IMAGES_PATH}${name}.webp`;
    await downloadImage(imageUrl as string, imageDir);
    await delay(200);
}