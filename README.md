# action.com Clone - PrestaShop 1.7.8.11

A complete e-commerce platform cloning [action.com](https://www.action.com/pl-pl/) built with PrestaShop 1.7.8.11, including automated product scraping, database management, and comprehensive end-to-end testing.

## README files of components

1. [Product Scrapper & Seeder](scrapper/README.md)
2. [Selenium Test Suite](selenium/README.md)

## Technologies used

- [PrestaShop 1.7.8.11](https://github.com/PrestaShop/PrestaShop/tree/1.7.8.11)
- `prestashop/prestashop:1.7.8.11-fpm`
- `mariadb:12.0`
- `valkey:9-alpine` (Redis-compatible cache)
- [Caddy 2](https://caddyserver.com/) webserver
- Python 3.14
- Selenium Grid 4.15.0
- Bun runtime
- Docker & Docker Compose

## Team members

- [Wojciech Siwiec](https://github.com/VV01T3K)
- [Bartosz Łyskanowski](https://github.com/bartilyska)
- [Filip Pudlak](https://github.com/TrueDogeKing)
- [Paweł Narwojsz](https://github.com/pawel491)

---

## Table of Contents

- [Quick Start](#quick-start)
- [Project Structure](#project-structure)
- [Available Commands](#available-commands)

---

## Quick Start

### 1. Initial Setup

```bash
# Clone the repository
git clone <repository-url>
cd Some-PG-Action-Prestashop

# Complete setup (dependencies + configuration)
bun run all:setup
bun run db:restore # Restore database from backup
```

### 2. Configure Environment

Edit the `.env` file:

```bash
SHOP_DOMAIN=shop.pg.wojtecs.com
PRESTASHOP_API_URL=https://shop.pg.wojtecs.com/api
PRESTASHOP_API_KEY=YOUR_API_KEY_HERE
```

### 3. Start PrestaShop

```bash
# Start all PrestaShop services
bun run presta:up
```

Access the store at: https://shop.pg.wojtecs.com

### 4. Seed Products (Optional)

```bash
# Download pre-scraped products and seed into PrestaShop
bun run scrap:sync
```

### 5. Run Tests

```bash
# Start Selenium Grid and run tests
cd selenium
bun run deps
bun run sel:up # or with VNC - bun run sel:up:vnc
bun run tests
```

---

## Available Commands

### Setup & Dependencies

| Script | Command | Description |
|--------|---------|-------------|
| All Setup | `bun all:setup` | Complete first-time setup |
| All Dependencies | `bun all:deps` | Install all dependencies |

### PrestaShop Management

| Script | Command | Description |
|--------|---------|-------------|
| Start PrestaShop | `bun presta:up` | Start PrestaShop environment |
| Stop PrestaShop | `bun presta:down` | Stop PrestaShop |
| Restart PrestaShop | `bun presta:restart` | Restart PrestaShop |
| Delete PrestaShop | `bun presta:del` | Delete all data and restore from git |

### Database Operations

| Script | Command | Description |
|--------|---------|-------------|
| Backup DB | `bun db:backup` | Create encrypted database backup |
| Restore DB | `bun db:restore` | Restore from backup |
| List Backups | `bun db:ls` | List available backups |
| Clean Backups | `bun db:clean` | Remove old backups |

### Product Scraping & Seeding

| Script | Command | Description |
|--------|---------|-------------|
| Download Data | `bun scrap:get` | Download pre-scraped products |
| Seed Data | `bun scrap:seed` | Seed products to PrestaShop |
| Sync Data | `bun scrap:sync` | Download and seed in one command |

### Cleanup

| Script | Command | Description |
|--------|---------|-------------|
| Stop All | `bun all:down` | Stop all services |
| Delete All | `bun all:del` | Delete all data (PrestaShop, Selenium, scrapper) |

---

## Project Structure

```
Some-PG-Action-Prestashop/
├── prestashop/           # PrestaShop Docker environment
│   ├── docker/          # Docker Compose & Stack configurations
│   ├── Dockerfile.*     # Custom Docker images
│   ├── Caddyfile        # Web server configuration
│   ├── backup/          # Database backups
│   ├── src/             # PrestaShop source code
│   └── README.md        # PrestaShop documentation
│
├── scrapper/            # Product scraping & seeding tool
│   ├── src/             # Scraper source code
│   ├── scripts/         # Utility scripts
│   └── README.md        # Scrapper documentation
│
├── selenium/            # End-to-end test suite
│   ├── tests/           # Test files
│   ├── compose.yaml     # Selenium Grid configuration
│   └── README.md        # Testing documentation
│
├── package.json         # Root-level scripts
├── .env.example         # Environment template
└── README.md            # This file
```
