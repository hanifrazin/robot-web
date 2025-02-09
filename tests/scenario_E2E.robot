*** Settings ***
Resource    ../pages/common.resource
Resource    ../pages/inventory.resource
Resource    ../pages/login.resource

*** Tasks ***
Running Automation from login to checkout
    user open the saucedemo apps
    user input correct username    standard_user
    user input correct password    secret_sauce
    user click the login button
    add product saucelabs backpack