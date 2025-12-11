# Selenium Test Suite for PrestaShop

Automated end-to-end testing suite for the PrestaShop store using Selenium Grid with Chrome and Firefox browsers.

## Table of Contents

- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Quick Start](#quick-start)
- [Running Tests](#running-tests)
- [Selenium Grid](#selenium-grid)
- [Configuration](#configuration)

---

## Overview

This test suite uses Selenium Grid to run automated browser tests against the PrestaShop instance. Tests cover critical user flows including:

- Product search and filtering
- Shopping cart operations
- User registration
- Checkout process
- Order status tracking
- Category browsing

## Prerequisites

- [Docker](https://www.docker.com/) and Docker Compose
- [Python 3.14+](https://www.python.org/)
- [uv](https://github.com/astral-sh/uv) - Python package manager
- [Bun](https://bun.sh/) runtime (for running npm scripts)

## Installation

```bash
# Install dependencies and set up the environment
bun run deps
```

This will:
1. Sync Python dependencies using `uv`
2. Pull required Docker images
3. Build custom images if needed
4. Create the `tests/downloads` directory with proper permissions

---

## Quick Start

### 1. Start Selenium Grid

```bash
# Start Selenium Hub with Chrome and Firefox nodes
bun run sel:up
```

The Selenium Grid Hub will be available at: **http://localhost:4444**

### 2. Run All Tests

```bash
# Run the complete test suite
bun run tests
```

### 3. Stop Selenium Grid

```bash
# Stop all containers
bun run sel:down
```

---

## Running Tests

### Run Complete Test Suite

```bash
bun run tests
# Or directly with uv
uv run tests/presta.py
```

---

## Selenium Grid

### Architecture

The Selenium Grid consists of:

- **Selenium Hub** (port 4444) - Central hub coordinating test execution
- **Chrome Node** (port 7900) - Chrome browser for testing
- **Firefox Node** (port 7901) - Firefox browser for testing (currently not used)

### Available Commands

| Command | Description |
|---------|-------------|
| `bun sel:up` | Start Selenium Grid (no VNC) |
| `bun sel:down` | Stop Selenium Grid |
| `bun sel:restart` | Restart Selenium Grid (no VNC) |
| `bun sel:up:vnc` | Start with VNC viewer enabled |
| `bun sel:down:vnc` | Stop VNC-enabled Grid |
| `bun sel:restart:vnc` | Restart with VNC enabled |

---

## Configuration

### Environment Variables

The test suite uses environment variables for configuration:

```bash
# Shop domain (default: shop.pg.wojtecs.com)
SHOP_DOMAIN=shop.pg.wojtecs.com
```

Set in your shell or create a `.env` file.


### Download Directory

Downloaded files from tests are saved to: `tests/downloads/`

This directory is automatically created with proper permissions during setup.

---

## Project Structure

```
selenium/
├── tests/
│   ├── presta.py              # Main test runner
│   ├── utils.py               # Utility functions (waits, helpers)
│   ├── searchbar.py           # Search & filter tests
│   ├── remove_from_cart.py    # Cart management tests
│   ├── register_account.py    # User registration tests
│   ├── checkout.py            # Checkout flow tests
│   ├── order_status.py        # Order tracking tests
│   ├── add_products_category.py  # Category browsing tests
│   └── downloads/             # Test download directory
├── config/
│   └── blacklist.json         # Test configuration
├── compose.yaml               # Docker Compose for Selenium Grid
├── pyproject.toml             # Python dependencies
├── package.json               # Bun scripts
└── README.md
```
