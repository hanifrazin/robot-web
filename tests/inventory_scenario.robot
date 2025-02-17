*** Settings ***
Resource   ../pages/common.resource
Resource   ../pages/inventory.resource
Test Setup        user success login to sauce demo
Test Teardown     Browser automatically close 

*** Test Cases ***
Scenario: Verify user should be change sort option to Name (Z to A)
    When User should go to inventory page
    And user click the dropdown to select options is Name (Z to A)
    Then User should be see this page has been changed based on selected sort option
    