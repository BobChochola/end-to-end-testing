@PostTest @PreTest @BaseCase @Admin @Delivery @711 @deliveryAssertHK711-staff
Feature: HK Delivery should not contain 711(staff)
  As a merchant
  I want to create new Custom delivery
  So that I can have different delivery for my shoppers

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

  @EAT-1039-8 @baseLocation-HK
  Scenario: HK Delivery should not contain 711(staff)
    Given I am on Staff Setting Page
    And I click on add button
    Then I should be redirected to Staff Setting Add Page
    And I fill 'shoplineqa@gmail.com' to email field
    And I click on add button
    Then I should be redirected to Edit Staff Permissions Page
    When I click on unchecked give full access checkbox
    And I click on update button
    Then I should be redirected to Staff Setting Page
    When I select Logout of User Menu
    Then I should be redirected to Admin Login Page
    And I fill 'shoplineqa@gmail.com' to email field
    And I fill '12345678' to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click no thanks button
    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Pick-up' of delivery type dropdown
    When I click on shipping from edit button
    Then I should see popover
    When I click on popover row of country included 'Taiwan'
    When I click on popover tab included 'Shipping To'
    When I click on popover row of country included 'Taiwan'
    And I click on popover ok button
    Then shipping from edit button should contain 'Taiwan'
    Then shipping to edit button should contain 'Taiwan'
    When I click on search provider button
    Then I should see popover
    Then popover should not contain '7-11'
    Then ---ROLL BACK---
    Given I am on Setup Guide Page
    When I select Logout of User Menu
    Then I should be redirected to Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click no thanks button
    Given I am on Staff Setting Page
    Then I should see edit button
    And I click on edit button
    Then I should be redirected to Edit Staff Permissions Page
    When I click on give full access checkbox
    And I click on update button
    Then I should be redirected to Staff Setting Page
    When I click on delete button
    Then I should see alert
    And I click on alert checkbox
    And I click on ok button
    Then staff should not contain 'shoplineqa@gmail.com'