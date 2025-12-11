import logging
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.common.by import By

logger = logging.getLogger(__name__)


def wait_for_page_load(driver, timeout=10):
    try:
        WebDriverWait(driver, timeout).until(
            lambda d: d.execute_script("return document.readyState") == "complete"
        )
    except Exception as e:
        logger.debug(f"Page load wait timed out: {e}")


def wait_for_products_to_load(driver, timeout=15):
    try:
        def products_stable(driver):
            # Get initial count
            initial_count = len(driver.find_elements(By.CSS_SELECTOR, "[data-testid='product-card-link']"))
            
            final_count = len(driver.find_elements(By.CSS_SELECTOR, "[data-testid='product-card-link']"))
            # If counts are the same, products have stabilized
            return initial_count == final_count and initial_count > 0

        WebDriverWait(driver, timeout).until(products_stable)
        logger.debug("Products finished loading")
    except Exception as e:
        logger.debug(f"Product loading wait timed out: {e}")


def wait_for_filter_to_apply(driver, timeout=10):
    try:
        # Wait for any loading spinners to disappear
        WebDriverWait(driver, timeout).until(
            lambda d: len(d.find_elements(By.CSS_SELECTOR, ".loading, .spinner, [data-loading]")) == 0
        )
        # Then wait for products to stabilize
        wait_for_products_to_load(driver, timeout=5)
    except Exception as e:
        logger.debug(f"Filter application wait timed out: {e}")
