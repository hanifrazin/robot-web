*** Settings ***
Library        SeleniumLibrary
Variables      ../locators/finish.py

*** Keywords ***
User check all items and price in this page
    Element Text Should Be    ${fix_items1}        Sauce Labs Fleece Jacket
    Element Text Should Be    ${fix_items2}        Sauce Labs Backpack
    Element Text Should Be    ${fix_items3}        Sauce Labs Bolt T-Shirt
    Element Text Should Be    ${payment_info}      SauceCard #31337
    Element Text Should Be    ${ship_info}         Free Pony Express Delivery!
    Element Text Should Be    ${price_total}       Total: $103.65
User click Finish button
    Click Element                 ${finish_btn} 
    Element Text Should Be        ${success_co_text}        Checkout: Complete!
    Element Text Should Be        ${thanks_text}            Thank you for your order!
    Element Text Should Be        ${msg_text}               Your order has been dispatched, and will arrive just as fast as the pony can get there!
    Element Should Be Visible     ${ceklis_img}