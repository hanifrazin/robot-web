*** Settings ***
Resource   ../pages/common.resource
Resource   ../pages/inventory.resource
Resource   ../pages/login.resource 

*** Test Cases ***
Verify user should be login using valid username and password
    Given user open the saucedemo apps
    When user input correct username    standard_user
    And user input correct password    secret_sauce
    And User click the login button
    Then User should go to inventory page