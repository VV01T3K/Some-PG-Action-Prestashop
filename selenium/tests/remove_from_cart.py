import logging
import random
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from utils import wait_for_page_load
logger = logging.getLogger(__name__)


def get_cart_count(driver):
    try:
        cart_badge = driver.find_element(By.CSS_SELECTOR, "[data-testid='cart-button-badge-text']")
        text = cart_badge.text.strip("()")
        count = int(text)
        return count
    except Exception:
        return 0


def open_cart(driver):
    try:
        wait = WebDriverWait(driver, 10)
        max_retries = 3
        
        for attempt in range(max_retries):
            try:
                cart_button = driver.find_element(By.CSS_SELECTOR, "a[data-testid='shopping-cart']")
                cart_button.click()
                # Wait for cart items rendered via data-testid within cart list
                wait.until(EC.presence_of_all_elements_located((By.CSS_SELECTOR, "ul.cart-items [data-testid='product-row']")))
                return True
            except Exception as e:
                if "stale element" in str(e).lower() and attempt < max_retries - 1:
                    logger.debug(f"Stale element on attempt {attempt + 1}, retrying...")
                    continue
                raise
        
        return True
    except Exception as e:
        logger.error(f"Error opening cart: {e}")
        return False

def get_cart_items_with_details(driver,display=False):
    try:
        items = []
        cart_rows = driver.find_elements(By.CSS_SELECTOR, "ul.cart-items [data-testid='product-row']")
        
        
        for idx, row in enumerate(cart_rows):
            try:
                product_name = "Unknown Product"
                try:
                    product_link = row.find_element(By.CSS_SELECTOR, "[data-testid='product-row-title']")
                    product_name = product_link.text.strip()
                except Exception as e:
                    logger.debug(f"Could not find product name in row {idx+1}: {e}")
                
                quantity = 1
                try:
                    qty_el = row.find_element(By.CSS_SELECTOR, "[data-testid='quantity-stepper'] .js-cart-line-product-quantity")
                    quantity = int(qty_el.text.strip())
                except Exception as e:
                    logger.debug(f"Could not find quantity in row {idx+1}: {e}")
                
                items.append({"name": product_name, "quantity": quantity})
            except Exception as e:
                logger.debug(f"Could not extract item details for row {idx+1}: {e}")
                continue
        if display:
            logger.info(f"Found {len(items)} items in cart:")
            for i, item in enumerate(items, 1):
                logger.info(f"   {i}. {item['name']} (qty: {item['quantity']})")
        return items
    except Exception as e:
        logger.error(f"Could not get cart items: {e}")
        return []


def remove_product_from_cart(driver, items_before, item_index):
    try:
        wait = WebDriverWait(driver, 10)

        if item_index >= len(items_before):
            logger.error(f"Invalid index {item_index}, only {len(items_before)} items available")
            return False, {}

        removed_item = items_before[item_index]
        logger.info(f"Removing item #{item_index + 1}: {removed_item['name']} (qty: {removed_item['quantity']})")

        try:
            wait_for_page_load(driver, timeout=1)
            max_click_retries = 5
            for click_attempt in range(max_click_retries):
                try:
                    product_lines = wait.until(EC.presence_of_all_elements_located((By.CSS_SELECTOR, "ul.cart-items [data-testid='product-row']")))

                    if item_index >= len(product_lines):
                        logger.error(f"Item index {item_index} out of range, only {len(product_lines)} products in DOM")
                        return False, removed_item

                    product_line = product_lines[item_index]

                    try:
                        delete_btn = WebDriverWait(product_line, 5).until(
                            EC.presence_of_element_located((By.CSS_SELECTOR, "[data-testid='cart-item-remove-btn']"))
                        )
                    except Exception as e:
                        logger.error(f"Failed to locate delete button for item {item_index}: {e}")
                        continue
                    
                    driver.execute_script("arguments[0].scrollIntoView({block: 'center'});", delete_btn)
                    
                    delete_btn.click()

                    wait.until(EC.staleness_of(product_line))
                    logger.debug("Confirmed product removed from DOM")

                    return True, removed_item
                except Exception as e:
                    if "stale element" in str(e).lower() and click_attempt < max_click_retries - 1:
                        logger.info(f"Stale element on click attempt {click_attempt + 1}, refetching product_lines and retrying...")
                        continue
                    logger.error(f"Error finding/clicking delete button for item {item_index} (attempt {click_attempt + 1}): {e}")
                    return False, removed_item
        except Exception as e:
            logger.error(f"Error removing product: {e}")
            return False, {}

    except Exception as e:
        logger.error(f"Error removing product: {e}")
        return False, {}


def run_test(driver):

    initial_cart = get_cart_count(driver)
    logger.info(f"Initial cart count: {initial_cart}")

    # Open cart
    if not open_cart(driver):
        return

    # Get initial items
    get_cart_items_with_details(driver, display=True)

    # Remove 3 products (or less if not enough items) - RANDOMLY
    removed_count = 0
    removed_items = []

    for i in range(3):
        # Re-query the DOM to get current items after each removal
        wait_for_page_load(driver, timeout=2)
        current_items = get_cart_items_with_details(driver, display=False)

        if not current_items:
            logger.warning("Warning: No more items to remove")
            break

        # Select random index from current items
        random_index = random.randint(0, len(current_items) - 1)

        success, removed_item = remove_product_from_cart(driver, current_items, random_index)

        if success:
            removed_count += 1
            removed_items.append(removed_item)
        else:
            logger.warning(f"Warning: Failed to remove product #{i+1}")
            break

    return
