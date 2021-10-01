@PostTest @PreTest @BaseCase @Admin @Search @Inventory @InventorySearch @inventorySearch
Feature: inventory Search product name
  As a user of Shopline
  I want to update product's inventory
  So that I can keep inventory of those product in correct quantity

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

  @C3758 @C3758-4 @fixture-product
  Scenario: Search product
    Given I am on Inventory Page
    And I input "1st Product for Checkout" to search field
    Then I should see row of product list
    Then 1st row of product list should contain "1st Product for Checkout"