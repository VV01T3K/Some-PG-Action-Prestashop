import logging
from selenium.webdriver.support.ui import WebDriverWait

logger = logging.getLogger(__name__)


def wait_for_page_load(driver, timeout=10):
    try:
        WebDriverWait(driver, timeout).until(
            lambda d: d.execute_script("return document.readyState") == "complete"
        )
    except Exception as e:
        logger.debug(f"Page load wait timed out: {e}")
