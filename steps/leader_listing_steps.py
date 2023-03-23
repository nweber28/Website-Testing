
#import webdriver
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
import time
from behave import given, when, then


@given(u'that we have gone to {site}')
def testFunc(context, site):
    print(format(site))
    context.site = site
    print(context.site)


print("hello")


#
# driver = webdriver.Chrome()
#
# driver.get("https://www.baseball-reference.com/")
# driver.implicitly_wait(30)
# my_element = driver.find_element(By.NAME, "search")
#
# my_element.send_keys("Aaron Judge")
# my_element.send_keys(Keys.RETURN)

# @given('that we have gone to {site}')
# def step_impl(context, site):
#     context.site = site
#     context.browser = webdriver.Chrome()
#     if not site.startswith("http"):
#         site = "https://" + site
#     context.browser.get(site)
#     time.sleep(5)