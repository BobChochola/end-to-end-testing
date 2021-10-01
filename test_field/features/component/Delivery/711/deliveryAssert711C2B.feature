@PostTest @PreTest @BaseCase @Admin @Delivery @711 @deliveryAssert711C2B
Feature: Non-superadmin - Assert 7-11 Return only (C2B) field
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
    When I check and click no thanks button

  @C3889-3
  Scenario: Non-superadmin - Assert 7-11 Return only (C2B) field
    Given I am on Return Delivery Create Page
    When I select delivery type dropdown option included 'Store' of delivery type dropdown 
    Then provider dropdown should contain '7-11 Return Only (C2B)'
    Then parent id field should be disabled
    Then shop id field should be disabled
    Then merchant name field should be disabled
    Then add button should be disabled