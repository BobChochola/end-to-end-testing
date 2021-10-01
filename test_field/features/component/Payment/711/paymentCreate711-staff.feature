@PostTest @PreTest @BaseCase @Admin @Payment @711 @paymentCreate711-staff
Feature: 7-11 Payment Create via staff
  As a merchant
  I want to create new payment
  So that I can have different payments for my shoppers

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

  @EAT-1039-12
  Scenario: Create payment via shop owner - Pay on 7-11 Store Pickup (C2C)
    Given I am on Payment Setting Page
    When I scroll down to add button
    When I click on add button
    Then I should be redirected to Payment Create Page
    Then payment type dropdown should not contain '7-11' 
    And ---ROLL BACK---
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