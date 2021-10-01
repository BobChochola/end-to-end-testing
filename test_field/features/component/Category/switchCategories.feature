@BaseCase @Admin @Storefront @Product @Category @switchCategories @fixture-product @fixture-shop
Feature: Switch different category
  As a customer
  I want to switch different category

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
    
    Given I am on Category List Page
    And I click on add button
    Then I should be redirected to Category Create Page
    And I fill "(dirty data) First Category" to category name field
    And I click on add button
    Then I should be redirected to Category List Page
    And I click on add button
    Then I should be redirected to Category Create Page
    And I fill "(dirty data) Second Category" to category name field
    And I click on add button
    Then I should be redirected to Category List Page

  @C3806
  Scenario:  Assign product to two kind of categorie and switch different category in shop
    Given I am on Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st row of product list should contain "1st Product for Checkout"
    When I click on 1st row of product checkbox
    And I select assign to categories of bulk actions dropdown
    And I click on 2nd categories checkbox
    And I click on assign button
    And I should see confirmation popover
    And I click on confirm bulk button
    Then I should see alert
    Given I am on Product Index Page
    When I input "2nd Product for Checkout" to search field
    Then 1st row of product list should contain "2nd Product for Checkout"
    When I click on 1st row of product checkbox
    And I select assign to categories of bulk actions dropdown
    And I click on 3nd categories checkbox
    And I click on assign button
    And I should see confirmation popover
    And I click on confirm bulk button
    Then I should see alert
    Given I am on Shop Product Index Page
    Then I should see row of categories
    When I click on 2nd row of categories
    Then I should see breadcrumb
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain "1st Product for Checkout"
    Given I am on Shop Product Index Page
    Then I should see row of categories
    When I click on 3rd row of categories
    Then I should see breadcrumb
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain "2nd Product for Checkout"
    And ---ROLL BACK---
    Given I am on Category List Page
    When I click delete button of categories list for the same order of row of categories list included "(dirty data) Second Category"
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    When I click delete button of categories list for the same order of row of categories list included "(dirty data) First Category"
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see 1 delete button of categories list