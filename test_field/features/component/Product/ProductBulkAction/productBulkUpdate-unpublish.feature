@PostTest @PreTest @BaseCase @Admin @Storefront @Product @ProductBulkAction @productBulkUpdate-unpublish @fixture-shop
Feature: Bulk update products - unpublish
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

  @C3749-1 @fixture-product
  Scenario: Unpublish selected product
    Given I am on Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st row of product list should contain '1st Product for Checkout'
    Then I click on 1st row of product checkbox
    When I select unpublish selected of bulk actions dropdown
    Then I should see alert
    Then I should be redirected to Product Index Page
    Then I should see row of publish button
    Then 1st row of publish button should contain "Publish"
    Given I am on Shop Product Index Page
    Then product of products list should not contain "1st Product for Checkout"
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I input "1st Product for Checkout" to search field
    Then I should be redirected to Product Index Page
    Then I should see row of product checkbox
    Then I click on 1st row of product checkbox
    When I select publish selected of bulk actions dropdown
    Then I should see alert