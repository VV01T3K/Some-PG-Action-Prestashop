from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.keys import Keys
from utils import wait_for_page_load
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
        logger.info(f"Searching for product: {product_name}")
        
        search_input = wait.until(
            EC.presence_of_element_located((By.CSS_SELECTOR, "input[data-testid='search-bar']"))
        )
        search_input.clear()
        search_input.send_keys(product_name)
        
        search_input.send_keys(Keys.RETURN)
        wait_for_page_load(driver)
        products = wait.until(
            EC.presence_of_all_elements_located((By.CSS_SELECTOR, "[data-testid='product-card']"))
        )
        
        logger.info(f"Found {len(products)} products")

        return products
        
    except Exception as e:
        logger.error(f"Error searching for product: {e}")
        return None


def select_random_product(products):
    if not products:
        logger.warning("Warning: No products to select from")
        return None
    
    selected = random.choice(products)
    return selected



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
            product_element.click()
        except Exception:
            logger.info("click failed")
        
        product_name_element = wait.until(
            EC.presence_of_element_located((By.CSS_SELECTOR, "h1.heading-2xl.mb-1"))
        )
        product_name = product_name_element.text
        logger.info(f"Adding product: {product_name}")
        
        wait.until(EC.presence_of_element_located((By.NAME, "qty")))

        stock_available = None
        try:
            stock_el = wait.until(
                EC.presence_of_element_located((By.CSS_SELECTOR, "[data-stock]"))
            )
            stock_attr = stock_el.get_attribute("data-stock")
            if stock_attr and stock_attr.isdigit():
                stock_available = int(stock_attr)
                logger.info(f"Stock available: {stock_available}")
        except Exception as e:
            logger.debug(f"Could not read stock info: {e}")
            stock_available = None

        if stock_available < 1:
            run_test(driver)
            return False, 0
        quantity = random.randint(1, min(5,stock_available))

       
        logger.info(f"Selected quantity: {quantity}")
        
        try:
            quantity_input = wait.until(
                EC.presence_of_element_located((By.NAME, "qty"))
            )
            if quantity >= 1:
                # Some browsers ignore clear() when min is enforced; select-all + delete, then type.
                quantity_input.click()
                quantity_input.send_keys(Keys.CONTROL, "a")
                quantity_input.send_keys(Keys.DELETE)
                quantity_input.send_keys(str(quantity))
        except Exception as e:
            logger.warning(f"Warning: Could not set quantity: {e}, using default 1")
            quantity = 1
        
        try:
            button = wait.until(
                EC.element_to_be_clickable((By.CSS_SELECTOR, "[data-testid='add-to-cart']"))
            )
        except Exception:
            logger.error("Could not find add to cart button")
            return False, 0
        
        
        try:
            button.click()
        except Exception:
            logger.info("click failed")
        
        logger.info(f"Added {quantity} product(s) '{product_name}' to cart successfully!")
        return True, quantity
        
    except Exception as e:
        logger.error(f"Error adding to cart: {e}")
        import traceback
        logger.error(traceback.format_exc())
        return False, 0


def run_test(driver):
    initial_cart_count = get_cart_count(driver)
    logger.info(f"Initial cart count: {initial_cart_count}")
    
    search_keyword = random.choice(SEARCH_KEYWORDS)
    logger.info(f"🔑 Selected search keyword: '{search_keyword}'")
    
    products = search_product(driver, search_keyword)
    
    if not products:
        logger.error("No products found")
        return 
    
    selected_product = select_random_product(products)
    if not selected_product:
        logger.error("Could not select product")
        return
    
    
    success, quantity_added = add_to_cart(driver, selected_product)
    
    if not success:
        logger.warning("Warning: Could not add product to cart")
        return
    
    wait = WebDriverWait(driver, 5)
    
    try:
        def cart_count_increased(driver):
            try:
                badge = driver.find_element(By.CLASS_NAME, "cart-products-count")
                text = badge.text.strip("()")
                current = int(text) if text else 0
                logger.debug(f"Current cart count in wait: {current}, initial: {initial_cart_count}")
                return current > initial_cart_count
            except Exception:
                return False
        
        wait.until(cart_count_increased)
        logger.debug("Cart count increased")
    except Exception:
        logger.debug("  Cart count did not increase within timeout")
    
    updated_cart_count = get_cart_count(driver)
    logger.info(f"Updated cart count: {updated_cart_count}")
    
    expected_count = initial_cart_count + quantity_added
    logger.info(f"Expected cart count: {expected_count}")
    return
