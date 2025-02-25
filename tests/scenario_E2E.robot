*** Settings ***
Resource    ../pages/common.resource
Resource    ../pages/inventory.resource
# Resource    ../pages/login.resource
Resource    ../pages/cart.resource
Resource    ../pages/checkout.resource
Resource    ../pages/finish.resource

*** Tasks ***
Running Automation from login to checkout
    user open the saucedemo apps   
    user input correct username        standard_user
    user input correct password        secret_sauce
    user click the login button
    User should go to inventory page
    User add 3 products to cart
    User click cart to check selected items
    User click checkout button
    User input First Name            Hanif
    User input Last Name             Rahmatullah
    User input ZIP/Postal Code       10110
    User click continue button
    User check all items and price in this page
    User click Finish button
