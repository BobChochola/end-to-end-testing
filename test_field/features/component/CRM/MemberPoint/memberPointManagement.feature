@BaseCase @Admin @CRM @MemberPoint @memberPointManagement @EAT-982
Feature: Check point setting logic on member point setting page
  As a user of Shopline
  I want to create member point promotion for my customer

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

  Scenario: Check the member point setting
    Given I am on Setup Guide Page
    When I click on side menu items included 'Customer Management'
    When I click on side submenu items included 'Member Points'
    Then I should be redirected to Member Points Setting Page
    When I check and click member point toggle off
    Then member point toggle should be checked
    When I fill '' to amount field
    And I fill '' to point field
    And I fill '' to point assign day field
    When I click on update button
    Then I should see 3 error message
    Then 1st error message should contain 'Amount is required'
    Then 2nd error message should contain 'Point is required'
    Then 3rd error message should contain 'Day is required'
    When I fill '1000000000' to amount field
    Then 1st error message should contain 'Amount is invalid'
    When I fill '1000000000' to point field
    Then 2nd error message should contain 'Point is invalid'
    When I fill '12.3' to amount field
    Then 1st error message should contain 'Amount is invalid'
    When I fill '12.3' to point field
    Then 2nd error message should contain 'Point is invalid'
    When I fill '1000' to point assign day field
    Then 3rd error message should contain 'Day is too long'
    When I fill '1.2' to point assign day field
    Then 3rd error message should contain 'Day is invalid'

    When I fill '10' to amount field
    And I fill '1' to point field
    And I select month dropdown option included 'December' of month dropdown
    And I select date dropdown option included '31' of date dropdown
    And I fill '1' to point assign day field
    And I fill 'member point' to point rule field
    Then word limit should contain '1188'
    And I click on update button
    Then I should see alert

    And ---ROLL BACK---
    Given I am on Member Points Setting Page
    When I fill '1' to amount field
    And I fill '0' to point field
    And I fill '0' to point assign day field
    And I fill '' to point rule field
    And I click on update button
    Then I should see alert
    When I click on member point toggle
    Then I should see popover
    When I click on popover disable button
    Then member point toggle should not be checked