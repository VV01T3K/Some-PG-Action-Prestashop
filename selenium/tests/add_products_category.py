from selenium import webdriver
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
        for idx, category in enumerate(categories):
            try:
                title = category.find_element(By.CSS_SELECTOR, "[data-testid='category-card-title']").text
                logger.info(f"   Category {idx + 1}: {title}")
            except:
                logger.info(f"   Category {idx + 1}: (Could not extract title)")
        return categories
    except Exception as e:
        logger.error(f"Error getting categories: {e}")
        return None


def select_random_categories(categories, count=2):
    if not categories or len(categories) < count:
        logger.warning(f"Warning: Not enough categories. Found: {len(categories) if categories else 0}, Requested: {count}")
        return []
    
    selected = random.sample(categories, count)
    logger.info(f"Selected {count} random categories")
    
    # Store category titles instead of WebElements to avoid stale references
    selected_titles = []
    for idx, category in enumerate(selected):
        try:
            title = category.find_element(By.CSS_SELECTOR, "[data-testid='category-card-title']").text
            logger.info(f"   Selected {idx + 1}: {title}")
            selected_titles.append(title)
        except:
            logger.info(f"   Selected {idx + 1}: (Unknown)")
    return selected_titles


def get_category_products(driver, category_element):
    try:
        # Scroll category into view and click
        driver.execute_script("arguments[0].scrollIntoView(true);", category_element)
        category_element.click()
        
        logger.info("Waiting for products to load...")
        wait = WebDriverWait(driver, 10)
        
        # Wait for product cards to appear
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
    
    # Select up to count products (or all if less than count)
    select_count = min(count, len(products))
    selected = random.sample(products, select_count)
    
    # Store product identifiers instead of WebElements to avoid staleness
    selected_products_data = []
    for product in selected:
        try:
            # Try to get a unique identifier for the product
            product_link = product.get_attribute("href")
            if product_link:
                selected_products_data.append({"href": product_link})
            else:
                # Fallback: store index in the products list
                selected_products_data.append({"index": products.index(product)})
        except:
            # Last resort: store the WebElement itself (will become stale)
            selected_products_data.append({"element": product})
    
    logger.info(f"Selected {select_count} random products from {len(products)} available")
    return selected_products_data


def get_product_info(product_element):
    try:
        title = None
        for selector in ["h2.product-title", "a.product-name", "h2 a", ".product-title", "h3", "span.product-name"]:
            try:
                title = product_element.find_element(By.CSS_SELECTOR, selector).text
                if title:
                    break
            except:
                continue
        
        if not title:
            try:
                title = product_element.find_element(By.CSS_SELECTOR, "a[href*='product']").text
            except:
                title = "Unknown Product"
        
        price = None
        for selector in [".product-price", ".price", "[data-price]", "span.price"]:
            try:
                price = product_element.find_element(By.CSS_SELECTOR, selector).text
                if price:
                    break
            except:
                continue
        
        if not price:
            price = "N/A"
        
        logger.info(f"Product: {title} - Price: {price}")
        return {"title": title, "price": price}
        
    except Exception as e:
        logger.error(f"Could not get product info: {e}")
        return {"title": "Unknown", "price": "N/A"}


def add_to_cart(driver, product_element):
    wait = WebDriverWait(driver, 10)
    
    try:
        try:
            driver.execute_script("arguments[0].scrollIntoView(true);", product_element)
            product_element.click()
        except:
            logger.info("Standard click failed, trying JavaScript click...")
            driver.execute_script("arguments[0].click();", product_element)
            logger.info("Clicked with JavaScript")
        
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
        except:
            logger.error("Could not find add to cart button")
            return False, 0
        
        driver.execute_script("arguments[0].scrollIntoView(true);", button)
        
        try:
            button.click()
        except:
            logger.info("Standard click failed, using JavaScript...")
            driver.execute_script("arguments[0].click();", button)
            logger.info("Clicked with JavaScript")
        
        logger.info(f"Added {quantity} product(s) to cart successfully!")
        return True, quantity
        
    except Exception as e:
        logger.error(f"Error adding to cart: {e}")
        import traceback
        logger.error(traceback.format_exc())
        return False, 0


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
        return {
            "status": "FAILED",
            "reason": "No categories found",
            "initial_cart": initial_cart_count,
            "final_cart": initial_cart_count,
            "products_added": 0
        }
    # Step 2: Select 2 random categories
    selected_categories = select_random_categories(categories, count=2)
    if not selected_categories:
        logger.error("Could not select categories")
        return {
            "status": "FAILED",
            "reason": "Could not select categories",
            "initial_cart": initial_cart_count,
            "final_cart": initial_cart_count,
            "products_added": 0
        }
    
    total_products_added = 0
    products_details = []
    # Step 3: For each selected category, add 5 random products
    # selected_categories now contains category TITLES (strings), not WebElements
    for cat_idx, category_title in enumerate(selected_categories):
        logger.info(f"Processing category {cat_idx + 1}/{len(selected_categories)}: {category_title}")
        
        if cat_idx > 0:
            # Go back to main page for the next category
            try:
                back_button = WebDriverWait(driver, 10).until(
                    EC.element_to_be_clickable((By.CSS_SELECTOR, "[data-testid='breadcrumb-back-button']"))
                )
                driver.execute_script("arguments[0].scrollIntoView(true);", back_button)
                back_button.click()
                logger.info("Navigated back to main page")
            except Exception as e:
                logger.warning(f"Warning: Could not navigate back: {e}")
        
        logger.info("On main page, finding fresh category element...")
        
        # Find the fresh category element by title
        try:
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
                        logger.info(f"Found fresh category element for '{category_title}'")
                        break
                except:
                    continue
            
            if not fresh_category:
                logger.error(f"Could not find category element for '{category_title}'")
                continue
        except Exception as e:
            logger.error(f"Error finding category element: {e}")
            continue
        
        # Get products in this category using the fresh element
        products = get_category_products(driver, fresh_category)
        
        if not products:
            logger.warning(f"   Warning: No products found in this category")
            continue
        
        # Select up to 5 random products
        selected_products = select_random_products(products, count=5)
        
        # Print selected products info
        logger.info(f"   Selected products to add to cart:")
        for idx, product_data in enumerate(selected_products, 1):
            # Re-find the element to get current info
            try:
                if "href" in product_data:
                    product_element = driver.find_element(By.CSS_SELECTOR, f"a[href='{product_data['href']}']")
                elif "index" in product_data:
                    # Re-get all products and find by index
                    current_products = driver.find_elements(By.CSS_SELECTOR, "[data-testid='product-card-link']")
                    if product_data["index"] < len(current_products):
                        product_element = current_products[product_data["index"]]
                    else:
                        logger.warning(f"      {idx}. Could not find product at index {product_data['index']}")
                        continue
                else:
                    product_element = product_data["element"]  # Fallback to stale element
                
                product_info = get_product_info(product_element)
                logger.info(f"      {idx}. {product_info['title']} - {product_info['price']}")
            except Exception as e:
                logger.warning(f"      {idx}. Could not get product info: {e}")
        
        
        # Add selected products to cart
        for prod_idx, product_data in enumerate(selected_products):
            # Re-find the element to avoid stale references
            try:
                if "href" in product_data:
                    product_element = driver.find_element(By.CSS_SELECTOR, f"a[href='{product_data['href']}']")
                elif "index" in product_data:
                    current_products = driver.find_elements(By.CSS_SELECTOR, "[data-testid='product-card-link']")
                    if product_data["index"] < len(current_products):
                        product_element = current_products[product_data["index"]]
                    else:
                        logger.warning(f"Could not find product at index {product_data['index']}")
                        continue
                else:
                    product_element = product_data["element"]
                
                # Get product info before adding
                product_info = get_product_info(product_element)
                product_info["category"] = category_title
            except Exception as e:
                logger.warning(f"Warning: Could not get product info: {e}")
                product_info = {"title": "Unknown", "price": "N/A", "category": category_title}
            
            # Add to cart
            try:
                success, quantity = add_to_cart(driver, product_element)
            except Exception as e:
                logger.error(f"Error processing product {prod_idx + 1}: {e}")
                success = False
                quantity = 0
            
            if success:
                total_products_added += quantity
                product_info["quantity_added"] = quantity
                products_details.append(product_info)
                
                # Small wait for cart to update
                wait = WebDriverWait(driver, 3)
                try:
                    wait.until(lambda d: get_cart_count(d) > initial_cart_count + total_products_added - 1)
                except:
                    pass
            else:
                logger.warning(f"   Failed to add product to cart")
            
            # Go back to category view for next product using breadcrumb
            try:
                back_button = WebDriverWait(driver, 10).until(
                    EC.element_to_be_clickable((By.CSS_SELECTOR, "[data-testid='breadcrumb-back-button']"))
                )
                driver.execute_script("arguments[0].scrollIntoView(true);", back_button)
                back_button.click()
                logger.info("Navigated back to products page")
                logger.info("Navigated back using breadcrumb")
            except Exception as e:
                logger.warning(f"Warning: Could not click breadcrumb back button: {e}")
    
    # Step 4: Verify final cart count
    updated_cart_count = get_cart_count(driver)
    logger.info(f"\nUpdated cart count: {updated_cart_count}")
    logger.info(f"Products added in this session: {total_products_added}")
    
    expected_count = initial_cart_count + total_products_added
    
    if updated_cart_count >= expected_count:
        logger.info(f"\nSUCCESS! All products added to cart!")
        logger.info(f"   - Total products added: {total_products_added}")
        logger.info(f"   - Cart before: {initial_cart_count}")
        logger.info(f"   - Cart after: {updated_cart_count}")
        
        return {
            "status": "PASSED",
            "products_added": total_products_added,
            "products": products_details,
            "initial_cart": initial_cart_count,
            "final_cart": updated_cart_count
        }
    else:
        logger.warning(f"\nWarning: Cart count mismatch!")
        logger.warning(f"   - Expected at least: {expected_count}")
        logger.warning(f"   - Actual: {updated_cart_count}")
        
        return {
            "status": "FAILED",
            "reason": "Cart count mismatch",
            "products_added": total_products_added,
            "products": products_details,
            "initial_cart": initial_cart_count,
            "final_cart": updated_cart_count
        }
