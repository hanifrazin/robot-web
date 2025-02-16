*** Settings ***
Library        SeleniumLibrary
Variables      ../locators/cart.py

*** Keywords ***
User click cart to check selected items
    Click Element            ${cart_btn}
    Element Text Should Be   ${cart_title}     Your Cart
    Element Text Should Be   ${cart_items1}    Sauce Labs Fleece Jacket
    Element Text Should Be   ${cart_items2}    Sauce Labs Backpack
    Element Text Should Be   ${cart_items3}    Sauce Labs Bolt T-Shirt
