from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.keys import Keys
import random
import logging

logger = logging.getLogger(__name__)

SEARCH_KEYWORDS = [
    "jeans",
    "shirt",
    "pants",
    "jacket",
    "shoes",
    "dress",
    "sweater",
    "coat",
    "shorts",
    "blouse"
]


def search_product(driver, product_name):
    wait = WebDriverWait(driver, 10)
    
    try:
        logger.info(f"🔍 Searching for product: {product_name}")
        
        search_input = wait.until(
            EC.presence_of_element_located((By.NAME, "s"))
        )
        search_input.clear()
        search_input.send_keys(product_name)
        
        search_input.send_keys(Keys.RETURN)
        
        products = wait.until(
            EC.presence_of_all_elements_located((By.CLASS_NAME, "quick-view"))
        )
        
        logger.info(f"✅ Found {len(products)} products")
        return products
        
    except Exception as e:
        logger.error(f"❌ Error searching for product: {e}")
        return None


def select_random_product(products):
    if not products:
        logger.warning("⚠️  No products to select from")
        return None
    
    selected = random.choice(products)
    return selected


def get_product_info(product_element):
    try:
        article = product_element
        try:
            article = product_element.find_element(By.XPATH, "ancestor::article")
        except:
            article = product_element
        
        title = None
        for selector in ["h2.product-title", "a.product-name", "h2 a", ".product-title", "h3", "span.product-name"]:
            try:
                title = article.find_element(By.CSS_SELECTOR, selector).text
                if title:
                    break
            except:
                continue
        
        if not title:
            try:
                title = article.find_element(By.CSS_SELECTOR, "a[href*='product']").text
            except:
                title = "Unknown Product"
        
        price = None
        for selector in [".product-price", ".price", "[data-price]", "span.price"]:
            try:
                price = article.find_element(By.CSS_SELECTOR, selector).text
                if price:
                    break
            except:
                continue
        
        if not price:
            price = "N/A"
        
        logger.info(f"📦 Selected Product: {title} - Price: {price}")
        return {"title": title, "price": price}
        
    except Exception as e:
        logger.error(f"⚠️  Could not get full product info: {e}")
        return {"title": "Unknown", "price": "N/A"}


def get_cart_count(driver):
    try:
        cart_badge = driver.find_element(By.CLASS_NAME, "cart-products-count")
        text = cart_badge.text.strip("()")
        logger.debug(f"Cart badge text: '{cart_badge.text}', extracted: '{text}'")
        count = int(text) if text else 0
        return count
    except Exception as e:
        logger.debug(f"Could not get cart count: {e}")
        return 0


def add_to_cart(driver, product_element):
    wait = WebDriverWait(driver, 10)
    
    try:
        try:
            driver.execute_script("arguments[0].scrollIntoView(true);", product_element)
            product_element.click()
        except:
            logger.info("ℹ️  Standard click failed, trying JavaScript click...")
            driver.execute_script("arguments[0].click();", product_element)
            logger.info("✅ Clicked with JavaScript")
        
        wait.until(EC.presence_of_element_located((By.NAME, "qty")))
        
        quantity = random.randint(1, 5)
        logger.info(f"📦 Selected quantity: {quantity}")
        
        try:
            quantity_input = wait.until(
                EC.presence_of_element_located((By.NAME, "qty"))
            )
            if quantity > 1:
                quantity_input.clear()
                quantity_input.send_keys(str(quantity))
        except Exception as e:
            logger.warning(f"⚠️  Could not set quantity: {e}, using default 1")
            quantity = 1
        
        try:
            button = wait.until(
                EC.element_to_be_clickable((By.CLASS_NAME, "add-to-cart"))
            )
        except:
            logger.error("❌ Could not find add to cart button")
            return False, 0
        
        driver.execute_script("arguments[0].scrollIntoView(true);", button)
        
        try:
            button.click()
        except:
            logger.info("ℹ️  Standard click failed, using JavaScript...")
            driver.execute_script("arguments[0].click();", button)
            logger.info("✅ Clicked with JavaScript")
        
        logger.info(f"✅ Added {quantity} product(s) to cart successfully!")
        return True, quantity
        
    except Exception as e:
        logger.error(f"❌ Error adding to cart: {e}")
        import traceback
        logger.error(traceback.format_exc())
        return False, 0


def run_test(driver):
    logger.info("="*70)
    logger.info("TEST 2: Wyszukanie produktu i dodanie do koszyka")
    logger.info("="*70)
    
    initial_cart_count = get_cart_count(driver)
    logger.info(f"🛒 Initial cart count: {initial_cart_count}")
    
    search_keyword = random.choice(SEARCH_KEYWORDS)
    logger.info(f"🔑 Selected search keyword: '{search_keyword}'")
    
    products = search_product(driver, search_keyword)
    
    if not products:
        logger.error("❌ No products found")
        return {
            "status": "FAILED",
            "reason": "No products found",
            "initial_cart": initial_cart_count,
            "final_cart": initial_cart_count,
            "quantity_added": 0
        }
    
    selected_product = select_random_product(products)
    if not selected_product:
        logger.error("❌ Could not select product")
        return {
            "status": "FAILED",
            "reason": "Could not select product",
            "initial_cart": initial_cart_count,
            "final_cart": initial_cart_count,
            "quantity_added": 0
        }
    
    product_info = get_product_info(selected_product)
    
    success, quantity_added = add_to_cart(driver, selected_product)
    
    if not success:
        logger.warning("⚠️  Could not add product to cart")
        return {
            "status": "FAILED",
            "reason": "Could not add to cart",
            "product": product_info,
            "initial_cart": initial_cart_count,
            "final_cart": initial_cart_count,
            "quantity_added": 0
        }
    
    wait = WebDriverWait(driver, 5)
    
    try:
        def cart_count_increased(driver):
            try:
                badge = driver.find_element(By.CLASS_NAME, "cart-products-count")
                text = badge.text.strip("()")
                current = int(text) if text else 0
                logger.debug(f"Current cart count in wait: {current}, initial: {initial_cart_count}")
                return current > initial_cart_count
            except:
                return False
        
        wait.until(cart_count_increased)
        logger.debug("✅ Cart count increased")
    except:
        logger.debug("⏱️  Cart count did not increase within timeout")
    
    updated_cart_count = get_cart_count(driver)
    logger.info(f"🛒 Updated cart count: {updated_cart_count}")
    
    expected_count = initial_cart_count + quantity_added
    
    if updated_cart_count >= expected_count:
        logger.info(f"✨ SUCCESS! Cart updated correctly!")
        logger.info(f"   - Product: {product_info['title']}")
        logger.info(f"   - Added: {quantity_added} product(s)")
        logger.info(f"   - Cart before: {initial_cart_count}")
        logger.info(f"   - Cart after: {updated_cart_count}")
        
        return {
            "status": "PASSED",
            "product": product_info,
            "quantity_added": quantity_added,
            "initial_cart": initial_cart_count,
            "final_cart": updated_cart_count
        }
    else:
        logger.warning(f"⚠️  Cart count mismatch!")
        logger.warning(f"   - Expected at least: {expected_count}")
        logger.warning(f"   - Actual: {updated_cart_count}")
        
        return {
            "status": "FAILED",
            "reason": "Cart count mismatch",
            "product": product_info,
            "quantity_added": quantity_added,
            "initial_cart": initial_cart_count,
            "final_cart": updated_cart_count
        }
