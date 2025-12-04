# PrestaShop Product Scrapper & Seeder

This tool scrapes product data from Action.com and seeds it into a PrestaShop store via the PrestaShop API.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Quick Start (Recommended)](#quick-start-recommended)
- [Full Workflow](#full-workflow)
  - [1. Scrape Products](#1-scrape-products)
  - [2. Download Images](#2-download-images)
  - [3. Convert Images](#3-convert-images)
  - [4. Upload to Git (Optional)](#4-upload-to-git-optional)
- [PrestaShop Configuration](#prestashop-configuration)
- [Seeding Data to PrestaShop](#seeding-data-to-prestashop)
- [Available Scripts](#available-scripts)
- [Troubleshooting](#troubleshooting)

---

## Prerequisites

- [Bun](https://bun.sh/) runtime installed
- Access to PrestaShop admin panel
- Git (for downloading/uploading scraped data)

## Installation

```bash
# Install dependencies and create .env file
bun run deps
```

This will:
1. Install all required packages
2. Copy `.env.example` to `.env`

### Configure Environment

Edit the `.env` file with your PrestaShop API credentials:

```dotenv
PRESTASHOP_API_URL=https://your-shop.com/api
PRESTASHOP_API_KEY=YOUR_API_KEY_HERE
```

---

## Quick Start (Recommended)

If you want to skip scraping and use pre-scraped data:

```bash
# Download pre-scraped products and images from the 'images' branch
bun run git:download

# Configure PrestaShop (see section below)
# Then seed the data
bun run seed
```

> **Note:** This downloads `products.json`, `categories.json`, and all product images from the `images` branch.

---

## Full Workflow

### 1. Scrape Products

Scrapes product data from Action.com and saves to `../scrapper-results/products.json`:

```bash
bun run scrape:products
```

**Output:**
- `../scrapper-results/products.json` - All product data (name, price, description, specs, image URLs, categories)
- `../scrapper-results/categories.json` - Category names with image URLs

### 2. Download Images

Downloads all product and category images from the URLs in `products.json`:

```bash
bun run scrape:images
```

**Output:**
- `../scrapper-results/original/images/{product_id}/` - Original product images (webp format)
- `../scrapper-results/original/categoryImages/` - Original category images

### 3. Convert Images

Converts downloaded WebP images to PNG format for PrestaShop compatibility:

```bash
bun run convert:img
```

**Output:**
- `../scrapper-results/images/{product_id}/` - Converted product images (PNG)
- `../scrapper-results/categoryImages/` - Converted category images (PNG)

### One Command for All Scraping

```bash
bun run scrape:all
# Then convert images
bun run convert:img
```

### 4. Upload to Git (Optional)

Upload scraped data to the `images` branch for sharing/backup:

```bash
bun run git:upload
```

---

## PrestaShop Configuration

### 1. Enable PrestaShop API

1. Go to **Admin Panel** → **Configure** → **Advanced Parameters** → **Webservice**
2. Enable **"Enable PrestaShop's webservice"**
   > ⚠️ This setting sometimes disables itself after saving - verify it's enabled!
3. Click **"Add new webservice key"**
4. Generate or paste your API key
5. Set permissions (check ALL boxes) for:
   - `categories`
   - `images`
   - `manufacturers`
   - `product_feature_values`
   - `product_features`
   - `products`
   - `stock_availables`
   - `suppliers`
   - `tax_rule_groups`

### 2. Disable Cache (Important!)

Before seeding, disable caching to prevent issues:

1. Go to **Admin Panel** → **Configure** → **Advanced Parameters** → **Performance**
2. Scroll to the bottom
3. Disable **"Use cache"**
4. **Save** (verify it saved - sometimes requires multiple attempts)

---

## Seeding Data to PrestaShop

After configuring PrestaShop:

```bash
bun run seed
```

**What the seed script does:**
1. ✨ Cleans existing demo data from the database
2. 📁 Creates all categories and subcategories
3. 🖼️ Uploads category images
4. 📦 Creates products with:
   - Names and descriptions
   - Prices
   - Product specifications/features
   - Category assignments
5. 🖼️ Uploads product images (max 3 per product)
6. 📊 Sets random stock quantities

### After Seeding

1. Re-enable cache in PrestaShop if desired
2. **Category images** may need manual adjustment in some cases

---

## Available Scripts

| Script | Command | Description |
|--------|---------|-------------|
| Setup | `bun run deps` | Install dependencies & create .env |
| Scrape Products | `bun run scrape:products` | Scrape product data from Action.com |
| Download Images | `bun run scrape:images` | Download all product/category images |
| Scrape All | `bun run scrape:all` | Run both scraping steps |
| Convert Images | `bun run convert:img` | Convert WebP images to PNG |
| Seed | `bun run seed` | Seed all data to PrestaShop |
| Git Download | `bun run git:download` | Download scraped data from `images` branch |
| Git Upload | `bun run git:upload` | Upload scraped data to `images` branch |

---

## Troubleshooting

### API Key Issues
- Verify the API key is correct in `.env`
- Check that all required permissions are enabled
- Ensure the webservice is enabled (it can disable itself)

### Seeding Fails
- Make sure cache is disabled in PrestaShop
- Check the server isn't rate limiting requests
- Verify network connectivity to the PrestaShop instance

### Images Not Uploading
- Ensure images were converted to PNG format
- Check that `../scrapper-results/images/` contains the converted images
- Verify API has `images` permission enabled

### Server 500 Errors
- The script will automatically retry (up to 5 times) on server errors
- If persistent, check PrestaShop server logs

---

## Project Structure

```
scrapper/
├── src/
│   ├── products_scrapper.ts  # Scrapes product data
│   ├── download_images.ts    # Downloads images
│   ├── convert_images.ts     # Converts WebP to PNG
│   ├── seed.ts               # Seeds data to PrestaShop
│   ├── types.ts              # TypeScript types
│   ├── api/
│   │   ├── api.ts            # PrestaShop API functions
│   │   ├── category_manager.ts
│   │   ├── clean_database.ts
│   │   └── features_manager.ts
│   └── templates/            # XML templates for API
├── scripts/
│   └── scrap-upload.sh       # Git upload script
├── .env.example
├── package.json
└── README.md
```