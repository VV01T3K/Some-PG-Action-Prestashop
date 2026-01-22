/**
 * Sync WebP Images Script
 *
 * This script maps PrestaShop image IDs to external product numbers (Numer produktu)
 * and copies original WebP files from scrapper-results to the static directory
 * for Caddy to serve directly.
 */

process.env.NODE_TLS_REJECT_UNAUTHORIZED = "0";

import * as cheerio from 'cheerio';
import { mkdir, copyFile, readdir } from 'node:fs/promises';
import { existsSync } from 'node:fs';
import path from 'node:path';

const API_URL = process.env.PRESTASHOP_API_URL;
const API_KEY = process.env.PRESTASHOP_API_KEY;

const SOURCE_IMAGES_DIR = "../scrapper-results/original/images";
const DEST_STATIC_DIR = "../prestashop/static/img/p";

interface ProductImageMapping {
    productId: number;
    externalProductNumber: string;
    imageIds: number[];
}

/**
 * Converts an image ID to the PrestaShop directory path structure
 * e.g., imageId 123 -> "1/2/3"
 */
function getImageDirPath(imageId: number): string {
    const idStr = imageId.toString();
    return idStr.split('').join('/');
}

/**
 * Gets the full destination path for a WebP image
 * e.g., imageId 123 -> "/static/img/p/1/2/3/123.webp"
 */
function getDestPath(imageId: number): string {
    const dirPath = getImageDirPath(imageId);
    return path.join(DEST_STATIC_DIR, dirPath, `${imageId}.webp`);
}

/**
 * Fetches all products with their image IDs from PrestaShop API
 */
async function fetchAllProductsWithImages(): Promise<Map<number, number[]>> {
    console.log("Fetching all products...");

    const response = await fetch(`${API_URL}/products?ws_key=${API_KEY}`);
    const xmlText = await response.text();
    const $ = cheerio.load(xmlText, { xmlMode: true });

    const productIds = $("product").map((_, el) => $(el).attr("id")).get();
    console.log(`Found ${productIds.length} products`);

    const productImagesMap = new Map<number, number[]>();

    // Fetch images for each product
    for (const productId of productIds) {
        if (!productId) continue;

        const imageResponse = await fetch(`${API_URL}/images/products/${productId}?ws_key=${API_KEY}`);
        const imageXml = await imageResponse.text();
        const $img = cheerio.load(imageXml, { xmlMode: true });

        const imageIds = $img("declination").map((_, el) => {
            const id = $img(el).attr("id");
            return id ? parseInt(id) : null;
        }).get().filter((id): id is number => id !== null);

        if (imageIds.length > 0) {
            productImagesMap.set(parseInt(productId), imageIds);
        }
    }

    console.log(`Mapped images for ${productImagesMap.size} products`);
    return productImagesMap;
}

/**
 * Fetches the "Numer produktu" feature value for a product
 */
async function getExternalProductNumber(productId: number): Promise<string | null> {
    const response = await fetch(`${API_URL}/products/${productId}?ws_key=${API_KEY}`);
    const xmlText = await response.text();
    const $ = cheerio.load(xmlText, { xmlMode: true });

    // Find the feature with name "Numer produktu"
    const featureValues = $("product_feature").map((_, el) => {
        const featureValueId = $(el).find("id_feature_value").text();
        return featureValueId;
    }).get();

    // For each feature value, check if it's the "Numer produktu" feature
    for (const featureValueId of featureValues) {
        if (!featureValueId) continue;

        const fvResponse = await fetch(`${API_URL}/product_feature_values/${featureValueId}?ws_key=${API_KEY}`);
        const fvXml = await fvResponse.text();
        const $fv = cheerio.load(fvXml, { xmlMode: true });

        const featureId = $fv("product_feature_value > id_feature").text();

        // Get the feature name
        const featureResponse = await fetch(`${API_URL}/product_features/${featureId}?ws_key=${API_KEY}`);
        const featureXml = await featureResponse.text();
        const $f = cheerio.load(featureXml, { xmlMode: true });

        const featureName = $f("product_feature > name > language").first().text();

        if (featureName === "Numer produktu") {
            const value = $fv("product_feature_value > value > language").first().text();
            return value;
        }
    }

    return null;
}

/**
 * Builds the complete mapping of image IDs to external product numbers
 */
async function buildImageMapping(): Promise<ProductImageMapping[]> {
    const productImagesMap = await fetchAllProductsWithImages();
    const mappings: ProductImageMapping[] = [];

    let processed = 0;
    const total = productImagesMap.size;

    for (const [productId, imageIds] of productImagesMap) {
        processed++;
        console.log(`Processing product ${productId} (${processed}/${total})...`);

        const externalNumber = await getExternalProductNumber(productId);

        if (externalNumber) {
            mappings.push({
                productId,
                externalProductNumber: externalNumber,
                imageIds
            });
            console.log(`  -> External number: ${externalNumber}, Images: ${imageIds.join(', ')}`);
        } else {
            console.log(`  -> No external number found, skipping`);
        }
    }

    return mappings;
}

/**
 * Copies WebP images from source to destination based on mapping
 */
async function syncImages(mappings: ProductImageMapping[]): Promise<{ copied: number; skipped: number; failed: number }> {
    let copied = 0;
    let skipped = 0;
    let failed = 0;

    for (const mapping of mappings) {
        const sourceDir = path.join(SOURCE_IMAGES_DIR, mapping.externalProductNumber);

        if (!existsSync(sourceDir)) {
            console.log(`Source directory not found: ${sourceDir}`);
            skipped += mapping.imageIds.length;
            continue;
        }

        // Get available source images
        const sourceFiles = await readdir(sourceDir);
        const webpFiles = sourceFiles
            .filter(f => f.endsWith('.webp'))
            .sort((a, b) => {
                // Sort by image number (image_1.webp, image_2.webp, etc.)
                const numA = parseInt(a.match(/image_(\d+)/)?.[1] || '0');
                const numB = parseInt(b.match(/image_(\d+)/)?.[1] || '0');
                return numA - numB;
            });

        // Map each PrestaShop image ID to a source WebP file
        for (let i = 0; i < mapping.imageIds.length; i++) {
            const imageId = mapping.imageIds[i];
            const sourceFile = webpFiles[i];

            if (!sourceFile) {
                console.log(`No source WebP for image ID ${imageId} (index ${i})`);
                skipped++;
                continue;
            }

            const sourcePath = path.join(sourceDir, sourceFile);
            const destPath = getDestPath(imageId);
            const destDir = path.dirname(destPath);

            try {
                // Create destination directory
                await mkdir(destDir, { recursive: true });

                // Copy the file
                await copyFile(sourcePath, destPath);
                console.log(`Copied: ${sourcePath} -> ${destPath}`);
                copied++;
            } catch (error) {
                console.error(`Failed to copy ${sourcePath} to ${destPath}:`, error);
                failed++;
            }
        }
    }

    return { copied, skipped, failed };
}

/**
 * Main execution
 */
async function main() {
    console.log("=== WebP Image Sync Script ===\n");

    // Create destination base directory
    await mkdir(DEST_STATIC_DIR, { recursive: true });

    // Build the mapping
    console.log("Building image ID to external product number mapping...\n");
    const mappings = await buildImageMapping();

    console.log(`\nFound ${mappings.length} products with valid mappings\n`);

    // Save mapping to JSON for reference
    const mappingPath = path.join(DEST_STATIC_DIR, "../image_mapping.json");
    await Bun.write(mappingPath, JSON.stringify(mappings, null, 2));
    console.log(`Mapping saved to: ${mappingPath}\n`);

    // Sync the images
    console.log("Syncing WebP images...\n");
    const result = await syncImages(mappings);

    console.log("\n=== Sync Complete ===");
    console.log(`Copied: ${result.copied}`);
    console.log(`Skipped: ${result.skipped}`);
    console.log(`Failed: ${result.failed}`);
}

main().catch(console.error);
