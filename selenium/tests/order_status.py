import logging
import os
import time
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.common.exceptions import TimeoutException, NoSuchElementException, StaleElementReferenceException
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
            driver.execute_script("arguments[0].click();", user_menu)
            logger.info("User menu clicked")
            wait_for_page_load(driver, timeout=2)
        except TimeoutException:
            logger.error("Could not find user menu button")
            return False
        
        try:
            order_history_link = wait.until(
                EC.element_to_be_clickable((By.ID, "history-link"))
            )
            driver.execute_script("arguments[0].click();", order_history_link)
            logger.info("Order history link clicked")
            wait_for_page_load(driver)
        except TimeoutException:
            logger.error("Could not find order history link in menu")
            return False
        
        
        # try:
        #     wait.until(EC.presence_of_element_located((By.CSS_SELECTOR, "div.hidden.md\\:block table")))
        # except TimeoutException:
        #     logger.warning("⚠️ Table not found after waiting")
        
        # try:
        #     wait.until(EC.presence_of_element_located((By.CSS_SELECTOR, "div.hidden.md\\:block table")))
        #     wait.until(EC.presence_of_element_located((By.CSS_SELECTOR, "div.hidden.md\\:block td.text-sm-center.order-actions")))
        # except TimeoutException:
        #     logger.warning("⚠️ Order elements not found")
        #     return False
        
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
        
        driver.execute_script("arguments[0].scrollIntoView(true);", details_button)
        wait_for_page_load(driver, timeout=2)
        driver.execute_script("arguments[0].click();", details_button)
        logger.info("Order details of the last checkout")
        return True
        
    except Exception as e:
        logger.error(f"Error clicking order details button: {e}")
        import traceback
        logger.error(f"Traceback: {traceback.format_exc()}")
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
        time.sleep(10)
        return True
    except Exception as e:
        logger.error(f"Error clicking download invoice: {e}")
        return False


def get_order_status(driver):
    try:
        wait = WebDriverWait(driver, 10)
        
        status_label = wait.until(
            EC.presence_of_element_located((By.CSS_SELECTOR, "span[data-testid='order-status']"))
        )
        
        # Extract text content
        status_text = status_label.text.strip()
        if not status_text:
            status_text = driver.execute_script("return arguments[0].innerText;", status_label).strip()
        
        logger.info(f"Order status: {status_text}")
        return status_text
    except Exception as e:
        logger.error(f"Error getting order status: {e}")
        import traceback
        logger.error(f"Traceback: {traceback.format_exc()}")
        return None



def run_test(driver):
    try:
        logger.info("Starting order status check...")
        
        if not navigate_to_order_history(driver):
            return {"status": "failed", "reason": "Could not navigate to order history"}
        
        wait_for_page_load(driver, timeout=2)
        
        # if not click_order_details_button(driver):
        #     return {"status": "failed", "reason": "Could not click order details button"}
        
        # wait_for_page_load(driver)
        
        order_status = get_order_status(driver)
        
        if order_status is None:
            return {"status": "failed", "reason": "Could not retrieve order status"}

        # Attempt to click invoice download if available
        click_download_invoice(driver)
        
        
        return {
            "status": "success",
            "order_status": order_status
        }
        
    except Exception as e:
        logger.error(f"Order status check failed with error: {e}")
        import traceback
        logger.error(f"Traceback: {traceback.format_exc()}")
        return {"status": "failed", "reason": str(e)}
