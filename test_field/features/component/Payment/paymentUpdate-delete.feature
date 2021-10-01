@PostTest @PreTest @BaseCase @Admin @Payment @paymentUpdate-delete
Feature: Payment Update Feature - delete
  As a merchant
  I want to edit an existing payment
  So that I can update my payments

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
    And I am on Payment Setting Page
    And I click on add button
    And I should be redirected to Payment Create Page
    When I select payment type dropdown option included 'Custom' of payment type dropdown
    And I fill "(dirty data) Edit Me" to name field
    And I fill instruction to payment instructions field
    And I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    And I should be redirected to Payment Setting Page

  @C3739-5 @fixture-payment
  Scenario: Update payment - Edit payment and Delete payment
    Given I am on Payment Setting Page
    When I click on 1st edit button of payment method list
    Then I should be redirected to Payment Edit Page
    And I fill "(dirty data) Delete Me" to name field
    When I click on update button
    Then I should be redirected to Payment Setting Page
    And 1st row of payment method list should contain "Delete Me"
    And ---ROLL BACK---
    Then I click on 1st delete button of payment method list
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then row of payment method list should not contain "Delete Me"