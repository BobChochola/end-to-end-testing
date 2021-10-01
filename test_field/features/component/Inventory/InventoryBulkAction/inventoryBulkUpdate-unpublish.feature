@PostTest @PreTest @BaseCase @Admin @Storefront @Search @Inventory @InventoryBulkAction @inventoryBulkUpdate-unpublish
Feature: Product Inventory Bulk Update - unpublish
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

  @C3759 @C3759-3 @fixture-product @fixture-shop
  Scenario: Bulk unpublish selected product
    Given I am on Inventory Page
    And I input "1st Product for Checkout" to search field
    Then I should see row of product list
    Then 1st row of product list should contain "1st Product for Checkout"
    When I click on 1st row of select checkbox list
    And I select unpublish selected of bulk action dropdown
    Then I wait for 10 seconds for loading
    Then I Refresh
    Then 1st row of product status should contain "Unpublish"
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then I should be redirected to Shop Product Index Page
    Then product of products list should not contain "1st Product for Checkout"
    And ---ROLL BACK---
    Given I am on Inventory Page
    And I input "1st Product for Checkout" to search field
    Then I should see row of product list
    Then 1st row of product list should contain "1st Product for Checkout"
    When I click on 1st row of select checkbox list
    Then I should see row of product list
    And I select publish selected of bulk action dropdown
    Then I wait for 30 seconds for loading