@BaseCase @Admin @Staff @Permission @mcPermissionControl @fixture-message-center-v3
Feature: Admin permission setting control message center v3
  As a user of Shopline
  I want to go to Admin Panel Page and manage my staff
  So that I can use the side menu to navigate to corresponding pages

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click no thanks button

  @EAT-1243
  Scenario: Admin permission setting control message center v3
    Given I am on Staff Setting Add Page
    And I fill qa email to email field
    And I click on add button
    Then I should be redirected to Edit Staff Permissions Page
    When I click on switch tab button included "Message Center"
    And I click on message checkbox included "View"
    And I scroll down to update button
    And I click on update button
    Then I should be redirected to Staff Setting Page
    When I select Logout of User Menu

    Then I should be redirected to Admin Login Page
    And I fill qa email to email field
    And I fill qa password to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click no thanks button
    Then I should see successful login

    Then I should be redirected to Unauthorized Page
    When I click on side menu items included 'Message Center'
    Then I switch to 2 of tabs
    Then I should be redirected to Message Center Page

    Then ---ROLL BACK---
    Then I switch to 1 of tabs
    Then I should be redirected to Unauthorized Page
    When I select Logout of User Menu
    Then I should be redirected to Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    And I should see successful login
    Given I am on Staff Setting Page
    Then I should see edit button
    And I click on edit button
    Then I should be redirected to Edit Staff Permissions Page
    When I click on switch tab button included "Message Center"
    And I click on message checkbox included "View"
    And I scroll down to update button
    And I click on update button
    Then I should be redirected to Staff Setting Page
    And I click on delete button
    Then I should see alert
    And I click on alert checkbox
    And I click on ok button
