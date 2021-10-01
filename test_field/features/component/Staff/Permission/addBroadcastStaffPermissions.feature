@BaseCase @Admin @CRM @SSO @Staff @Permission @addBroadcastStaffPermissions
@fixture-preset-broadcast @EAT-449
Feature: Add Broadcast staff permissions
  As a merchant
  I want my staff can view or edit or add

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

  Scenario: Staff with view permission / view + add permission
    Given I am on Staff Setting Add Page
    And I fill qa email to email field
    And I click on add button
    Then I should be redirected to Edit Staff Permissions Page
    Then 9th checkbox group should contain "Broadcast Center"
    And I click on broadcast permission checkbox included "View"
    And I scroll down to update button
    And I click on update button
    Then I should be redirected to Staff Setting Page
    And I click on User Menu
    And I click on Logout
    Then I should be redirected to Admin Login Page
    And I fill qa email to email field
    And I fill qa password to password field
    And I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

    Given I am on Broadcast Center Page
    Then I should see broadcast list
    When I click on view button included "View"
    Then I should be redirected to Broadcast View Page
    Given I am on Broadcast Center Page
    When I select new message dropdown option included "Email" of new message dropdown
    Then I should see block message

    When I click on User Menu
    And I click on Logout
    Then I should be redirected to Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button

    Given I am on Staff Setting Page
    When I click on 1st edit button
    Then I should be redirected to Edit Staff Permissions Page
    When I click on broadcast permission checkbox included "Add/Edit"
    And I scroll down to update button
    And I click on update button
    Then I should be redirected to Staff Setting Page
    And I click on User Menu
    And I click on Logout
    Then I should be redirected to Admin Login Page
    And I fill qa email to email field
    And I fill qa password to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

    Given I am on Broadcast Center Page
    Then I should see broadcast list
    When I click on view button included "View"
    Then I should be redirected to Broadcast View Page
    Given I am on Broadcast Center Page
    When I select new message dropdown option included "Email" of new message dropdown
    Then I should be redirected to Broadcast Center Create Page

    And ---ROLL BACK---
    And I click on User Menu
    And I click on Logout
    Then I should be redirected to Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

    Given I am on Staff Setting Page
    And I click on 1st edit button
    Then I should be redirected to Edit Staff Permissions Page
    And I click on broadcast permission checkbox included "Add/Edit"
    And I wait for 3 seconds for loading
    And I click on broadcast permission checkbox included "View"
    And I scroll down to update button
    And I click on update button
    Then I should be redirected to Staff Setting Page
    And I click on 1st delete button
    Then I should see alert
    And I click on alert checkbox
    And I click on ok button
    Then staff should not contain qa email