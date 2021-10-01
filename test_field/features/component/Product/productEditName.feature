@PostTest @PreTest @BaseCase @Admin @Storefront @Product @productEditName
Feature: Edit product name
  As a user of Shopline
  I want to update products

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

  @C3751 @C3751-4 @fixture-shop
  Scenario: Edit product
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) New Product" to english name field
    And I click on quantity and pricing tab
    And I fill "20" to regular price field
    And I click on unlimited quantity checkbox
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on info tab
    And I input "Edit Product" to english name field
    Then I should see alert
    Then I should be redirected to Product Index Page
    Then I should see row of product list
    Then 1st row of product list should contain "Edit Product"
    Given I am on Shop Product Index Page
    Then 1st product of products list should contain "Edit Product"
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain '(dirty data) New Product'