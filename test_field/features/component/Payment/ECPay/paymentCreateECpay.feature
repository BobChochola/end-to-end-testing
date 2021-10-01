@PostTest @PreTest @BaseCase @Admin @Payment @ECPay @paymentCreateECpay
Feature: Payment ECpay Create Feature
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

  @C2104 @C2104-7
  Scenario: Create payment - Credit Card via ECpay
    Given I am on Payment Setting Page
    When I click on add button
    Then I should be redirected to Payment Create Page
    When I select payment type dropdown option included 'ECpay' of payment type dropdown
    And I fill Merchant ID to id field
    And I fill API HashKey to hashkey field
    And I fill API HashIV to hashiv field
    When I select ecpay payments dropdown option included 'Credit Card' of ecpay payments dropdown
    And I fill "(dirty data) ECpay Credit Card" to name field
    When I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Payment Setting Page
    And 1st row of payment method list should contain "ECpay Credit Card"
    And ---ROLL BACK---
    Then I click on 1st delete button of payment method list
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain '(dirty data) ECpay Credit Card'

  @C2104 @C2104-8 @baseLocation-TW
  Scenario: Create payment - ECpay CVS
    Given I am on Payment Setting Page
    When I click on add button
    Then I should be redirected to Payment Create Page
    When I select payment type dropdown option included 'ECpay' of payment type dropdown
    And I fill Merchant ID to id field
    And I fill API HashKey to hashkey field
    And I fill API HashIV to hashiv field
    When I select ecpay payments dropdown option included 'CVS' of ecpay payments dropdown
    And I fill "(dirty data) ECpay CVS" to name field
    When I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Payment Setting Page
    And 1st row of payment method list should contain "ECpay CVS"
    And ---ROLL BACK---
    Then I click on 1st delete button of payment method list
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain '(dirty data) ECpay CVS'

  @C2104 @C2104-9 @baseLocation-TW
  Scenario: Create payment - ECpay Barcode
    Given I am on Payment Setting Page
    When I click on add button
    Then I should be redirected to Payment Create Page
    When I select payment type dropdown option included 'ECpay' of payment type dropdown
    And I fill Merchant ID to id field
    And I fill API HashKey to hashkey field
    And I fill API HashIV to hashiv field
    When I select ecpay payments dropdown option included 'Barcode' of ecpay payments dropdown
    And I fill "(dirty data) ECpay Barcode" to name field
    When I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Payment Setting Page
    And 1st row of payment method list should contain "ECpay Barcode"
    And ---ROLL BACK---
    Then I click on 1st delete button of payment method list
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain '(dirty data) ECpay Barcode'