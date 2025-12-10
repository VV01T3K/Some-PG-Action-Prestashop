import logging
import time
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.common.exceptions import TimeoutException
from utils import wait_for_page_load

logger = logging.getLogger(__name__)


def navigate_to_order_history(driver):
    try:
        logger.info("Navigating to order history page...")
        
        wait = WebDriverWait(driver, 10)
        
        try:
            user_menu = wait.until(
                EC.element_to_be_clickable((By.CSS_SELECTOR, "[data-testid='header-login-button']"))
            )
            user_menu.click()
        except TimeoutException:
            logger.error("Could not find user menu button")
            return False
        
        try:
            order_history_link = wait.until(
                EC.element_to_be_clickable((By.ID, "history-link"))
            )
            order_history_link.click()
        except TimeoutException:
            logger.error("Could not find order history link in menu")
            return False
        
        return True
    except Exception as e:
        logger.error(f"Error navigating to order history: {e}")
        import traceback
        logger.error(f"Traceback: {traceback.format_exc()}")
        return False


def click_order_details_button(driver):
    try:
        wait = WebDriverWait(driver, 10)
        
        detail_links = wait.until(
            EC.presence_of_all_elements_located((By.CSS_SELECTOR, "a[data-link-action='view-order-details']"))
        )
        details_button = detail_links[0]
        details_button.click()
        return True
        
    except Exception:
        logger.error("Error clicking order details button")
        return False


def click_download_invoice(driver):
    try:
        wait = WebDriverWait(driver, 10)
        invoice_link = wait.until(
            EC.presence_of_element_located((By.CSS_SELECTOR, "a[data-testid='download-invoice']"))
        )

        wait.until(EC.element_to_be_clickable((By.CSS_SELECTOR, "a[data-testid='download-invoice']")))
        invoice_link.click()
        logger.info("Download invoice clicked")
        logger.info("Waiting 10 seconds for download to complete")
        time.sleep(3)
        return True
    except Exception:
        logger.error("Error clicking download invoice")
        return False


def get_order_status(driver):
    wait = WebDriverWait(driver, 10)
        
    status_label = wait.until(
        EC.presence_of_element_located((By.CSS_SELECTOR, "span[data-testid='order-status']"))
    )
    status_text = status_label.text.strip()
    
    if not status_text:
        status_text = "(no status text found)"
    
    logger.info(f"Order status: {status_text}")
    return status_text



def run_test(driver):
    logger.info("Starting order status check...")
    
    if not navigate_to_order_history(driver):
        return 
    
    wait_for_page_load(driver, timeout=2)
    get_order_status(driver)
    # Attempt to click invoice download if available
    click_download_invoice(driver)
    return 