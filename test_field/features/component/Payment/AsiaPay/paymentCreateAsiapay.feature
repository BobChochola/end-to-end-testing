@BaseCase @Admin @Payment @AsiaPay @paymentCreateAsiapay
@baseLocation-HK @premiumFeature
Feature: Payment Asiapay Create Feature
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

  @C3786 @C3786-4
  Scenario: Create payment - Asiapay
    Given I am on Payment Setting Page
    When I click on add button
    Then I should be redirected to Payment Info Page
    When I click on add payment button included 'Set up'
    And I switch to 2 of tabs
    Then I should be redirected to Payment Create Page
    When I select payment type dropdown option included 'AsiaPay' of payment type dropdown
    And I fill Asiapay ID to id field
    And I fill "admin" to login name field
    And I fill "easypass124" to password field
    And I select asiapay payments dropdown option included "Credit Card" of asiapay payments dropdown
    And I fill "(dirty data) AsiaPay Credit Card" to name field
    Then I scroll down to add button
    When I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Payment Setting Page
    And 1st row of payment method list should contain "AsiaPay Credit Card"
    And ---ROLL BACK---
    Then I click on 1st delete button of payment method list
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain '(dirty data) AsiaPay Credit Card'