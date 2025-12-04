import * as cheerio from 'cheerio';
import type { Product } from './types.ts';

const OUTPUT_PATH = "../scrapper-results/products.json";
const OUTPUT_CAT_PATH = "../scrapper-results/categories.json";
const baseUrl = "https://www.action.com";

const log = (message: string) => console.log(`[${new Date().toISOString()}] ${message}`);

const categories = [
  { path: "/pl-pl/c/hobby", pages: 21 },
  { path: "/pl-pl/c/zrob-to-sam", pages: 25 } 
];

const headers = {
  "accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8",
  "accept-language": "pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7,la;q=0.6",
  "cache-control": "no-cache",
  "pragma": "no-cache",
  "priority": "u=0, i",
  "sec-ch-ua": "\"Brave\";v=\"141\", \"Not?A_Brand\";v=\"8\", \"Chromium\";v=\"141\"",
  "sec-ch-ua-mobile": "?0",
  "sec-ch-ua-platform": "\"Windows\"",
  "sec-fetch-dest": "document",
  "sec-fetch-mode": "navigate",
  "sec-fetch-site": "same-origin",
  "sec-fetch-user": "?1",
  "sec-gpc": "1",
  "upgrade-insecure-requests": "1",
  "Referer": "https://www.action.com/pl-pl/"
};

async function scrapeCategoryPage(categoryPath: string, pageNumber: number): Promise<string[]> {
  log(`Fetching category page: ${categoryPath} page ${pageNumber}`);
  const response = await fetch(`${baseUrl}${categoryPath}?page=${pageNumber}`, {
    headers,
    body: null,
    method: "GET"
  });
  log(`Got response for ${categoryPath} page ${pageNumber}: ${response.status}`);

  const text = await response.text();
  const $ = cheerio.load(text);

  const links = $('[data-testid="product-card-link"]')
    .map((_, el) => baseUrl + $(el).attr('href'))
    .get();
  log(`Found ${links.length} products on ${categoryPath} page ${pageNumber}`);
  return links;
}

const productFromScrapper = async (url: string): Promise<Product> => {
  log(`Fetching product: ${url}`);
  const response = await fetch(url, {
    headers,
    body: null,
    method: "GET"
  });
  log(`Got product response: ${response.status} for ${url}`);
  const text = await response.text();
  const $ = cheerio.load(text);


  const name = $('h1').text();
  const subtitle = $('[class="mb-8"]').text();
  
  const card_price = $('[data-testid="product-card-price"]').first();
  const price_whole = $(card_price).find('[data-testid="product-card-price-whole"]').text();
  const price_fraction = $(card_price).find('[data-testid="product-card-price-fractional"]').text();
  const price = `${price_whole},${price_fraction}`;
  const price_description = $(card_price).find('[data-testid="product-card-price-description"]').text();
  const price_original = $(card_price).find('[data-testid="product-card-price-original-amount"]').text();
  const price_discount_percentage = $(card_price).find('[data-testid="product-card-price-discount-percentage"]').text();
  //???
  const price_discount_footnote = $(card_price).find('[data-testid="product-card-price-discount-footnote"]').text();

  const card_description = $('[data-testid="product-description"]').first();
  const description_list = $(card_description).find('li').map((_, el) => $(el).text()).get();
  const description_long = $(card_description).find('[data-testid="product-description-long"]').text();

  //TODO: maybe just flags Nowość, Promocja Tygodnia?
  const product_tag = $('[data-testid="product-tag"]').map((_, el) => $(el).text().trim()).get(); 

  const card_product_specifications = $('[data-testid="productions-specifications-table"]').first();
  const product_specifications = $(card_product_specifications)
  .find('tr') //rows
  .toArray()
  .reduce((acc, el) => {
    const col = $(el).find('td').map((_, td) => $(td).text().trim()).get();
    const key = col[0];
    const value = col[1];
    if (key && value) {
      acc[key] = value;
    }
    return acc;
  }, {} as Record<string, string>);

  const category_list = $('[data-testid="breadcrumb-link"]').toArray().reduce((acc, el) => {
    const link = $(el).attr('href');
    const category_name = $(el).text();
    if(link && category_name){
      acc[category_name] = link;
    }
    return acc;
  }, {} as Record<string, string>);

  const linked_categories_list = $('[data-testid="links-list-link"]').toArray().reduce((acc, el) => {
    const link = $(el).attr('href');
    const category_name = $(el).text();
    if(link && category_name){
      acc[category_name] = link;
    } 
    return acc;
  }, {} as Record<string, string>);

  const images_section = $('[aria-label="Images"]').first();
  const image_urls = $(images_section).find('li').map((_, el) => $(el).find('img').attr('src')).get();
  const thumbnail_urls = $(images_section).find('[data-testid="thumbnail-list"]').find('img').map((_, el) => $(el).attr('src')).get();

  return {url, name, subtitle, price_whole, price_fraction, price, price_description, price_original, price_discount_percentage, price_discount_footnote, 
    description_list, description_long, product_tag, product_specifications, category_list, linked_categories_list, image_urls, thumbnail_urls
  };

};

async function scrapeLinksToProducts() {
  const allProductLinks: string[] = [];

  for (const { path, pages } of categories) {
    log(`Starting to scrape category: ${path} (${pages} pages)`);
    
    // Process pages in batches of 5 to avoid overwhelming the server
    const batchSize = 5;
    for (let i = 0; i < pages; i += batchSize) {
      const batch = Array.from({ length: Math.min(batchSize, pages - i) }, (_, j) =>
        scrapeCategoryPage(path, i + j + 1)
      );
      log(`Processing batch ${Math.floor(i / batchSize) + 1} of ${Math.ceil(pages / batchSize)} for ${path}`);
      const results = await Promise.all(batch);
      allProductLinks.push(...results.flat());
    }
    log(`Finished category ${path}, total links so far: ${allProductLinks.length}`);
  }
  return allProductLinks;
}

async function scrapeProducts() {
  log("Starting product scraping...");
  
  const allProductLinks = await scrapeLinksToProducts();
  log(`Total product links found: ${allProductLinks.length}`);
  
  // 2. Scrape product details in batches to avoid overwhelming the server
  const batchSize = 10;
  const products: Product[] = [];
  
  for (let i = 0; i < allProductLinks.length; i += batchSize) {
    const batch = allProductLinks.slice(i, i + batchSize);
    log(`Scraping products batch ${Math.floor(i / batchSize) + 1} of ${Math.ceil(allProductLinks.length / batchSize)} (${i + 1}-${Math.min(i + batchSize, allProductLinks.length)}/${allProductLinks.length})`);
    
    const batchResults = await Promise.all(batch.map(link => productFromScrapper(link)));
    products.push(...batchResults);
    
    // Save after each batch so we don't lose progress
    await Bun.write(OUTPUT_PATH, JSON.stringify(products, null, 2));
    log(`Saved ${products.length} products to ${OUTPUT_PATH}`);
  }

  log(`Finished! Total products scraped: ${products.length}`);
}

async function scrapeCategoryImageLinks() {
  log("Fetching category images from homepage...");
  const response = await fetch(`${baseUrl}/pl-pl/`, {
  headers,
  body: null,
  method: "GET"
  });
  log(`Homepage response: ${response.status}`);

  const text = await response.text();
  const $ = cheerio.load(text);
  const categoryCarousel = $('[data-testid="cms-category-carousel"]');
  const category_images = $(categoryCarousel).find('[data-testid="category-card"]').toArray().reduce((acc, el) => {
  const cat_name = $(el).find('[data-testid="category-card-title"]').text();
  const cat_img_link = $(el).find('[data-testid="category-card-image"]').attr('src');
  if(cat_name && cat_img_link) {
    acc[cat_name] = cat_img_link;
  }
  return acc;
  }, {} as Record<string, string>);
  log(`Found ${Object.keys(category_images).length} category images`);
  await Bun.write(OUTPUT_CAT_PATH, JSON.stringify(category_images, null, 2));
  log("Category images written successfully!");
}

log("=== Scraper starting ===");
await scrapeProducts();
await scrapeCategoryImageLinks();
log("=== Scraper finished ===");