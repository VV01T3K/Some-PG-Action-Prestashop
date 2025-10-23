from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from time import sleep


def main():
    google_url = "https://www.google.com"

    options = webdriver.ChromeOptions()
    options.add_argument("--no-sandbox")
    options.add_argument("--disable-dev-shm-usage")

    driver = webdriver.Remote(command_executor="http://localhost:4444", options=options)

    try:
        print(f"Opening Google at {google_url}...")
        driver.get(google_url)

        print("Page loaded successfully")
        print(f"Page title: {driver.title}")

        try:
            WebDriverWait(driver, 10).until(
                EC.presence_of_element_located((By.NAME, "q"))
            )
            sleep(5)
            print("Found Google search element")
        except Exception:
            print("Could not find search element, but page loaded")

        print("\nSelenium can access Google!")

    finally:
        driver.quit()
        print("Browser closed")


if __name__ == "__main__":
    main()
