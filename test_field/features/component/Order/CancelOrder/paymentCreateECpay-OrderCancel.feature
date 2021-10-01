@PreTest @PostTest @BaseCase @Admin @Order @CancelOrder @Payment @paymentCreateECpay-OrderCancel
Feature: Create payment - Credit Card via ECpay - order cancel test
  As a merchant
  I want to create new payment
  So that I can use order cancel for Ecpay

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

  @EAT-1161-4 @C17396
  Scenario: Create payment - Credit Card via ECpay - order cancel test
    Given I am on Order Setting Page
    When I check and click cancel order toggle off
    And I scroll down to update button
    And I click on update button
    Then I should be redirected to Dashboard Page

    Given I am on Payment Create Page
    When I select payment type dropdown option included 'ECpay' of payment type dropdown
    And I fill Merchant ID to id field
    And I fill API HashKey to hashkey field
    And I fill API HashIV to hashiv field
    When I select ecpay payments dropdown option included 'Credit Card' of ecpay payments dropdown
    Then I should not see cancel order toggle
    When I click on language tab included 'English'
    And I fill "(dirty data) Credit Card via ECpay" to name field
    When I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Payment Setting Page
    And 1st row of payment method list should contain "Credit Card via ECpay"
    And ---ROLL BACK---
    Then I click on 1st delete button of payment method list
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain '(dirty data) Credit Card via ECpay'

    Given I am on Order Setting Page
    When I check and click cancel order toggle on
    And I scroll down to update button
    And I click on update button
    Then I should be redirected to Dashboard Page