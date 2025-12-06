import sharp from 'sharp';
import { readdir, stat, mkdir } from 'node:fs/promises';
import { join, dirname } from 'node:path';

const IMAGES_PATH = "../scrapper-results/original/images/";
const OUTPUT_PATH = "../scrapper-results/images/";
export const INPUT_CAT_IMAGES_PATH = '../scrapper-results/original/categoryImages/';
export const OUTPUT_CAT_IMAGES_PATH = '../scrapper-results/categoryImages/';



async function getWebpFiles(dirPath: string): Promise<string[]> {
    const webpFiles: string[] = [];
    
    try {
        const entries = await readdir(dirPath);
        
        for (const entry of entries) {
            const fullPath = join(dirPath, entry);
            const stats = await stat(fullPath);
            
            if (stats.isDirectory()) {
                const subFiles = await getWebpFiles(fullPath);
                webpFiles.push(...subFiles);
            } else if (entry.toLowerCase().endsWith('.webp')) {
                webpFiles.push(fullPath);
            }
        }
    } catch (error) {
        console.error(`Error reading directory ${dirPath}:`, error);
    }
    
    return webpFiles;
}

async function convertWebpToPngGeneric(inputPath: string, inputBasePath: string, outputBasePath: string): Promise<void> {
    const relativePath = inputPath.replace(inputBasePath, '');
    const outputPath = join(outputBasePath, relativePath.replace(/\.webp$/i, '.png'));
    
    await mkdir(dirname(outputPath), { recursive: true });
    
    await sharp(inputPath)
        .png({
            compressionLevel: 9,
            palette: true,
            quality: 80,
            effort: 10,
        })
        .toFile(outputPath);
    
    console.log(`Converted: ${inputPath} -> ${outputPath}`);
}

async function convertBatch(webpFiles: string[], inputBasePath: string, outputBasePath: string, label: string) {
    if (webpFiles.length === 0) {
        console.log(`No ${label} WebP images found.`);
        return;
    }
    
    console.log(`Found ${webpFiles.length} ${label} WebP images. Converting to PNG...`);
    
    const BATCH_SIZE = 10;
    let converted = 0;
    let failed = 0;
    
    for (let i = 0; i < webpFiles.length; i += BATCH_SIZE) {
        const batch = webpFiles.slice(i, i + BATCH_SIZE);
        
        const results = await Promise.allSettled(
            batch.map(file => convertWebpToPngGeneric(file, inputBasePath, outputBasePath))
        );
        
        for (const result of results) {
            if (result.status === 'fulfilled') {
                converted++;
            } else {
                failed++;
                console.error(`Failed to convert: ${result.reason}`);
            }
        }
        
        console.log(`Progress: ${converted + failed}/${webpFiles.length}`);
    }
    
    console.log(`\n${label} conversion complete!`);
    console.log(`  Converted: ${converted}`);
    console.log(`  Failed: ${failed}`);
}

async function convertAllImages() {
    console.log('=== Converting Product Images ===');
    const productWebpFiles = await getWebpFiles(IMAGES_PATH);
    await convertBatch(productWebpFiles, IMAGES_PATH, OUTPUT_PATH, 'product');
    
    console.log('\n=== Converting Category Images ===');
    const categoryWebpFiles = await getWebpFiles(INPUT_CAT_IMAGES_PATH);
    await convertBatch(categoryWebpFiles, INPUT_CAT_IMAGES_PATH, OUTPUT_CAT_IMAGES_PATH, 'category');
    
    console.log('\n=== All conversions complete! ===');
}

convertAllImages();
