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
user doesn't fill username
    Clear Element Text     ${username_tb}
user input random username
    [Arguments]    ${rand_user}
    Input Text     ${username_tb}    ${rand_user}
user input random password
    [Arguments]        ${rand_pass}
    Input Password     ${password_tb}    ${rand_pass}
user doesn't fill password
    Clear Element Text     ${password_tb}  
User can't login to system because username and password are empty
    Element Text Should Be    ${msg_login_validation}    Epic sadface: Username is required
User can't login to system because username only is empty
    Element Text Should Be    ${msg_login_validation}    Epic sadface: Username is required
User can't login to system because password only is empty
    Element Text Should Be    ${msg_login_validation}    Epic sadface: Password is required
User can't login to system because username and password are invalid
    Element Text Should Be    ${msg_login_validation}    Epic sadface: Username and password do not match any user in this service
User can't login to system because user has been locked out
    Element Text Should Be    ${msg_login_validation}    Epic sadface: Sorry, this user has been locked out.


# Verify user should not be login using others invalid username
#     [Arguments]    ${username}    ${expected_result}
#     When User input username using invalid username 
#     And user input correct password                    secret_sauce
#     Then User should be see expected_result
# User input username using invalid username


