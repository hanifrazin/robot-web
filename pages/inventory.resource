*** Settings ***
Library      SeleniumLibrary
Variables    ../locators/inventory.py

*** Keywords ***
User should go to inventory page
    Element Text Should Be    ${title_txt}             Swag Labs
    Element Text Should Be    ${title_prod_txt}        Products

add product saucelabs backpack
    Click Element            ${backpack_add2cart_btn}