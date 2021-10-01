@PostTest @PreTest @BaseCase @Admin @Delivery @711 @deliveryCreate711C2B
@baseLocation-TW @premiumFeature
Feature: create 711 C2B delivery
  As a merchant
  I want to create new delivery
  So that I can have different delivery for my shoppers

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

  @C2101 @C2101-11
  Scenario: Create Delivery - 7-11 Return only (C2B)
    Given I am on Return Delivery Create Page
    When I select delivery type dropdown option included 'Store' of delivery type dropdown
    Then provider dropdown should contain '7-11 Return Only (C2B)'
    When I fill "(dirty data) 7-11 Return Only (C2B)" to name field
    And I fill the 711C2B Parent ID to parent id field
    And I fill the 711C2B Shop ID to shop id field
    And I fill the Merchant Name to merchant name field
    And I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be on Delivery Options Page
    And 1st row of return delivery options list should contain "7-11 Return Only (C2B)"
    And ---ROLL BACK---
    Then I click on 1st delete button of return delivery method list
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain '(dirty data) 7-11 Return Only (C2B)'