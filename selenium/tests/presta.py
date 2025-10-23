from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import os
from time import sleep


def main():
    prestashop_domain = os.getenv("SHOP_DOMAIN", "shop.pg.wojtecs.com")
    prestashop_url = f"https://{prestashop_domain}"

    options = webdriver.ChromeOptions()
    options.add_argument("--no-sandbox")
    options.add_argument("--disable-dev-shm-usage")
    options.add_argument("--ignore-certificate-errors")
    options.add_argument("--ignore-ssl-errors")
    options.add_argument("--start-maximized")

    driver = webdriver.Remote(command_executor="http://localhost:4444", options=options)

    try:
        print(f"Opening PrestaShop at {prestashop_url}...")
        driver.get(prestashop_url)

        print("Page loaded successfully")
        print(f"Page title: {driver.title}")

        try:
            WebDriverWait(driver, 10).until(
                EC.presence_of_element_located((By.CLASS_NAME, "search"))
            )
            print("Found PrestaShop element")
        except Exception:
            print("Could not find search element, but page loaded")

        print("Waiting for 5 seconds to test the page in VNC...")
        sleep(5)
        print("\nSelenium can access your PrestaShop instance!")

    finally:
        driver.quit()
        print("Browser closed")


if __name__ == "__main__":
    main()
