import logging
import time
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.common.exceptions import TimeoutException, NoSuchElementException, StaleElementReferenceException

logger = logging.getLogger(__name__)


def wait_for_page_load(driver, timeout=10):
    try:
        WebDriverWait(driver, timeout).until(
            lambda d: d.execute_script("return document.readyState") == "complete"
        )
    except Exception as e:
        logger.debug(f"⚠️ Page load wait timed out: {e}")


def navigate_to_order_history(driver):
    try:
        logger.info("📜 Navigating to order history page...")
        
        wait = WebDriverWait(driver, 10)
        
        # Click on the user name to open the menu
        try:
            user_menu = wait.until(
                EC.element_to_be_clickable((By.XPATH, "//span[@class='hidden-sm-down']"))
            )
            driver.execute_script("arguments[0].click();", user_menu)
            logger.info("👤 User menu clicked")
            wait_for_page_load(driver, timeout=2)
        except TimeoutException:
            logger.error("❌ Could not find user menu button")
            return False
        
        # Click on "Historia i szczegóły zamówień" link
        try:
            order_history_link = wait.until(
                EC.element_to_be_clickable((By.ID, "history-link"))
            )
            driver.execute_script("arguments[0].click();", order_history_link)
            logger.info("📋 Order history link clicked")
            wait_for_page_load(driver)
        except TimeoutException:
            logger.error("❌ Could not find order history link in menu")
            return False
        
        
        # Wait for order table to load
        try:
            wait.until(EC.presence_of_element_located((By.XPATH, "//table")))
        except TimeoutException:
            logger.warning("⚠️ Table not found after waiting")
        
        # Try to find order elements
        try:
            wait.until(EC.presence_of_element_located((By.XPATH, "//table")))
            wait.until(EC.presence_of_element_located((By.XPATH, "//td[@class='text-sm-center order-actions']")))
        except TimeoutException:
            logger.warning("⚠️ Order elements not found, trying alternative selectors...")
            
            selectors_to_try = [
                (By.XPATH, "//a[@data-link-action='view-order-details']"),
                (By.XPATH, "//a[contains(@href, 'id_order')]"),
                (By.XPATH, "//a[contains(normalize-space(), 'Szczegóły')]"),
                (By.CLASS_NAME, "order-item"),
                (By.XPATH, "//div[contains(@class, 'order')]")
            ]
            
            found = False
            for by, selector in selectors_to_try:
                try:
                    elements = driver.find_elements(by, selector)
                    if elements:
                        found = True
                        break
                    else:
                        wait.until(EC.presence_of_element_located((by, selector)))
                        found = True
                        break
                except (TimeoutException, Exception):
                    continue
            
            if not found:
                logger.error("❌ No order elements found on page")
                return False
        
        return True
    except Exception as e:
        logger.error(f"❌ Error navigating to order history: {e}")
        import traceback
        logger.error(f"Traceback: {traceback.format_exc()}")
        return False


def click_order_details_button(driver):
    try:
        wait = WebDriverWait(driver, 10)
        wait_for_page_load(driver, timeout=2)
        
        # Try multiple selectors to find the details link
        selectors_to_try = [
            (By.XPATH, "//a[@data-link-action='view-order-details']"),
            (By.XPATH, "//a[contains(@href, 'id_order') and contains(normalize-space(), 'Szczegóły')]"),
            (By.XPATH, "//a[contains(normalize-space(), 'Szczegóły')]"),
            (By.XPATH, "//a[contains(@href, 'id_order')]")
        ]
        
        details_button = None
        
        for by, selector in selectors_to_try:
            try:
                # Try to find immediately first
                elements = driver.find_elements(by, selector)
                if elements:
                    details_button = elements[0]
                    break
            except Exception:
                continue
        
        if details_button is None:
            logger.error("❌ Could not find order details button")
            return False
        
        # Scroll into view and click
        try:
            driver.execute_script("arguments[0].scrollIntoView(true);", details_button)
            wait_for_page_load(driver, timeout=2)
            driver.execute_script("arguments[0].click();", details_button)
            logger.info("🔍 Order details of the last checkout")
            return True
        except StaleElementReferenceException:
            logger.warning("⚠️ Element became stale, re-finding and clicking...")
            elements = driver.find_elements(By.XPATH, "//a[contains(@href, 'id_order')]")
            if elements:
                driver.execute_script("arguments[0].click();", elements[0])
                logger.info("✅ Button clicked on retry")
                return True
            else:
                logger.error("❌ Could not re-find button")
                return False
        
    except Exception as e:
        logger.error(f"❌ Error clicking order details button: {e}")
        import traceback
        logger.error(f"Traceback: {traceback.format_exc()}")
        return False


def get_order_status(driver):
    try:
        wait = WebDriverWait(driver, 10)
        wait_for_page_load(driver, timeout=2)
        
        # Try to find the status label
        status_label = None
        selectors = [
            (By.XPATH, "//span[@class='label label-pill bright']"),
            (By.XPATH, "//span[contains(@class, 'label') and contains(@class, 'bright')]"),
            (By.XPATH, "//span[contains(@class, 'label-pill')]"),
            (By.CLASS_NAME, "label"),
        ]
        
        for by, selector in selectors:
            try:
                status_label = wait.until(
                    EC.presence_of_element_located((by, selector))
                )
                break
            except TimeoutException:
                continue
        
        if status_label is None:
            logger.error("❌ Could not find status label")
            return None
        
        # Extract text content
        status_text = status_label.text.strip()
        if not status_text:
            status_text = driver.execute_script("return arguments[0].innerText;", status_label).strip()
        
        logger.info(f"📊 Order status: {status_text}")
        return status_text
    except Exception as e:
        logger.error(f"❌ Error getting order status: {e}")
        import traceback
        logger.error(f"Traceback: {traceback.format_exc()}")
        return None



def run_test(driver):
    """Main order status check flow"""
    try:
        logger.info("🚀 Starting order status check...")
        
        if not navigate_to_order_history(driver):
            return {"status": "failed", "reason": "Could not navigate to order history"}
        
        wait_for_page_load(driver, timeout=2)
        
        if not click_order_details_button(driver):
            return {"status": "failed", "reason": "Could not click order details button"}
        
        wait_for_page_load(driver)
        
        
        
        order_status = get_order_status(driver)
        
        if order_status is None:
            return {"status": "failed", "reason": "Could not retrieve order status"}
        
        
        return {
            "status": "success",
            "order_status": order_status
        }
        
    except Exception as e:
        logger.error(f"❌ Order status check failed with error: {e}")
        import traceback
        logger.error(f"Traceback: {traceback.format_exc()}")
        return {"status": "failed", "reason": str(e)}
