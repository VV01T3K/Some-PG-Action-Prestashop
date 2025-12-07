#!/usr/bin/env python3


from selenium import webdriver
import os
import logging
import sys

# Add current directory to path for imports
sys.path.insert(0, os.path.dirname(__file__))

# Import test modules
import searchbar
import remove_from_cart
import register_account
import checkout
import order_status

# Configure logging
logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')
logger = logging.getLogger(__name__)


def main():
    prestashop_domain = os.getenv("SHOP_DOMAIN", "shop.pg.wojtecs.com")
    prestashop_url = f"https://{prestashop_domain}"

    host_downloads_dir = os.path.join(os.path.dirname(__file__), "downloads")
    os.makedirs(host_downloads_dir, exist_ok=True)
    container_downloads_dir = "/home/seluser/Downloads"

    options = webdriver.ChromeOptions()
    options.add_argument("--no-sandbox")
    options.add_argument("--disable-dev-shm-usage")
    options.add_argument("--ignore-certificate-errors")
    options.add_argument("--ignore-ssl-errors")
    options.add_argument("--start-maximized")
    options.add_experimental_option(
        "prefs",
        {
            "download.default_directory": container_downloads_dir,
            "download.prompt_for_download": False,
            "download.directory_upgrade": True,
        },
    )

    driver = webdriver.Remote(command_executor="http://localhost:4444", options=options)
    
    results = {}

    try:
        logger.info(f"🌐 Opening PrestaShop at {prestashop_url}...")
        driver.get(prestashop_url)
        logger.info("✅ Page loaded successfully")
        logger.info(f"📄 Page title: {driver.title}")

        logger.info("="*70)
        logger.info("STARTING AUTOMATED TESTS")
        logger.info("="*70)
        
        # TEST 1: Register Account
        logger.info("▶️  TEST 1: Account Registration")
        logger.info("-"*70)
        result_1 = register_account.run_test(driver)
        results["test_1_register"] = result_1
        

        # TEST 2: Search and Add to Cart (run 5 times)
        logger.info("▶️  TEST 2: Search and Add to Cart (5 iterations)")
        logger.info("-"*70)
        test_2_results = []
        for i in range(1, 6):
            driver.refresh() # Refresh the page before each iteration (to be fixed)
            result = searchbar.run_test(driver)
            test_2_results.append(result)
        results["test_2_search_add"] = test_2_results

        #TEST 3: Remove from Cart
        logger.info("▶️  TEST 3: Remove from Cart")
        logger.info("-"*70)
        result_4 = remove_from_cart.run_test(driver)
        results["test_3_remove"] = result_4
        
        cart_is_empty = checkout.is_cart_empty(driver)
        
        if not cart_is_empty:
            logger.info("▶️  TEST 4: Checkout")
            logger.info("-"*70)
            result_5 = checkout.run_test(driver)
            results["test_4_checkout"] = result_5
            
            if result_5.get("status") == "success":
                logger.info("▶️  TEST 5: Check Order Status")
                logger.info("-"*70)
                result_6 = order_status.run_test(driver)
                results["test_5_order_status"] = result_6
        else:
            logger.warning("⚠️ Cart is empty - skipping TEST 4 (Checkout) and TEST 5 (Order Status)")
            results["test_4_checkout"] = {"status": "skipped", "reason": "Cart is empty"}
            results["test_5_order_status"] = {"status": "skipped", "reason": "Cart is empty"}

        
        
        
    except Exception as e:
        logger.error(f"❌ Unexpected error: {e}")
        import traceback
        logger.error(traceback.format_exc())
        
    finally:
        driver.quit()
        logger.info("🔴 Browser closed")


if __name__ == "__main__":
    main()
