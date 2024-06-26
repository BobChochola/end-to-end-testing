@PostTest @PreTest @BaseCase @Admin @Search @Inventory @InventorySearch @inventoryFilterLowQuantity
Feature: inventory Filter Low Quantity
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

  @C3758 @C3758-2 @C3758-2-2 @fixture-product
  Scenario: Filter quantity - Low quantity
    Given I am on Inventory Page
    And I select low quantity of quantity dropdown
    And I click on quantity search button
    Then I should see row of product list
    Then 1st row of product list should contain "Out Of Stock"
    Then 1st row of product list should contain "0"