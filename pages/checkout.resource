*** Settings ***
Library        SeleniumLibrary
Variables      ../locators/checkout.py

*** Keywords ***
User click checkout button
    Click Element            ${checkout_btn}
    Element Text Should Be   ${checkout_title_text}    Checkout: Your Information
User input First Name
    [Arguments]    ${first_name}
    Input Text     ${first_name_input}    ${first_name}
User input Last Name
    [Arguments]    ${last_name}
    Input Text     ${last_name_input}    ${last_name}
User input ZIP/Postal Code
    [Arguments]    ${postal_code}
    Input Text     ${postal_code_input}    ${postal_code}
User click continue button
    Click Element    ${continue_btn}