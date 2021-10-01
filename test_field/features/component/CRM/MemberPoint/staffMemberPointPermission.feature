@BaseCase @Admin @CRM @MemberPoint @Staff @staffMemberPointPermission @EAT-983
Feature: Check the staff permission of member point
  As a user of Shopline
  I want to check the permission status in member point page after change the staff permission

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
    Given I am on Staff Setting Add Page
    And I fill qa email to email field
    And I click on add button
    Then I should be redirected to Edit Staff Permissions Page
    When I click on basic setting included 'Member Points'
    Then member points checkbox should be checked
    And I scroll down to update button
    And I click on update button
    Then I should be redirected to Staff Setting Page
    When I select Logout of User Menu
    Then I should be redirected to Admin Login Page
    And I fill qa email to email field
    And I fill qa password to password field
    And I click on login button
    And I should see successful login
    Given I am on Member Points Setting Page
    When I check and click member point toggle off
    Then member point toggle should be checked
    When I fill '10' to amount field
    When I fill '1' to point field
    When I fill '1' to point assign day field
    And I select month dropdown option included 'December' of month dropdown
    And I select date dropdown option included '31' of date dropdown
    And I fill '1' to point assign day field
    And I fill 'member point' to point rule field
    And I click on update button
    Then I should see alert
    When I fill '1' to amount field
    And I fill '0' to point field
    And I fill '0' to point assign day field
    And I fill '' to point rule field
    When I click on member point toggle
    Then I should see popover
    When I click on popover disable button
    Then member point toggle should not be checked
    And I click on update button
    Then I should see alert
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
    When I click on basic setting included 'Member Points'
    Then member points checkbox should not be checked
    And I click on update button
    Then I should be redirected to Staff Setting Page
    When I select Logout of User Menu
    Then I should be redirected to Admin Login Page
    And I fill qa email to email field
    And I fill qa password to password field
    And I click on login button
    And I should see successful login

    Then I should be redirected to Unauthorized Page
    When I click on side menu items included 'Customer Management'
    When I click on side submenu items included 'Member Points'
    Then I should be redirected to Unauthorized Page
    Then ---ROLL BACK---
    When I select Logout of User Menu
    Then I should be redirected to Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    And I should see successful login
    Given I am on Staff Setting Page
    And I click on delete button
    Then I should see alert
    And I click on alert checkbox
    And I click on ok button
