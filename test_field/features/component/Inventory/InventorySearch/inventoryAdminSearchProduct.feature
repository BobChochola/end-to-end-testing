@BaseCase @Admin @Search @Inventory @InventorySearch @Product @inventoryAdminSearchProduct @fixture-product
Feature: Product Inventory filter
  As a merchant
  I want to update product's inventory and search the specific filter

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

  @C8245 @C8245-1
  Scenario: product filter quantity - Out of stock(publish)
    Given I am on Inventory Page
    When I select out of stock of quantity dropdown
    Then I should see quantity search label
    And quantity search label should contain "Product is Out of stock"
    Then I should see row of product list
    And 1st row of product list should contain "Out Of Stock"
    Then 1st row of product list should contain "0"
    And I select published of status dropdown
    Then I should see status search label
    And status search label should contain "Product is Published"
    Then I should see row of product list
    Then 1st row of product list should contain "Published"
    And 1st row of product list should contain "Out Of Stock"

  @C8245 @C8245-2
  Scenario: product filter quantity - Out of stock(unpublish)
    Given I am on Inventory Page
    When I select out of stock of quantity dropdown
    Then I should see quantity search label
    And quantity search label should contain "Product is Out of stock"
    Then I should see row of product list
    And 1st row of product list should contain "Out Of Stock"
    And I click on 1st row of select checkbox list
    And I select unpublish selected of bulk action dropdown
    And I wait for 5 seconds for loading
    And I select unpublished of status dropdown
    Then I should see status search label
    And status search label should contain "Product is Unpublished"
    Then 1st row of product list should contain "Unpublished"
    And ---ROLL BACK---
    When I click on 1st row of select checkbox list
    Then I select publish selected of bulk action dropdown
    And I wait for 3 seconds for loading

  @C8246
  Scenario: Filter published
    Given I am on Inventory Page
    Then I select published of status dropdown
    Then I should see status search label
    And status search label should contain "Product is Published"
    Then 1st row of product list should contain "Published"
    And inventory content should not contain "Unpublished"