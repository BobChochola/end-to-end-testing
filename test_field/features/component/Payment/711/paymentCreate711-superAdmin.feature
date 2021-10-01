@PostTest @PreTest @BaseCase @Admin @Payment @711 @paymentCreate711-superAdmin @premiumFeature
Feature: 7-11 Payment Create via super admin
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

  @C2105 @C2105-3 @EAT-1039-17
  Scenario: Create payment - Pay on 7-11 Store Pickup (C2C)
    Given I am on Payment Setting Page
    When I click on add button
    Then I should be redirected to Payment Create Page
    When I select payment type dropdown option included 'Pay on 7-11 Store Pickup (C2C)' of payment type dropdown
    And I fill "(dirty data) Pay on 7-11 Store Pickup (C2C)" to name field
    When I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Payment Setting Page
    And 1st row of payment method list should contain "Pay on 7-11 Store Pickup (C2C)"
    And ---ROLL BACK---
    Then I click on 1st delete button of payment method list
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain '(dirty data) Pay on 7-11 Store Pickup (C2C)'

  @C2105 @C2105-4 @EAT-1039-9
  Scenario: Create payment - Pay on 7-11 Store Pickup (B2C)
    Given I am on Payment Setting Page
    When I click on add button
    Then I should be redirected to Payment Create Page
    When I select payment type dropdown option included 'Pay on 7-11 Store Pickup (B2C)' of payment type dropdown
    And I fill "(dirty data) Pay on 7-11 Store Pickup (B2C)" to name field
    When I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Payment Setting Page
    And 1st row of payment method list should contain "Pay on 7-11 Store Pickup (B2C)"
    And ---ROLL BACK---
    Then I click on 1st delete button of payment method list
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain '(dirty data) Pay on 7-11 Store Pickup (B2C)'

  @C2105 @C2105-5
  Scenario: Create payment - No Pay on 7-11 Return (C2B)
    Given I am on Payment Setting Page
    When I click on add button
    Then I should be redirected to Payment Create Page
    When I select payment type dropdown option included 'No Pay on 7-11 Return (C2B)' of payment type dropdown
    And I fill "(dirty data) No Pay on 7-11 Return (C2B)" to name field
    When I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Payment Setting Page
    And 1st row of payment method list should contain "No Pay on 7-11 Return (C2B)"
    And ---ROLL BACK---
    Then I click on 1st delete button of payment method list
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain '(dirty data) No Pay on 7-11 Return (C2B)'