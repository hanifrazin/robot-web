*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
user open the saucedemo apps
    Set Selenium Implicit Wait    10
    Open Browser    https://saucedemo.com    chrome
    Maximize Browser Window