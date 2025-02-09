*** Settings ***
Library    SeleniumLibrary
Variables    ../locators/login.py

*** Keywords ***
user input correct username
    [Arguments]    ${username}
    Input Text     ${username_tb}    ${username}
user input correct password
    [Arguments]        ${password}
    Input Password     ${password_tb}    ${password}
user click the login button
    Click Element    ${login_btn}