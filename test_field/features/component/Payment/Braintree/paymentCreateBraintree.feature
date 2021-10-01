@BaseCase @Admin @Payment @Braintree @paymentCreateBraintree
@baseLocation-HK @premiumFeature
Feature: Payment Braintree Create Feature
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

  @C3786 @C3786-3
  Scenario: Create payment - BrainTree
    Given I am on Payment Setting Page
    When I click on add button
    Then I should be redirected to Payment Info Page
    When I click on add payment button included 'Set up'
    And I switch to 2 of tabs
    Then I should be redirected to Payment Create Page
    When I select payment type dropdown option included 'Braintree' of payment type dropdown
    And I fill "(dirty data) Braintree Credit card" to name field
    And I fill Braintree ID to id field
    And I fill Braintree Public Key to public key field
    And I fill Braintree Private Key to private key field
    When I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Payment Setting Page
    And 1st row of payment method list should contain "Braintree Credit card"
    And ---ROLL BACK---
    Then I click on 1st delete button of payment method list
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain '(dirty data) Braintree Credit card'