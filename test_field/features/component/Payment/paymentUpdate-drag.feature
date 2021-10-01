@PostTest @PreTest @BaseCase @Admin @Payment @paymentUpdate-drag
Feature: Payment Update Feature - drag
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
    Given I am on Payment Setting Page
    And I click on add button
    And I should be redirected to Payment Create Page
    When I select payment type dropdown option included 'Custom' of payment type dropdown
    And I fill "(dirty data) Edit Me" to name field
    And I fill instruction to payment instructions field
    And I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    And I should be redirected to Payment Setting Page

  @C3739-2
  Scenario: Update Payment - Drag 2nd payment to 1st
    Given I am on Payment Setting Page
    And 1st row of payment method list should contain "Edit Me"
    And I click on add button
    And I should be redirected to Payment Create Page
    When I select payment type dropdown option included 'Bank Transfer' of payment type dropdown
    And I fill "(dirty data) Bank Transfer" to name field
    And I fill instruction to payment instructions field
    And I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Payment Setting Page
    And I drag 2nd drag icon of payment method list to 1st drag icon of payment method list
    Then 1st row of payment method list should contain "Edit Me"
    And ---ROLL BACK---
    When I click on 1st delete button of payment method list
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then row of payment method list should not contain "Edit Me"
    When I click on 1st delete button of payment method list
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain '(dirty data) Bank Transfer'