import logging
import random
from time import sleep
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

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
        logger.info("Opening cart...")
        wait = WebDriverWait(driver, 10)
        
        cart_button = driver.find_element(By.CSS_SELECTOR, "a[data-testid='shopping-cart']")
        cart_button.click()
        # Wait for cart items rendered via data-testid within cart list
        wait.until(EC.presence_of_all_elements_located((By.CSS_SELECTOR, "ul.cart-items [data-testid='product-row']")))
        return True
    except Exception as e:
        logger.error(f"Error opening cart: {e}")
        return False
def get_cart_items_with_details(driver, display=True):
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
            product_lines = wait.until(EC.presence_of_all_elements_located((By.CSS_SELECTOR, "ul.cart-items [data-testid='product-row']")))
            
            product_line = product_lines[item_index]
            
            delete_btn = product_line.find_element(By.CSS_SELECTOR, "[data-testid='cart-item-remove-btn']")
            
            # Scroll the delete button into view
            driver.execute_script("arguments[0].scrollIntoView(true);", delete_btn)
            
            
            try:
                delete_btn.click()
                logger.debug("Clicked delete button using JavaScript")
            except Exception as js_click_error:
                logger.debug(f"JavaScript click failed: {js_click_error}, trying standard click")
                delete_btn.click()

            wait.until(EC.staleness_of(product_line))
            logger.debug("Confirmed product removed from DOM")
            
            return True, removed_item
        except Exception as e:
            logger.error(f"Error finding delete button: {e}")
            return False, removed_item
        
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
    logger.info("ITEMS IN CART (BEFORE):")
    items_before = get_cart_items_with_details(driver)
    
    # Remove 3 products (or less if not enough items) - RANDOMLY
    removed_count = 0
    removed_items = []
    items_remaining = items_before.copy()
    
    for i in range(3):
        if not items_remaining:
            logger.warning("Warning: No more items to remove")
            break
        
        # Select random index from remaining items
        random_index = random.randint(0, len(items_remaining) - 1)
        logger.debug(f"--- Removal {i+1}/3 ---")
        logger.debug(f"Selected random index: {random_index} out of {len(items_remaining)} remaining items")
        
        success, removed_item = remove_product_from_cart(driver, items_remaining, random_index)
        
        if success:
            removed_count += 1
            removed_items.append(removed_item)
            # Remove from local list for next iteration
            items_remaining.pop(random_index)
            # Refresh items list from page (without displaying)
            items_remaining = get_cart_items_with_details(driver, display=False)
        else:
            logger.warning(f"Warning: Failed to remove product #{i+1}")
            break
    
    
    # Get final items
    items_after = get_cart_items_with_details(driver)
    
    logger.info("="*70)
    logger.info("DELETION SUMMARY:")
    logger.info("="*70)
    
    logger.info(f"REMOVED ITEMS ({removed_count}):")
    for i, item in enumerate(removed_items, 1):
        logger.info(f"   {i}. {item['name']} (qty: {item['quantity']})")
    
    logger.info(f"REMAINING ITEMS ({len(items_after)}):")
    if items_after:
        for i, item in enumerate(items_after, 1):
            logger.info(f"   {i}. {item['name']} (qty: {item['quantity']})")
    else:
        logger.info("   (cart is empty)")
    
    return
