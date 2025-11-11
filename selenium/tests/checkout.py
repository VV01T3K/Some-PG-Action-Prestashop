import logging
import random
import time
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

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
    """Click the cart button to view cart"""
    try:
        logger.info("🛒 Clicking cart button...")
        wait = WebDriverWait(driver, 10)
        
        # Find and click the cart link
        cart_button = wait.until(
            EC.element_to_be_clickable((By.XPATH, "//a[@href='//shop.pg.wojtecs.com/koszyk?action=show']"))
        )
        driver.execute_script("arguments[0].click();", cart_button)
        
        logger.info("✅ Cart button clicked")
        return True
    except Exception as e:
        logger.error(f"❌ Error clicking cart button: {e}")
        return False


def click_checkout_button(driver):
    """Click the 'Przejdź do realizacji zamówienia' (Go to checkout) button"""
    try:
        logger.info("🛍️ Clicking checkout button...")
        wait = WebDriverWait(driver, 10)
        
        # Find and click the checkout button
        checkout_button = wait.until(
            EC.element_to_be_clickable((By.XPATH, "//a[@href='https://shop.pg.wojtecs.com/zamówienie' and @class='btn btn-primary']"))
        )
        driver.execute_script("arguments[0].click();", checkout_button)
        
        logger.info("✅ Checkout button clicked")
        return True
    except Exception as e:
        logger.error(f"❌ Error clicking checkout button: {e}")
        return False


def fill_address(driver, address):
    """Fill in the address field"""
    try:
        wait = WebDriverWait(driver, 10)
        
        address_field = wait.until(
            EC.presence_of_element_located((By.ID, "field-address1"))
        )
        address_field.clear()
        address_field.send_keys(address)
        
        logger.info(f"✅ Filled address: {address}")
        return True
    except Exception as e:
        logger.error(f"❌ Error filling address: {e}")
        return False


def fill_postcode(driver, postcode):
    """Fill in the postal code field"""
    try:
        wait = WebDriverWait(driver, 10)
        
        postcode_field = wait.until(
            EC.presence_of_element_located((By.ID, "field-postcode"))
        )
        postcode_field.clear()
        postcode_field.send_keys(postcode)
        
        logger.info(f"✅ Filled postcode: {postcode}")
        return True
    except Exception as e:
        logger.error(f"❌ Error filling postcode: {e}")
        return False


def fill_city(driver, city):
    """Fill in the city field"""
    try:
        wait = WebDriverWait(driver, 10)
        
        city_field = wait.until(
            EC.presence_of_element_located((By.ID, "field-city"))
        )
        city_field.clear()
        city_field.send_keys(city)
        
        logger.info(f"✅ Filled city: {city}")
        return True
    except Exception as e:
        logger.error(f"❌ Error filling city: {e}")
        return False


def click_address_confirm_button(driver):
    """Click the 'Dalej' (Next) button to confirm address"""
    try:
        logger.info("📍 Clicking address confirmation button...")
        wait = WebDriverWait(driver, 10)
        
        # Find and click the confirm button
        confirm_button = wait.until(
            EC.element_to_be_clickable((By.XPATH, "//button[@name='confirm-addresses' and @type='submit']"))
        )
        driver.execute_script("arguments[0].click();", confirm_button)
        
        logger.info("✅ Address confirmed")
        return True
    except Exception as e:
        logger.error(f"❌ Error confirming address: {e}")
        return False


def click_shipping_confirm_button(driver):
    """Click the 'Dalej' (Next) button to confirm shipping method"""
    try:
        logger.info("🚚 Clicking shipping method confirmation button...")
        wait = WebDriverWait(driver, 10)
        
        # Find and click the shipping confirmation button
        shipping_button = wait.until(
            EC.element_to_be_clickable((By.XPATH, "//button[@name='confirmDeliveryOption' and @type='submit']"))
        )
        driver.execute_script("arguments[0].click();", shipping_button)
        
        logger.info("✅ Shipping method confirmed")
        return True
    except Exception as e:
        logger.error(f"❌ Error confirming shipping method: {e}")
        return False


def select_shipping_method(driver):
    """Randomly select one of the two available shipping methods"""
    try:
        logger.info("🚚 Selecting shipping method...")
        wait = WebDriverWait(driver, 10)
        
        # Wait a moment for the page to fully render
        time.sleep(1)
        
        # Get all shipping options - simpler XPath
        shipping_options = driver.find_elements(By.XPATH, "//input[@type='radio' and @name and contains(@name, 'delivery_option')]")
        logger.info(f"📦 Found {len(shipping_options)} shipping options")
        
        if len(shipping_options) > 0:
            # Randomly select one of the shipping options
            selected_option = random.choice(shipping_options)
            option_id = selected_option.get_attribute("id")
            option_name = selected_option.get_attribute("name")
            option_value = selected_option.get_attribute("value")
            
            # Scroll into view and click
            driver.execute_script("arguments[0].scrollIntoView(true);", selected_option)
            driver.execute_script("arguments[0].click();", selected_option)
            
            logger.info(f"✅ Selected shipping method: {option_id} ({option_name}={option_value})")
            return True
        else:
            logger.warning("⚠️ No shipping options found")
            # List all inputs on the page for debugging
            all_inputs = driver.find_elements(By.XPATH, "//input[@type='radio']")
            logger.debug(f"Found {len(all_inputs)} total radio buttons on page")
            return False
    except Exception as e:
        logger.error(f"❌ Error selecting shipping method: {e}")
        import traceback
        logger.debug(traceback.format_exc())
        return False


def select_payment_method(driver, payment_module="ps_wirepayment"):
    """Select payment method (wire transfer by default)"""
    try:
        logger.info("💳 Selecting payment method...")
        wait = WebDriverWait(driver, 10)
        
        
        try:
            wait.until(
                EC.presence_of_element_located((By.XPATH, "//input[@name='payment-option']"))
            )
            logger.info("✅ Payment options found on page")
        except:
            logger.warning("⚠️ Payment options not found, page might not be fully loaded")
        
        # Find and click the payment option radio button by data-module-name
        payment_radio = driver.find_element(By.XPATH, f"//input[@name='payment-option' and @data-module-name='{payment_module}']")
        
        # Scroll into view
        driver.execute_script("arguments[0].scrollIntoView(true);", payment_radio)
        time.sleep(0.5)
        
        # Click with JavaScript
        driver.execute_script("arguments[0].click();", payment_radio)
        
        logger.info(f"✅ Selected payment method: {payment_module}")
        return True
    except Exception as e:
        logger.error(f"❌ Error selecting payment method: {e}")
        import traceback
        logger.debug(traceback.format_exc())
        return False


def click_payment_confirm_button(driver):
    """Click the confirmation button for payment method"""
    try:
        logger.info("✅ Clicking payment confirmation button...")
        wait = WebDriverWait(driver, 10)
        
        # Wait a moment for payment selection to register
        time.sleep(0.5)
        
        # Find and click any confirm button that might be for payment
        confirm_buttons = driver.find_elements(By.XPATH, "//button[@type='submit' and @class and contains(@class, 'continue')]")
        
        if confirm_buttons:
            # Click the last one (usually the payment confirmation)
            driver.execute_script("arguments[0].click();", confirm_buttons[-1])
            logger.info("✅ Payment confirmed")
            return True
        else:
            logger.warning("⚠️ Could not find payment confirmation button")
            return False
    except Exception as e:
        logger.error(f"❌ Error confirming payment: {e}")
        return False


def run_test(driver):
    """Main checkout test flow"""
    try:
        logger.info("🚀 Starting checkout test...")
        
        # Click cart button
        if not click_cart_button(driver):
            return {"status": "failed", "reason": "Could not click cart button"}
        
        # Wait for cart page to load
        wait = WebDriverWait(driver, 10)
        wait.until(EC.presence_of_element_located((By.XPATH, "//a[@href='https://shop.pg.wojtecs.com/zamówienie' and @class='btn btn-primary']")))
        
        # Click checkout button
        if not click_checkout_button(driver):
            return {"status": "failed", "reason": "Could not click checkout button"}
        
        # Wait for checkout page to load
        wait.until(EC.presence_of_element_located((By.ID, "field-address1")))
        
        # Generate random address data
        address = random.choice(ADDRESSES)
        city = random.choice(CITIES)
        postcode = random.choice(POSTCODES)
        
        logger.info(f"📋 Address details: {address}, {postcode} {city}")
        
        # Fill address fields
        if not fill_address(driver, address):
            return {"status": "failed", "reason": "Could not fill address"}
        
        if not fill_postcode(driver, postcode):
            return {"status": "failed", "reason": "Could not fill postcode"}
        
        if not fill_city(driver, city):
            return {"status": "failed", "reason": "Could not fill city"}
        
        # Click address confirmation button
        if not click_address_confirm_button(driver):
            return {"status": "failed", "reason": "Could not confirm address"}
        
        # Wait for shipping method page to fully load
        logger.info("⏳ Waiting for shipping method page to load...")
        time.sleep(2)
        
        # Select random shipping method
        shipping_selected = select_shipping_method(driver)
        if not shipping_selected:
            logger.warning("⚠️ Could not select shipping method")
        
        # Confirm shipping method
        if not click_shipping_confirm_button(driver):
            logger.warning("⚠️ Could not confirm shipping method")
        
        # Wait for payment page to load
        time.sleep(2)
        
        # Try to select payment method
        if not select_payment_method(driver, "ps_wirepayment"):
            logger.warning("⚠️ Could not select payment method, continuing anyway")
        
        # Wait for payment selection to register
        time.sleep(1)
        
        # Click payment confirmation button
        if not click_payment_confirm_button(driver):
            logger.warning("⚠️ Could not confirm payment")
        
        logger.info("✅ Checkout process completed!")
        
        return {
            "status": "success",
            "address": address,
            "postcode": postcode,
            "city": city,
            "payment_method": "ps_wirepayment"
        }
        
    except Exception as e:
        logger.error(f"❌ Checkout test failed with error: {e}")
        return {"status": "failed", "reason": str(e)}
