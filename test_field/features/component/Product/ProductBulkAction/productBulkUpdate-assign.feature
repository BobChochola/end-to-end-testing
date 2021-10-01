@PostTest @PreTest @BaseCase @Admin @Storefront @Product @ProductBulkAction @productBulkUpdate-assign @fixture-shop
Feature: Bulk update products - assign category
  As a user of Shopline
  I want to bulk update products

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

  @C3749-4 @fixture-product
  Scenario: Assign selected product
    Given I am on Category Create Page
    And I fill "(dirty data) Category For Bulk Edit" to category name field
    And I click on add button
    Then I should be redirected to Category List Page
    Given I am on Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st row of product list should contain '1st Product for Checkout'
    Then I click on 1st row of product checkbox
    And I select assign to categories of bulk actions dropdown
    Then I should see assign button
    And I click on 2nd categories checkbox
    And I click on assign button
    And I should see confirmation popover
    And I click on confirm bulk button
    Then I should see alert
    Given I am on Category List Page
    When I click view products button of categories list for the same order of row of categories list included "(dirty data) Category For Bulk Edit"
    Then I should be redirected to Category View Products Page
    Then 1st row of selected product list should contain "1st Product for Checkout"
    Given I am on Shop Product Index Page
    Then I click on row of categories included "Category For Bulk Edit"
    Then I should be redirected to Shop Product Index Page
    Then 1st product of products list should contain "1st Product for Checkout"
    And ---ROLL BACK---
    Given I am on Category List Page
    When I click delete button of categories list for the same order of row of categories list included "(dirty data) Category For Bulk Edit"
    Then I should see delete confirmation popover
    When I click on delete checkbox
    And I click on confirm delete button
    Then I should see 1 delete button of categories list