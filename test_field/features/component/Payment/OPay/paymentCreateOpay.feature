@BaseCase @Admin @Payment @OPay @paymentCreateOpay
Feature: Payment O'Pay Create Feature
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

  @C2104 @C2104-10 @baseLocation-TW
  Scenario: Create payment - Credit Card via O'Pay
    Given I am on Payment Setting Page
    When I click on add button
    Then I should be redirected to Payment Create Page
    When I select payment type dropdown option included "O'Pay" of payment type dropdown
    When I select opay payments dropdown option included 'Credit Card' of opay payments dropdown
    And I fill "(dirty data) O'Pay Credit Card" to name field
    And I fill Merchant ID to id field
    And I fill API HashKey to hashkey field
    And I fill API HashIV to hashiv field
    When I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Payment Setting Page
    And 1st row of payment method list should contain "O'Pay Credit Card"
    And ---ROLL BACK---
    Then I click on 1st delete button of payment method list
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain "(dirty data) O'Pay Credit Card"

  @C2104 @C2104-11 @baseLocation-TW
  Scenario: Create payment - WebATM via O'pay
    Given I am on Payment Setting Page
    When I click on add button
    Then I should be redirected to Payment Create Page
    When I select payment type dropdown option included "O'Pay" of payment type dropdown
    And I fill Merchant ID to id field
    And I fill API HashKey to hashkey field
    And I fill API HashIV to hashiv field
    When I select opay payments dropdown option included 'WebATM' of opay payments dropdown
    When I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Payment Setting Page
    And 1st row of payment method list should contain "WebATM (Only for O'pay member)"
    And ---ROLL BACK---
    Then I click on 1st delete button of payment method list
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain "WebATM (Only for O'pay member)"

  @C2104 @C2104-12 @baseLocation-TW
  Scenario: Create payment - ATM via O'pay
    Given I am on Payment Setting Page
    When I click on add button
    Then I should be redirected to Payment Create Page
    When I select payment type dropdown option included "O'Pay" of payment type dropdown
    And I fill Merchant ID to id field
    And I fill API HashKey to hashkey field
    And I fill API HashIV to hashiv field
    When I select opay payments dropdown option included 'ATM Virtual account' of opay payments dropdown
    When I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Payment Setting Page
    And 1st row of payment method list should contain "ATM Virtual account (Only for O'pay member)"
    And ---ROLL BACK---
    Then I click on 1st delete button of payment method list
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain "ATM Virtual account (Only for O'pay member)"

  @C2104 @C2104-13 @baseLocation-TW
  Scenario: Create payment - O'pay CVS
    Given I am on Payment Setting Page
    When I click on add button
    Then I should be redirected to Payment Create Page
    When I select payment type dropdown option included "O'Pay" of payment type dropdown
    And I fill Merchant ID to id field
    And I fill API HashKey to hashkey field
    And I fill API HashIV to hashiv field
    When I select opay payments dropdown option included 'CVS' of opay payments dropdown
    When I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Payment Setting Page
    And 1st row of payment method list should contain "CVS (Only for O'pay member)"
    And ---ROLL BACK---
    Then I click on 1st delete button of payment method list
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain "CVS (Only for O'pay member)"