*** Settings ***
Library      SeleniumLibrary
Resource     ../pages/login.resource

*** Keywords ***
user open the saucedemo apps
    Set Selenium Implicit Wait    10
    Open Browser    https://saucedemo.com    chrome
    Maximize Browser Window

user success login to sauce demo
    user open the saucedemo apps
    user input correct username    standard_user
    user input correct password    secret_sauce
    user click the login button

Browser automatically close
    Sleep    2
    Close All Browsers