@BaseCase @Admin @Delivery @StorePickUp @deliveryAssert-StorePickUp
Feature: create delivery Assert - Store PickUp
  As a nonsuperadmin merchant
  I can't input some field on delivery form

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

  @EAT-956 @EAT-956-1 
  Scenario: Non-superadmin - Assert Store pick up
    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Store Pick-up' of delivery type dropdown
    Then I should not see download dropdown