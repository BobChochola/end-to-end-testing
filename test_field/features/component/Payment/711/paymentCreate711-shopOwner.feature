@PostTest @PreTest @BaseCase @Admin @Payment @711 @paymentCreate711-shopOwner
Feature: 7-11 Payment Create via shop owner
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

  @C2105 @C2105-3 @EAT-1039-11
  Scenario: Create payment via shop owner - Pay on 7-11 Store Pickup (C2C)
    Given I am on Payment Setting Page
    When I click on add button
    Then I should be redirected to Payment Create Page
    Then payment type dropdown should not contain '7-11'