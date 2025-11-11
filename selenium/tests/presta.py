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

# Configure logging
logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')
logger = logging.getLogger(__name__)


def main():
    """Main test orchestrator"""
    prestashop_domain = os.getenv("SHOP_DOMAIN", "shop.pg.wojtecs.com")
    prestashop_url = f"https://{prestashop_domain}"

    options = webdriver.ChromeOptions()
    options.add_argument("--no-sandbox")
    options.add_argument("--disable-dev-shm-usage")
    options.add_argument("--ignore-certificate-errors")
    options.add_argument("--ignore-ssl-errors")
    options.add_argument("--start-maximized")

    driver = webdriver.Remote(command_executor="http://localhost:4444", options=options)
    
    results = {}

    try:
        logger.info(f"🌐 Opening PrestaShop at {prestashop_url}...")
        driver.get(prestashop_url)
        logger.info("✅ Page loaded successfully")
        logger.info(f"📄 Page title: {driver.title}")

        logger.info("\n" + "="*70)
        logger.info("STARTING AUTOMATED TESTS")
        logger.info("="*70)
        
        # TEST 1: Register Account
        logger.info("\n▶️  TEST 1: Account Registration")
        logger.info("-"*70)
        result_1 = register_account.run_test(driver)
        results["test_1_register"] = result_1
        
        # TEST 2: Search and Add to Cart (run 5 times)
        logger.info("\n▶️  TEST 2: Search and Add to Cart (5 iterations)")
        logger.info("-"*70)
        test_2_results = []
        for i in range(1, 6):
            driver.refresh() # Refresh the page before each iteration (to be fixed)
            logger.info(f"\n--- Iteration {i}/5 ---")
            result = searchbar.run_test(driver)
            test_2_results.append(result)
        results["test_2_search_add"] = test_2_results
        
        # TEST 3: Add 10 products from multiple categories (COMMENTED OUT)
        # logger.info("\n▶️  TEST 3: Add 10 Products from Categories")
        # logger.info("-"*70)
        # result_3 = add_to_cart_multi.run_test(driver)
        # results["test_3_add_multi"] = result_3
        
        # TEST 4: Remove from Cart
        logger.info("\n▶️  TEST 3: Remove from Cart")
        logger.info("-"*70)
        result_4 = remove_from_cart.run_test(driver)
        results["test_3_remove"] = result_4

        # Print summary
        logger.info("\n" + "="*70)
        logger.info("TEST SUMMARY")
        logger.info("="*70)
        
        # Summary for TEST 1 (Registration)
        if "test_1_register" in results:
            result = results["test_1_register"]
            status = result.get("status", "UNKNOWN")
            if status == "success":
                firstname = result.get("firstname", "N/A")
                lastname = result.get("lastname", "N/A")
                email = result.get("email", "N/A")
                gender = result.get("gender", "N/A")
                logger.info(f"✅ test_1_register: SUCCESS")
                logger.info(f"   - Name: {firstname} {lastname}")
                logger.info(f"   - Email: {email}")
                logger.info(f"   - Gender: {gender}")
            else:
                logger.info(f"❌ test_1_register: FAILED - {result.get('reason', 'Unknown error')}")
        
        # Summary for TEST 2 (5 iterations of search/add)
        if "test_2_search_add" in results:
            test_2_list = results["test_2_search_add"]
            passed_count = sum(1 for r in test_2_list if r.get("status") == "PASSED")
            logger.info(f"✅ test_2_search_add: {passed_count}/5 iterations passed")
            for i, result in enumerate(test_2_list, 1):
                status = result.get("status", "UNKNOWN")
                if status == "PASSED":
                    product = result.get('product', {}).get('title', 'N/A')
                    qty = result.get('quantity_added', 0)
                    logger.info(f"   Iteration {i}: {status} - {product} (qty: {qty})")
                else:
                    logger.info(f"   Iteration {i}: {status}")
        
        # Summary for TEST 3 (Remove from Cart)
        if "test_3_remove" in results:
            result = results["test_3_remove"]
            status = result.get("status", "UNKNOWN")
            removed = result.get("removed_count", 0)
            logger.info(f"✅ test_3_remove: {status}")
            logger.info(f"   - Products removed: {removed}")
        
        logger.info("="*70)

    except Exception as e:
        logger.error(f"❌ Unexpected error: {e}")
        import traceback
        logger.error(traceback.format_exc())
        
    finally:
        driver.quit()
        logger.info("🔴 Browser closed")


if __name__ == "__main__":
    main()
