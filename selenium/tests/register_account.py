import logging
import random
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from utils import wait_for_page_load

logger = logging.getLogger(__name__)

FIRST_NAMES = [
    "Jan", "Piotr", "Andrzej", "Stanisław", "Jerzy",
    "Maria", "Anna", "Barbara", "Krystyna", "Teresa"
]

LAST_NAMES = [
    "Kowalski", "Nowak", "Wojcik", "Lewandowski", "Dabrowski",
    "Wisniewski", "Kaminski", "Zielinski", "Krol", "Szymanski"
]


def click_login_button(driver):
    try:
        wait = WebDriverWait(driver, 10)
        
        # Find and click the login button
        login_button = wait.until(
            EC.element_to_be_clickable((By.XPATH, "//a[@href='https://shop.pg.wojtecs.com/moje-konto']"))
        )
        driver.execute_script("arguments[0].click();", login_button)
        
        logger.info("🔑 Clicked login button")
        return True
    except Exception as e:
        logger.error(f"❌ Error clicking login button: {e}")
        return False


def click_register_link(driver):
    try:
        wait = WebDriverWait(driver, 10)
        
        register_link = wait.until(
            EC.element_to_be_clickable((By.XPATH, "//a[@data-link-action='display-register-form']"))
        )
        driver.execute_script("arguments[0].click();", register_link)
        
        logger.info("📝 Clicked register link")
        return True
    except Exception as e:
        logger.error(f"❌ Error clicking register link: {e}")
        return False


def select_gender(driver, gender_id):
    try:
        wait = WebDriverWait(driver, 10)
        
        gender_radio = wait.until(
            EC.presence_of_element_located((By.XPATH, f"//input[@name='id_gender' and @value='{gender_id}']"))
        )
        
        driver.execute_script("arguments[0].scrollIntoView(true);", gender_radio)
        wait_for_page_load(driver, timeout=1)
        
        driver.execute_script("arguments[0].click();", gender_radio)
        
        gender_label = "Pan" if gender_id == 1 else "Pani"
        logger.info(f"✅ Selected gender: {gender_label}")
        return True
    except Exception as e:
        logger.error(f"❌ Error selecting gender: {e}")
        import traceback
        logger.debug(traceback.format_exc())
        return False


def fill_firstname(driver, firstname):
    try:
        wait = WebDriverWait(driver, 10)
        
        firstname_field = wait.until(
            EC.presence_of_element_located((By.ID, "field-firstname"))
        )
        firstname_field.clear()
        firstname_field.send_keys(firstname)
        
        return True
    except Exception as e:
        logger.error(f"❌ Error filling first name: {e}")
        return False


def fill_lastname(driver, lastname):
    try:
        wait = WebDriverWait(driver, 10)
        
        lastname_field = wait.until(
            EC.presence_of_element_located((By.ID, "field-lastname"))
        )
        lastname_field.clear()
        lastname_field.send_keys(lastname)
        
        return True
    except Exception as e:
        logger.error(f"❌ Error filling last name: {e}")
        return False


def fill_email(driver, email):
    try:
        wait = WebDriverWait(driver, 10)
        
        email_field = wait.until(
            EC.presence_of_element_located((By.NAME, "email"))
        )
        email_field.clear()
        email_field.send_keys(email)
        
        return True
    except Exception as e:
        logger.error(f"❌ Error filling email: {e}")
        return False


def fill_password(driver, password):
    try:
        wait = WebDriverWait(driver, 10)
        
        password_field = wait.until(
            EC.presence_of_element_located((By.NAME, "password"))
        )
        password_field.clear()
        password_field.send_keys(password)
        
        return True
    except Exception as e:
        logger.error(f"❌ Error filling password: {e}")
        return False


def fill_birthdate(driver, birthdate):
    try:
        wait = WebDriverWait(driver, 10)
        
        birthdate_field = wait.until(
            EC.presence_of_element_located((By.NAME, "birthday"))
        )
        birthdate_field.clear()
        birthdate_field.send_keys(birthdate)
        
        return True
    except Exception as e:
        logger.error(f"❌ Error filling birthdate: {e}")
        return False


def accept_customer_privacy(driver):
    try:
        wait = WebDriverWait(driver, 10)
        
        try:
            privacy_checkboxes = wait.until(
                EC.presence_of_all_elements_located((By.NAME, "customer_privacy"))
            )
            
            for idx, checkbox in enumerate(privacy_checkboxes, 1):
                driver.execute_script("arguments[0].click();", checkbox)
        except Exception as e:
            logger.debug(f"Could not find customer_privacy checkboxes: {e}")
        
        try:
            psgdpr_checkboxes = wait.until(
                EC.presence_of_all_elements_located((By.NAME, "psgdpr"))
            )
            
            for idx, checkbox in enumerate(psgdpr_checkboxes, 1):
                driver.execute_script("arguments[0].click();", checkbox)
        except Exception as e:
            logger.debug(f"Could not find psgdpr checkboxes: {e}")
        
        logger.info("✅ All required checkboxes accepted")
        return True
    except Exception as e:
        logger.error(f"❌ Error accepting privacy policies: {e}")
        return False


def submit_registration(driver):
    try:
        wait = WebDriverWait(driver, 10)
        
        submit_button = wait.until(
            EC.element_to_be_clickable((By.XPATH, "//button[@data-link-action='save-customer']"))
        )
        driver.execute_script("arguments[0].click();", submit_button)
        
        logger.info("✅ Registration submitted")
        return True
    except Exception as e:
        logger.error(f"❌ Error submitting registration: {e}")
        return False


def click_login_to_verify(driver):
    try:
        logger.info("🔐 Clicking login button to verify account...")
        wait = WebDriverWait(driver, 10)
        
        login_button = wait.until(
            EC.element_to_be_clickable((By.XPATH, "//a[@href='https://shop.pg.wojtecs.com/moje-konto']"))
        )
        driver.execute_script("arguments[0].click();", login_button)
        
        logger.info("✅ Login button clicked")
        return True
    except Exception as e:
        logger.error(f"❌ Error clicking login button: {e}")
        return False


def fill_login_email(driver, email):
    try:
        wait = WebDriverWait(driver, 10)
        
        email_field = wait.until(
            EC.presence_of_element_located((By.ID, "field-email"))
        )
        email_field.clear()
        email_field.send_keys(email)
        
        logger.info(f"✅ Filled login email: {email}")
        return True
    except Exception as e:
        logger.error(f"❌ Error filling login email: {e}")
        return False


def fill_login_password(driver, password):
    try:
        wait = WebDriverWait(driver, 10)
        
        password_field = wait.until(
            EC.presence_of_element_located((By.ID, "field-password"))
        )
        password_field.clear()
        password_field.send_keys(password)
        
        logger.info(f"✅ Filled login password: {password}")
        return True
    except Exception as e:
        logger.error(f"❌ Error filling login password: {e}")
        return False


def submit_login(driver):
    try:
        wait = WebDriverWait(driver, 10)
        
        try:
            submit_button = wait.until(
                EC.element_to_be_clickable((By.XPATH, "//button[@data-link-action='sign-in']"))
            )
            logger.info("Found login button via data-link-action")
        except:
            try:
                submit_button = wait.until(
                    EC.element_to_be_clickable((By.XPATH, "//button[contains(text(), 'Zaloguj')]"))
                )
                logger.info("Found login button via text")
            except:
                submit_button = wait.until(
                    EC.element_to_be_clickable((By.XPATH, "//form//button[@type='submit']"))
                )
                logger.info("Found login button via form submit")
        
        driver.execute_script("arguments[0].click();", submit_button)
        
        logger.info("✅ Login submitted")
        return True
    except Exception as e:
        logger.error(f"❌ Error submitting login: {e}")
        import traceback
        logger.debug(traceback.format_exc())
        return False


def run_test(driver):
    wait = WebDriverWait(driver, 10)
    
    try:
        logger.info("🚀 Starting account registration test...")
        
        if not click_login_button(driver):
            logger.warning("⚠️ Failed to click login button")
            return {"status": "failed", "reason": "Could not click login button"}
        
        wait.until(EC.presence_of_element_located((By.XPATH, "//a[@data-link-action='display-register-form']")))
        
        if not click_register_link(driver):
            logger.warning("⚠️ Failed to click register link")
            return {"status": "failed", "reason": "Could not click register link"}
        
        wait.until(EC.presence_of_element_located((By.ID, "field-firstname")))
        
        gender_id = random.choice([1, 2])
        if not select_gender(driver, gender_id):
            logger.warning("⚠️ Failed to select gender")
            return {"status": "failed", "reason": "Could not select gender"}
        
        # Generate random name and surname
        firstname = random.choice(FIRST_NAMES)
        lastname = random.choice(LAST_NAMES)
        # Remove Polish characters from email (ASCII only)
        firstname_ascii = firstname.replace('ł', 'l').replace('ó', 'o').replace('ę', 'e').replace('ą', 'a').replace('ć', 'c').replace('ń', 'n').replace('ś', 's').replace('ź', 'z').replace('ż', 'z')
        lastname_ascii = lastname.replace('ł', 'l').replace('ó', 'o').replace('ę', 'e').replace('ą', 'a').replace('ć', 'c').replace('ń', 'n').replace('ś', 's').replace('ź', 'z').replace('ż', 'z')
        email = f"{firstname_ascii.lower()}.{lastname_ascii.lower()}.{random.randint(1000, 9999)}@test.com"
        # Password must be at least 5 characters and include letters and numbers
        password = f"Pass{random.randint(10000, 99999)}"
        year = random.randint(1980, 2005)
        month = random.randint(1, 12)
        day = random.randint(1, 28)
        birthdate = f"{year:04d}-{month:02d}-{day:02d}"
        
        logger.info(f"📋 Registration details: {firstname} {lastname}, {email}")
        logger.info(f"🔐 Password: {password}")  # Display password for debugging
        
        # Fill form fields
        if not fill_firstname(driver, firstname):
            return {"status": "failed", "reason": "Could not fill first name"}
        
        if not fill_lastname(driver, lastname):
            return {"status": "failed", "reason": "Could not fill last name"}
        
        if not fill_email(driver, email):
            return {"status": "failed", "reason": "Could not fill email"}
        
        if not fill_password(driver, password):
            return {"status": "failed", "reason": "Could not fill password"}
        
        if not fill_birthdate(driver, birthdate):
            return {"status": "failed", "reason": "Could not fill birthdate"}
        
        if not accept_customer_privacy(driver):
            return {"status": "failed", "reason": "Could not accept privacy policy"}
        
        if not submit_registration(driver):
            return {"status": "failed", "reason": "Could not submit registration"}
       
        
        
        try:
            top_right_spans = driver.find_elements(By.XPATH, "//span[@class='hidden-sm-down']")
            logger.info(f"📍 Top right corner spans found: {len(top_right_spans)}")
            for idx, span in enumerate(top_right_spans):
                span_text = span.text.strip()
                logger.info(f"   Span {idx}: '{span_text}'")
        except Exception as e:
            logger.debug(f"Could not get top right corner content: {e}")
        
        return {
            "status": "success",
            "firstname": firstname,
            "lastname": lastname,
            "email": email,
            "gender": "Pan" if gender_id == 1 else "Pani",
            "password": password
        }
        
    except Exception as e:
        logger.error(f"❌ Test failed with error: {e}")
        return {"status": "failed", "reason": str(e)}
