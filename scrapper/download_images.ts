import fs from 'fs';
import products from './products.json' assert { type: 'json' };

const delay = (ms: number) => new Promise(resolve => setTimeout(resolve, ms));

async function downloadImage(url: string, filepath: string) {
    try {
        const response = await fetch(url);
        if (!response.ok) {
            throw new Error(`HTTP error! status: ${response.status}`);
        }
        const buffer = Buffer.from(await response.arrayBuffer());

        fs.writeFileSync(filepath, buffer);
        console.log(`Image downloaded and saved to ${filepath}`);
    } catch (err) {
        console.error(`Error downloading image from ${url}:`, err);
        return;
    }   
    

}

for (let product of products){
    const productDir = `images/${product.product_specifications['Numer produktu']}`;
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