*** Settings ***
Library      SeleniumLibrary
Resource     ../pages/login.resource
Library      ../libs/api_helper.py

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

Get List All Items in this api
    GET List Items using API

Insert new item
    [Arguments]    &{data}
    ${id}=    Create an Item using API    ${data}
    RETURN    ${id}   

# Hit Api to get Items
#     [Arguments]    ${id}
#     GET Specific Item using API    ${id}

Get specific Items
    [Arguments]    ${id}
    ${result}    GET Specific Item using API    ${id}
    Log    ${result}

Update all items
    [Arguments]    ${id}    &{data}
    Update All Items using API    ${id}    ${data}

Update single item
    [Arguments]    ${id}    &{data}
    Patch Single Items using API    ${id}    ${data}

Delete Data
    [Arguments]    ${id}
    Delete Data with API    ${id}