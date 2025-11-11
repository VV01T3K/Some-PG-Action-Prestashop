import * as cheerio from 'cheerio';
import type { Product } from '../types';
import { writeFileSync } from "fs";

const OUTPUT_PATH = "../scrapper-results/products.json";
const baseUrl = "https://www.action.com";

// list of categories
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

// Function to scrape a single category page and return product links
async function scrapeCategoryPage(categoryPath: string, pageNumber: number): Promise<string[]> {
  const response = await fetch(`${baseUrl}${categoryPath}?page=${pageNumber}`, {
    headers,
    body: null,
    method: "GET"
  });

  const text = await response.text();
  const $ = cheerio.load(text);

  return $('[data-testid="product-card-link"]')
    .map((_, el) => baseUrl + $(el).attr('href'))
    .get();
}

const productFromScrapper = async (url: string): Promise<Product> => {
  const response = await fetch(url, {
    headers,
    body: null,
    method: "GET"
  });
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
    description_list, description_long, product_tag, product_specifications, linked_categories_list, image_urls, thumbnail_urls
  };

};


const allCategoryLinks: string[] = [];

for (const { path, pages } of categories) {
  const pagePromises = Array.from({ length: pages }, (_, i) =>
    scrapeCategoryPage(path, i + 1)
  );

  const results = await Promise.all(pagePromises);
  const category_links = results.flat();
  allCategoryLinks.push(...category_links);
}


// 2. Scrape szczegóły produktów
const productPromises = allCategoryLinks.map(link => productFromScrapper(link));
const products = await Promise.all(productPromises);

writeFileSync(OUTPUT_PATH, JSON.stringify(products, null, 2));
