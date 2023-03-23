
#import webdriver
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
import time
from behave import given, when, then


@given(u'I launch the Chrome Browser')
def step_impl(context):
    context.driver = webdriver.Chrome()


@when(u'I open Baseball Reference Website')
def step_impl(context):
    context.driver.get("https://www.baseball-reference.com/")
    time.sleep(1)


@when(u'we search "{name}" in search bar')
def step_impl(context, name):
    my_element = context.driver.find_element(By.NAME, "search")
    my_element.send_keys(name)
    my_element.send_keys(Keys.RETURN)
    time.sleep(1)


@then(u'{name} is in title tag of website')
def step_impl(context, name):
    webtitle = context.driver.find_elements(By.TAG_NAME, "span")
    playerFound = False

    for e in webtitle:
        if str(name) == e.text:
            playerFound = True

    assert playerFound
    context.driver.close()
    time.sleep(2)