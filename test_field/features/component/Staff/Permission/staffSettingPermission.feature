@BaseCase @Admin @SSO @Staff @Permission @staffSettingPermission @EAT-486
Feature: Staff setting permission check
  As a merchant
  I want to open api permission for product & order
  So that I can see new api permissions under product and order section

  Background:
    Given I am on Admin Login Page
    When I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

  @EAT-486-1
  Scenario: Check "Add/Edit" or "Delete" is mark, "View" will be marked as well.
    Given I am on Staff Setting Page
    And I click on add button
    Then I should be redirected to Staff Setting Add Page
    And I fill qa email to email field
    And I click on add button
    Then I should be redirected to Edit Staff Permissions Page
    When I scroll down the page till the bottom
    And I click on update button
    Then I should be redirected to Staff Setting Page
    Then I Refresh
    Then I should see edit button
    When I click on edit button
    Then I should be redirected to Edit Staff Permissions Page
    Then I Refresh
    Then I should see checkbox group
    Then 33th checkbox group should contain 'Permission & Security'
    Then 33th checkbox group should contain "Warning: this will allow this staff member to change other staff member's permissions"
    When I click on staff setting label included 'Permission & Security'
    Then I scroll down to staff setting label
    Then 2nd staff setting checkbox should be disabled
    Then 3rd staff setting checkbox should be disabled
    Then 4th staff setting checkbox should be disabled
    When I click on staff setting label included 'Permission & Security'
    And I click on staff setting label included 'Add/Edit'
    Then 2nd staff setting checkbox should be checked
    Then 3rd staff setting checkbox should be checked
    When I click on staff setting label included 'View'
    Then 2nd staff setting checkbox should not be checked
    Then 3rd staff setting checkbox should not be checked
    When I click on staff setting label included 'Delete'
    Then 2nd staff setting checkbox should be checked
    Then 4th staff setting checkbox should be checked
    When I click on staff setting label included 'View'
    Then 2nd staff setting checkbox should not be checked
    Then 4th staff setting checkbox should not be checked
    And ---ROLL BACK---
    Given I am on Staff Setting Page
    And I click on delete button
    Then I should see alert
    And I click on alert checkbox
    And I click on ok button
    Then staff should not contain qa email

  @EAT-486-2
  Scenario: View only staff setting
    Given I am on Staff Setting Page
    And I click on add button
    Then I should be redirected to Staff Setting Add Page
    And I fill qa email to email field
    And I click on add button
    Then I should be redirected to Edit Staff Permissions Page
    When I scroll down the page till the bottom
    And I click on update button
    Then I should be redirected to Staff Setting Page
    Then I Refresh
    Then I should see edit button
    When I click on edit button
    Then I should be redirected to Edit Staff Permissions Page
    Then I should see checkbox group
    Then I scroll down to staff setting label
    When I click on staff setting label included 'View'
    Then I scroll down to update button
    And I click on update button
    Then I should be redirected to Staff Setting Page
    When I select Logout of User Menu
    Then I should be redirected to Admin Login Page
    When I fill qa email to email field
    And I fill qa password to password field
    And I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button
    Given I am on Staff Setting Page
    When I click on add button
    Then I should be redirected to Unauthorized Page
    And ---ROLL BACK---
    When I select Logout of User Menu
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
    When I click on edit button
    Then I should be redirected to Edit Staff Permissions Page
    Then I should see checkbox group
    Then I scroll down to staff setting label
    When I click on staff setting label included 'View'
    Then I scroll down to update button
    And I click on update button
    Then I should be redirected to Staff Setting Page
    When I click on delete button
    Then I should see alert
    And I click on alert checkbox
    And I click on ok button
    Then staff should not contain qa email