*** Settings ***
Resource   ../pages/common.resource
Resource   ../pages/inventory.resource
Resource   ../pages/login.resource 
Resource    ../pages/checkout.resource
Test Setup        user open the saucedemo apps
Test Teardown     Browser automatically close    

*** Test Cases ***
Scenario: Verify user should be login using valid username and password
    FOR    ${users}    IN    @{valid_username}
        Given user open the saucedemo apps
        When user input correct username    ${users}
        And user input correct password    secret_sauce
        And User click the login button
        Then User should go to inventory page
        And Browser automatically close
    END
    

Scenario: Verify user should be failed login with empty username and empty password
    # Given user open the saucedemo apps
    When user doesn't fill username
    And user doesn't fill password 
    And User click the login button
    Then User can't login to system because username and password are empty
    # And Browser automatically close

Scenario: Verify user should be failed login without input username
    # Given user open the saucedemo apps
    When user doesn't fill username
    And user input correct password    secret_sauce
    And User click the login button
    Then User can't login to system because username only is empty
    # And Browser automatically close

Scenario: Verify user should be failed login without input password
    # Given user open the saucedemo apps
    When user input correct username    standard_user
    And user doesn't fill password
    And User click the login button
    Then User can't login to system because password only is empty
    # And Browser automatically close

Scenario: Verify user should be failed login using random username and random password
    # Given user open the saucedemo apps
    When user input random username    pokemon
    And user input random password    pikachu
    And User click the login button
    Then User can't login to system because username and password are invalid
    # And Browser automatically close

Scenario: Verify user should be failed login using locked_out_user
    # Given user open the saucedemo apps
    When user input random username    locked_out_user
    And user input correct password    secret_sauce
    And User click the login button
    Then User can't login to system because user has been locked out
    # And Browser automatically close
