@PostTest @PreTest @BaseCase @Admin @Payment @Paypal @paymentCreatePaypal @smokeTest
Feature: Payment Credit card or paypal Create Feature
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
    When I check and click exclude products panel close button
    When I check and click no thanks button

  @C2104 @C2104-1
  Scenario: Create payment - Credit card or paypal
    Given I am on Payment Setting Page
    When I click on add button
    Then I should be redirected to Payment Create Page
    When I select payment type dropdown option included 'PayPal Express' of payment type dropdown
    And I fill "(dirty data) PayPal Express" to name field
    And I fill Paypal email to paypal email field
    And I fill API Username to api username field
    And I fill API Password to api password field
    And I fill API Signature to api signature field
    When I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Payment Setting Page
    And 1st row of payment method list should contain "PayPal Express"
    And ---ROLL BACK---
    Then I click on 1st delete button of payment method list
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain '(dirty data) PayPal Express'