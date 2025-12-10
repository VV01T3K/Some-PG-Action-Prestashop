from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.keys import Keys
from utils import wait_for_page_load, wait_for_filter_to_apply
import random
import logging
import json
import os


logger = logging.getLogger(__name__)


def load_blacklist():
    blacklist_path = os.path.join(
        os.path.dirname(__file__), 
        '..', 
        'config', 
        'blacklist.json'
    )
    
    if os.path.exists(blacklist_path):
        with open(blacklist_path, 'r', encoding='utf-8') as f:
            config = json.load(f)
            blacklist_names = {
                product['name'] 
                for product in config.get('blacklist', {}).get('products', [])
            }
            logger.info(f"Loaded blacklist with {len(blacklist_names)} products")
            return blacklist_names
    
    logger.warning(f"Blacklist file not found at {blacklist_path}")
    return set()

BLACKLIST_NAMES = load_blacklist()


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
        category_element.click()
        try:
            available_checkbox = WebDriverWait(driver, 10).until(
                        EC.presence_of_element_located((By.CSS_SELECTOR, "[data-testid='available-products']"))
                    )
            available_checkbox.click()
        except Exception as e:
            logger.warning(f"Warning: Could not apply 'Available products' filter: {e}")

        wait_for_page_load(driver, timeout=5)

        wait_for_filter_to_apply(driver, timeout=10)  
        
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
    
    available_products = []
    for product in products:
        
        try:
            product_info = get_product_info(product)
            product_name = product_info.get('title', '')
            
            if product_name and product_name not in BLACKLIST_NAMES:
                available_products.append(product)
        except Exception:
            available_products.append(product)   
    if not available_products:
        logger.warning("Warning: No products available to select")
        return []
    
    select_count = min(count, len(available_products))
    selected = random.sample(available_products, select_count)
    
    selected_products_data = []
    for product in selected:
        info = get_product_info(product)
        logger.info(f"      {len(selected_products_data) + 1}. {info['title']} - {info['price']}")
        try:
            product_link = product.get_attribute("href")
            if product_link:
                selected_products_data.append({"href": product_link, "title": info['title'], "price": info['price']})
            else:
                selected_products_data.append({"index": available_products.index(product), "title": info['title'], "price": info['price']})
        except Exception:
            selected_products_data.append({"element": product, "title": info['title'], "price": info['price']})
    
    logger.info(f"Selected {select_count} random products from {len(products)}")
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

    magazine_capacity = None
    try:
        stock_el = wait.until(
            EC.presence_of_element_located((By.CSS_SELECTOR, "[data-stock]"))
        )
        stock_attr = stock_el.get_attribute("data-stock")
        if stock_attr and stock_attr.isdigit():
            magazine_capacity = int(stock_attr)
    except Exception as e:
        logger.debug(f"Could not read magazine capacity: {e}")
        magazine_capacity = None

    if magazine_capacity is not None and magazine_capacity < 1:
        logger.warning("Warning: Product out of stock (magazine capacity < 1)")
        driver.back()
        wait_for_page_load(driver)
        return False, 0
    
    random_quantity = random.randint(1, 5)
    logger.info(f"Random quantity generated: {random_quantity}")
    
    if magazine_capacity is not None:
        quantity = min(random_quantity, magazine_capacity)
        
        if quantity < random_quantity:
            logger.info(f"Magazine capacity ({magazine_capacity}) is less than random quantity ({random_quantity}), using {quantity}")
    else:
        quantity = random_quantity
        logger.info(f"Could not read magazine capacity, using random quantity: {quantity}")
    
    try:
        quantity_input = wait.until(
            EC.presence_of_element_located((By.NAME, "qty"))
        )
        if quantity >= 1:
            quantity_input.click()
            quantity_input.send_keys(Keys.CONTROL, "a")
            quantity_input.send_keys(Keys.DELETE)
            quantity_input.send_keys(str(quantity))
            logger.info(f"Set quantity to: {quantity}")
        else:
            logger.warning(f"Warning: Calculated quantity {quantity} is invalid, cannot add product")
            return False, 0
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
    # Step 2: Select hardcoded categories
    selected_categories = ["Hobby", "Zrób to sam"]
    logger.info(f"Using hardcoded categories: {selected_categories}")
    
    total_products_added = 0
    products_details = []
    # Step 3: For each selected category, add 5 random products
    # selected_categories now contains category TITLES (strings), not WebElements
    for cat_idx, category_title in enumerate(selected_categories):
        logger.info(f"Processing category {cat_idx + 1}/{len(selected_categories)}: {category_title}")
        
        if cat_idx > 0:
            try:
                back_button = WebDriverWait(driver, 10).until(
                    EC.element_to_be_clickable((By.CSS_SELECTOR, "[data-testid='header-logo']"))
                )
                driver.execute_script("arguments[0].scrollIntoView(true);", back_button)
                back_button.click()

            except Exception as e:
                logger.warning(f"Warning: Could not navigate back: {e}")
        wait = WebDriverWait(driver, 10)
        wait_for_page_load(driver, timeout=10)
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
        
        

        wait_for_page_load(driver, timeout=5)
        

        products = get_category_products(driver, fresh_category)

       
        if not products:
            logger.warning("   Warning: No products found in this category")
            continue
        
        if cat_idx == 0:
            count=random.randint(6, 9)
        selected_products = select_random_products(products, count)
        count=10-len(selected_products)
        
        if not selected_products:
            logger.warning("   Warning: Could not select products in this category")
            continue
        
        products_to_try = list(selected_products)
        products_added_count = 0
        target_products = len(selected_products)
        
        while products_to_try and products_added_count < target_products:
            product_data = products_to_try.pop(0)
            
            if products_added_count > 0:
                try:
                    available_checkbox = WebDriverWait(driver, 10).until(
                                EC.presence_of_element_located((By.CSS_SELECTOR, "[data-testid='available-products']"))
                            )
                    available_checkbox.click()
                    wait_for_filter_to_apply(driver, timeout=5)
                except Exception as e:
                    logger.warning(f"Warning: Could not apply 'Available products' filter: {e}")
            
            try:
                product_element = wait.until(
                        EC.presence_of_element_located((By.CSS_SELECTOR, f"a[href='{product_data['href']}']"))
                    )
                product_info = get_product_info(product_element)
                product_info["category"] = category_title
            except Exception:
                logger.warning(f"Warning: Could not get product info href: {product_data['href']}")
                continue
            
            logger.info(f"   Attempting product {products_added_count + 1}/{target_products}: {product_info['title']}")  
            success, quantity = add_to_cart(driver, product_element)
            
            if success:
                total_products_added += quantity
                products_added_count += 1
                product_info["quantity_added"] = quantity
                products_details.append(product_info)
                
                wait = WebDriverWait(driver, 3)
                try:
                    wait.until(lambda d: get_cart_count(d) > initial_cart_count + total_products_added - 1)
                except Exception:
                    pass
            else:
                logger.warning(f"   Failed to add product to cart, will try another if available")
                # If we have more products in the category, fetch another one
                if not products_to_try:
                    logger.info(f"   No more backup products, trying to find another from category")
                    try:
                        all_products = driver.find_elements(By.CSS_SELECTOR, "[data-testid='product-card-link']")
                        available_hrefs = [p.get_attribute('href') for p in all_products]
                        tried_hrefs = [p['href'] for p in selected_products]
                        new_hrefs = [h for h in available_hrefs if h not in tried_hrefs]
                        if new_hrefs:
                            products_to_try.append({"href": random.choice(new_hrefs)})
                            logger.info(f"   Found additional product to try")
                    except Exception as e:
                        logger.warning(f"   Could not find additional products: {e}")

            
            try:
                back_button = WebDriverWait(driver, 10).until(
                    EC.element_to_be_clickable((By.CSS_SELECTOR, "[data-testid='breadcrumb-link']"))
                )
                driver.execute_script("arguments[0].scrollIntoView(true);", back_button)
                back_button.click()
                
                
            except Exception as e:
                logger.warning(f"Warning: Could not click breadcrumb back button: {e}")
    
    # Step 4: Verify final cart count
    updated_cart_count = get_cart_count(driver)
    logger.info(f"Updated cart count: {updated_cart_count}")
    logger.info(f"Products added in this session: {total_products_added}")
    
    expected_count = initial_cart_count + total_products_added
    logger.info(f"Products added in this session: {expected_count}")
    return