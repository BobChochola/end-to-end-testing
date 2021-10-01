@PostTest @PreTest @BaseCase @Admin @Storefront @Product @ProductBulkAction @productBulkUpdate-delete @fixture-shop
Feature: Bulk update products - delete product
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

  @C3749-3
  Scenario: Delete selected product
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) Delete Product" to english name field
    And I click on quantity and pricing tab
    And I fill "20" to regular price field
    And I click on unlimited quantity checkbox
    Then I scroll down to breadcrumb
    Then I should see add button
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    Then I click on 1st row of product checkbox
    When I select delete selected of bulk actions dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm bulk button
    Then I should see row of product list
    Then row of product list should not contain "Delete Product"
    Given I am on Shop Product Index Page
    Then product of products list should not contain "Delete Product"