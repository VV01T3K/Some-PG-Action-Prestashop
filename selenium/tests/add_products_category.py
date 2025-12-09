from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.keys import Keys
from utils import wait_for_page_load
import random
import logging


logger = logging.getLogger(__name__)


def get_all_categories(driver):
    try:
        wait = WebDriverWait(driver, 10)
        categories = wait.until(
            EC.presence_of_all_elements_located((By.CSS_SELECTOR, "[data-testid='category-card']"))
        )
        logger.info(f"Total categories found: {len(categories)}")
        return categories
    except Exception as e:
        logger.error(f"Error getting categories: {e}")
        return None


def select_random_categories(categories, count=2):
    if not categories or len(categories) < count:
        logger.warning(f"Warning: Not enough categories. Found: {len(categories) if categories else 0}, Requested: {count}")
        return []
    
    selected = random.sample(categories, count)
    
    # Store category titles instead of WebElements to avoid stale references
    selected_titles = []
    for idx, category in enumerate(selected):
        try:
            title = category.find_element(By.CSS_SELECTOR, "[data-testid='category-card-title']").text
            logger.info(f"   Selected {idx + 1}: {title}")
            selected_titles.append(title)
        except Exception:
            logger.info(f"   Selected {idx + 1}: (Unknown)")
    return selected_titles


def get_category_products(driver, category_element):
    try:
        # driver.execute_script("arguments[0].scrollIntoView(true);", category_element)
        category_element.click()
        
        wait = WebDriverWait(driver, 10)
        products = wait.until(
            EC.presence_of_all_elements_located((By.CSS_SELECTOR, "[data-testid='product-card-link']"))
        )
        
        logger.info(f"Found {len(products)} product cards in category")
        return products
    except Exception as e:
        logger.error(f"Error getting category products: {e}")
        return []


def select_random_products(products, count=5):
    if not products:
        logger.warning("Warning: No products available to select")
        return []
    
    select_count = min(count, len(products))
    selected = random.sample(products, select_count)
    
    # Store product identifiers instead of WebElements to avoid staleness
    selected_products_data = []
    for product in selected:
        info = get_product_info(product)
        logger.info(f"      {len(selected_products_data) + 1}. {info['title']} - {info['price']}")
        try:
            # Try to get a unique identifier for the product
            product_link = product.get_attribute("href")
            if product_link:
                selected_products_data.append({"href": product_link, "title": info['title'], "price": info['price']})
            else:
                # Fallback: store index in the products list
                selected_products_data.append({"index": products.index(product), "title": info['title'], "price": info['price']})
        except Exception:
            # Last resort: store the WebElement itself (will become stale)
            selected_products_data.append({"element": product, "title": info['title'], "price": info['price']})
    
    logger.info(f"Selected {select_count} random products from {len(products)} available")
    return selected_products_data


def get_product_info(product_element):
    try:
        title = None
        price = None

        try:
            title = product_element.find_element(By.CSS_SELECTOR, "[data-testid='product-card-title']")
            title = title.text.strip()
        except Exception:
            title = None

        if not title:
            title="Unknown Product"

        
        # Try to get price (single selector is sufficient)
        try:
            price = product_element.find_element(By.CSS_SELECTOR, ".price").text.strip()
        except Exception:
            price = "N/A"
        
        logger.debug(f"Product: {title} - Price: {price}")
        return {"title": title, "price": price}
        
    except Exception as e:
        logger.error(f"Could not get product info: {e}")
        return {"title": "Unknown", "price": "N/A"}


def add_to_cart(driver, product_element):
    wait = WebDriverWait(driver, 10)
    try:
        driver.execute_script("arguments[0].scrollIntoView(true);", product_element)
        product_element.click()
    except Exception:
        logger.info("Standard click failed")
    
    wait.until(EC.presence_of_element_located((By.NAME, "qty")))

    # Check stock availability
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

    if stock_available and stock_available < 1:
        logger.warning("Warning: Product out of stock")
        return False, 0
    
    quantity = random.randint(1, min(5, stock_available if stock_available else 5))
    logger.info(f"Selected quantity: {quantity}")
    
    try:
        quantity_input = wait.until(
            EC.presence_of_element_located((By.NAME, "qty"))
        )
        if quantity >= 1:
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
    
    driver.execute_script("arguments[0].scrollIntoView(true);", button)
    
    try:
        button.click()
    except Exception:
        logger.info("Standard click failed")
    
    logger.info(f"Added {quantity} product(s) to cart successfully!")
    return True, quantity
        


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


def run_test(driver):
    
    initial_cart_count = get_cart_count(driver)
    logger.info(f"Initial cart count: {initial_cart_count}")
    
    # Step 1: Get all categories
    categories = get_all_categories(driver)
    if not categories:
        logger.error("No categories found")
        return
    # Step 2: Select 2 random categories
    selected_categories = select_random_categories(categories, count=2)
    if not selected_categories:
        logger.error("Could not select categories")
        return
    
    total_products_added = 0
    products_details = []
    # Step 3: For each selected category, add 5 random products
    # selected_categories now contains category TITLES (strings), not WebElements
    for cat_idx, category_title in enumerate(selected_categories):
        logger.info(f"Processing category {cat_idx + 1}/{len(selected_categories)}: {category_title}")
        
        if cat_idx > 0:
            wait_for_page_load(driver, timeout=10)
            try:
                back_button = WebDriverWait(driver, 10).until(
                    EC.element_to_be_clickable((By.CSS_SELECTOR, "[data-testid='header-logo']"))
                )
                driver.execute_script("arguments[0].scrollIntoView(true);", back_button)
                back_button.click()
                
                
                current_url = driver.current_url
                logger.info(f"Current URL after back: {current_url}")
            except Exception as e:
                logger.warning(f"Warning: Could not navigate back: {e}")
        logger.info(f"   Navigated to category: {category_title}")
        # Find the fresh category element by title
        wait = WebDriverWait(driver, 10)
        all_categories = wait.until(
            EC.presence_of_all_elements_located((By.CSS_SELECTOR, "[data-testid='category-card']"))
        )

        fresh_category = None
        for cat_elem in all_categories:
            try:
                cat_title = cat_elem.find_element(By.CSS_SELECTOR, "[data-testid='category-card-title']").text
                if cat_title == category_title:
                    fresh_category = cat_elem
                    break
            except Exception:
                continue
        if not fresh_category:
                logger.error(f"Could not find category element for '{category_title}'")
                continue
        
        products = get_category_products(driver, fresh_category)
        
        if not products:
            logger.warning("   Warning: No products found in this category")
            continue
        
        # Select up to 5 random products
        selected_products = select_random_products(products, count=5)
        if not selected_products:
            logger.warning("   Warning: Could not select products in this category")
            continue
        
        # Add selected products to cart
        for prod_idx, product_data in enumerate(selected_products):
            # Re-find the element to avoid stale references
            try:
                product_element = wait.until(
                        EC.presence_of_element_located((By.CSS_SELECTOR, f"a[href='{product_data['href']}']"))
                    )
                product_info = get_product_info(product_element)
                product_info["category"] = category_title
            except Exception as e:
                logger.warning(f"Warning: Could not get product info href: {e}")
                product_info = {"title": "Unknown", "price": "N/A", "category": category_title}
            
            logger.info(f"   Adding product {prod_idx + 1}/{len(selected_products)}: {product_info['title']}")  
            success, quantity = add_to_cart(driver, product_element)
            
            if success:
                total_products_added += quantity
                product_info["quantity_added"] = quantity
                products_details.append(product_info)
                
                # Small wait for cart to update
                wait = WebDriverWait(driver, 3)
                try:
                    wait.until(lambda d: get_cart_count(d) > initial_cart_count + total_products_added - 1)
                except Exception:
                    pass
            else:
                logger.warning("   Failed to add product to cart")
            
            # Go back to category view for next product using breadcrumb
            wait_for_page_load(driver, timeout=10)
            logger.info("  go back to category view ")
            logger.info(f"Current URL before back: {driver.current_url}")
            try:
                back_button = WebDriverWait(driver, 10).until(
                    EC.element_to_be_clickable((By.CSS_SELECTOR, "[data-testid='breadcrumb-link']"))
                )
                driver.execute_script("arguments[0].scrollIntoView(true);", back_button)
                back_button.click()
                
                # Check if we're back in the category view
                wait_for_page_load(driver, timeout=10)
                logger.info(f"Current URL after back click: {driver.current_url}")
                
            except Exception as e:
                logger.warning(f"Warning: Could not click breadcrumb back button: {e}")
    
    # Step 4: Verify final cart count
    updated_cart_count = get_cart_count(driver)
    logger.info(f"Updated cart count: {updated_cart_count}")
    logger.info(f"Products added in this session: {total_products_added}")
    
    expected_count = initial_cart_count + total_products_added
    logger.info(f"Products added in this session: {expected_count}")
    return