import logging
import random
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from utils import wait_for_page_load

logger = logging.getLogger(__name__)

# Sample Polish addresses for checkout
ADDRESSES = [
    "ul. Warszawska 123",
    "ul. Krakowska 45",
    "ul. Gdańska 678",
    "ul. Poznańska 12",
    "ul. Wrocławska 99"
]

CITIES = [
    "Warszawa",
    "Kraków",
    "Gdańsk",
    "Poznań",
    "Wrocław"
]

POSTCODES = [
    "00-001",
    "31-000",
    "80-001",
    "60-001",
    "50-001"
]


def click_cart_button(driver):
    try:
        wait = WebDriverWait(driver, 10)
        
        cart_button = wait.until(
            EC.element_to_be_clickable((By.CSS_SELECTOR, "a[data-testid='shopping-cart']"))
        )
        driver.execute_script("arguments[0].click();", cart_button)
        
        return True
    except Exception as e:
        logger.error(f"Error clicking cart button: {e}")
        return False


def is_cart_empty(driver):
    try:
        cart_count_span = driver.find_element(By.CLASS_NAME, "cart-products-count")
        count_text = cart_count_span.text.strip("()")
        
        count = int(count_text) if count_text else 0
        
        if count == 0:
            logger.info("Cart is empty (0 products)")
            return True
        
        return False
    except Exception as e:
        logger.debug(f"Could not determine cart status: {e}")
        return False


def click_checkout_button(driver):
    try:
        wait = WebDriverWait(driver, 10)
        
        checkout_button = wait.until(
            EC.element_to_be_clickable((By.CSS_SELECTOR, "a[data-testid='checkout-button']"))
        )
        driver.execute_script("arguments[0].click();", checkout_button)
        
        return True
    except Exception as e:
        logger.error(f"Error clicking checkout button: {e}")
        return False


def fill_address(driver, address):
    try:
        wait = WebDriverWait(driver, 10)
        
        address_field = wait.until(
            EC.presence_of_element_located((By.CSS_SELECTOR, "[data-testid='address1-input'] input[data-testid='input']"))
        )
        address_field.clear()
        address_field.send_keys(address)
        
        return True
    except Exception as e:
        logger.error(f"Error filling address: {e}")
        return False


def fill_postcode(driver, postcode):
    try:
        wait = WebDriverWait(driver, 10)
        
        postcode_field = wait.until(
            EC.presence_of_element_located((By.CSS_SELECTOR, "[data-testid='postcode-input'] input[data-testid='input']"))
        )
        postcode_field.clear()
        postcode_field.send_keys(postcode)
        
        return True
    except Exception as e:
        logger.error(f"Error filling postcode: {e}")
        return False


def fill_city(driver, city):
    try:
        wait = WebDriverWait(driver, 10)
        
        city_field = wait.until(
            EC.presence_of_element_located((By.CSS_SELECTOR, "[data-testid='city-input'] input[data-testid='input']"))
        )
        city_field.clear()
        city_field.send_keys(city)
        
        return True
    except Exception as e:
        logger.error(f"Error filling city: {e}")
        return False


def click_address_confirm_button(driver):
    try:
        wait = WebDriverWait(driver, 10)
        
        confirm_button = wait.until(
            EC.element_to_be_clickable((By.XPATH, "//button[@name='confirm-addresses' and @type='submit']"))
        )
        driver.execute_script("arguments[0].click();", confirm_button)
        
        return True
    except Exception as e:
        logger.error(f"Error confirming address: {e}")
        return False


def click_shipping_confirm_button(driver):
    try:
        wait = WebDriverWait(driver, 10)
        
        shipping_button = wait.until(
            EC.element_to_be_clickable((By.XPATH, "//button[@name='confirmDeliveryOption' and @type='submit']"))
        )
        driver.execute_script("arguments[0].click();", shipping_button)
        
        return True
    except Exception as e:
        logger.error(f"Error confirming shipping method: {e}")
        return False


def select_shipping_method(driver):
    try:
        wait = WebDriverWait(driver, 10)
        
        shipping_options = wait.until(
            EC.presence_of_all_elements_located((By.XPATH, "//input[@type='radio' and @name and contains(@name, 'delivery_option')]"))
        )
        
        if len(shipping_options) > 0:
            selected_option = random.choice(shipping_options)
            option_id = selected_option.get_attribute("id")
            
            driver.execute_script("arguments[0].click();", selected_option)
            
            logger.info(f"Shipping: {option_id}")
            return option_id
        else:
            logger.warning("Warning: No shipping options found")
            return None
    except Exception as e:
        logger.error(f"Error selecting shipping method: {e}")
        return None


def select_payment_method(driver, payment_module="ps_cashondelivery"):
    try:
        wait = WebDriverWait(driver, 10)
        
        try:
            wait.until(
                EC.presence_of_element_located((By.CSS_SELECTOR, "input[name='payment-option']"))
            )
        except:
            try:
                payment_radios = driver.find_elements(By.CSS_SELECTOR, "input[name='payment-option']")
                if payment_radios:
                    selected_payment = payment_radios[0].get_attribute("data-module-name")
                    driver.execute_script("arguments[0].click();", payment_radios[0])
                    logger.info(f"Payment: {selected_payment}")
                    return selected_payment
                else:
                    logger.warning("Warning: No payment options found")
                    return None
            except Exception as fallback_e:
                logger.error(f"Error: Fallback payment selection failed: {fallback_e}")
                return None
        
        try:
            short_wait = WebDriverWait(driver, 3)
            payment_radio = short_wait.until(
                EC.presence_of_element_located((By.CSS_SELECTOR, f"input[name='payment-option'][data-module-name='{payment_module}']"))
            )
            
            #wait_for_page_load(driver, timeout=2)
            driver.execute_script("arguments[0].click();", payment_radio)
            
            logger.info(f"Payment: {payment_module}")
            return payment_module
        except Exception as specific_e:
            try:
                payment_radios = driver.find_elements(By.CSS_SELECTOR, "input[name='payment-option']")
                if payment_radios:
                    selected_payment = payment_radios[0].get_attribute("data-module-name")
                    driver.execute_script("arguments[0].click();", payment_radios[0])
                    logger.info(f"Payment: {selected_payment}")
                    return selected_payment
                else:
                    logger.warning("Warning: No payment options found")
                    return None
            except Exception as fallback_e:
                logger.error(f"Error: Fallback payment selection failed: {fallback_e}")
                return None
                
    except Exception as e:
        logger.error(f"Error selecting payment method: {e}")
        return None


def click_payment_confirm_button(driver):
    try:
        wait = WebDriverWait(driver, 10)
        
        wait_for_page_load(driver, timeout=2)
        
        try:
            terms_checkbox = driver.find_element(By.XPATH, "//input[@id and contains(@id, 'conditions')]")
            if not terms_checkbox.is_selected():
                driver.execute_script("arguments[0].click();", terms_checkbox)
                logger.info("Terms and conditions checked")
            wait_for_page_load(driver, timeout=2)
        except Exception as terms_e:
            logger.debug(f"Could not find or click terms checkbox: {terms_e}")
        
        try:
            order_button = wait.until(
                EC.presence_of_element_located((By.XPATH, "//button[contains(@class, 'btn-primary') and contains(translate(text(), 'ZŁÓŻ', 'złóż'), 'zamówienie')]"))
            )
            
            button_class = order_button.get_attribute('class')
            if button_class and 'disabled' in button_class:
                wait.until(
                    lambda d: 'disabled' not in order_button.get_attribute('class')
                )
            
            driver.execute_script("arguments[0].scrollIntoView(true);", order_button)
            wait_for_page_load(driver, timeout=2)
            driver.execute_script("arguments[0].click();", order_button)
            
            return True
        except Exception as order_button_e:
            pass
        
        try:
            confirm_buttons = driver.find_elements(By.XPATH, "//button[@type='submit']")
            if confirm_buttons:
                last_button = confirm_buttons[-1]
                driver.execute_script("arguments[0].scrollIntoView(true);", last_button)
                driver.execute_script("arguments[0].click();", last_button)
                return True
        except Exception as fallback_e:
            logger.error(f"Error: Fallback button click failed: {fallback_e}")
        
        logger.warning("Warning: Could not find payment confirmation button")
        return False
    except Exception as e:
        logger.error(f"Error confirming payment: {e}")
        return False


def run_test(driver):
    try:
        
        if not click_cart_button(driver):
            return {"status": "failed", "reason": "Could not click cart button"}
        
        wait = WebDriverWait(driver, 10)
        
        wait.until(EC.presence_of_element_located((By.CSS_SELECTOR, "a[data-testid='checkout-button']")))
        
        if not click_checkout_button(driver):
            return {"status": "failed", "reason": "Could not click checkout button"}
        
        wait.until(EC.presence_of_element_located((By.CSS_SELECTOR, "[data-testid='address1-input'] input[data-testid='input']"))) 
        
        address = random.choice(ADDRESSES)
        city = random.choice(CITIES)
        postcode = random.choice(POSTCODES)
        
        logger.info(f"Address: {address}, {postcode} {city}")
        
        if not fill_address(driver, address):
            return {"status": "failed", "reason": "Could not fill address"}
        
        if not fill_postcode(driver, postcode):
            return {"status": "failed", "reason": "Could not fill postcode"}
        
        if not fill_city(driver, city):
            return {"status": "failed", "reason": "Could not fill city"}
        
        if not click_address_confirm_button(driver):
            return {"status": "failed", "reason": "Could not confirm address"}
        
        wait_for_page_load(driver)
        shipping_method = select_shipping_method(driver)
        click_shipping_confirm_button(driver)
        
        wait_for_page_load(driver)
        payment_method = select_payment_method(driver, "ps_cashondelivery")
        wait_for_page_load(driver, timeout=2)
        click_payment_confirm_button(driver)
        
        logger.info("Checkout completed!")
        
        return {
            "status": "success",
            "address": address,
            "postcode": postcode,
            "city": city,
            "shipping_method": shipping_method,
            "payment_method": payment_method,
        }
        
    except Exception as e:
        logger.error(f"Checkout test failed: {e}")
        return {"status": "failed", "reason": str(e)}
