*** Settings ***
Library      SeleniumLibrary
Variables    ../locators/inventory.py

*** Keywords ***
User should go to inventory page
    Element Text Should Be        ${title_txt}             Swag Labs
    Element Text Should Be        ${title_prod_txt}        Products
    Select From List By Label     ${select_sort}           Price (high to low)
User add 3 products to cart
    Click Element                ${fleece_jacket_btn}
    Click Element                ${backpack_btn}
    Click Element                ${bolt_tshirt_btn}
    Element Text Should Be       ${number_cart}            3