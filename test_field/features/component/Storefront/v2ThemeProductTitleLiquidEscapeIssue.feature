@BaseCase @Admin @Storefront @v2ThemeProductTitleLiquidEscapeIssue @theme-kingsman @fixture-shop
Feature: V2 Theme Product Title Liquid Escape Issue
  As a merchant
  I want to add '<Engilsh>' on product title 
  So that I should see the string be displayed on correspond product title on shop product index page

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

  @EAT-942
  Scenario: V2 Theme Product Title Liquid Escape Issue, product with add-on item.
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) &<you should see me>< product;" to english name field
    And I click on quantity and pricing tab
    And I fill '1' to regular price field
    And I fill '10' to quantity field
    Then I scroll down to breadcrumb
    When I click on add button
    Then I should be redirected to Product Edit Page

    Given I am on Product Index Page
    Then I input "&<you should see me>< product;" to search field
    Then 1st row of product name should contain "&<you should see me>< product;"
    Given I am on Inventory Page
    Then 1st row of product list should contain "&<you should see me>< product;"

    Given I am on Addon Create Page
    And I fill "(dirty data) &<addon><;" to english name field
    When I pick addon photo to addon photo selector
    Then I should see delete photo button
    And I fill '10' to addon quantity field
    And I click on tab included 'Product Level Settings (Optional)'
    And I fill "&<you should see me>< product;" to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '&<you should see me>< product;'
    And I click on 1st checkbox of product list
    And I click on confirm button
    Then I fill '100' to 1st row of addon price field
    And I click on add button
    Then I should be redirected to Addon Index Page
    Then I should see alert
    Then 1st row of addon list should contain "&<addon><;"

    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    Then I input "&<you should see me>< product;" to search field
    Then 1st kingsman product of products list should contain "&<you should see me>< product;"
    Then I click on 1st row of product list
    Then I should be redirected to Shop Product Show Layout V Two Page
    Then product list should contain "&<you should see me>< product;"
    Then addon name should contain "&<addon><;"
    And I click on kingsman addon checkbox
    When I click on buy together button
    Then I should see cart panel
    Then 1st kingsman list of cart product should contain "&<you should see me>< product;"
    Then 1st kingsman list of cart addon should contain "&<addon><;"
    And I click on checkout button
    Then I should be redirected to Shop Cart Layout V Two Page
    Then 1st row of cart item should contain "&<you should see me>< product;"
    Then 2nd row of cart item should contain "&<addon><;"
    Then 2nd row of cart item should contain 'Add-on Item'

    And ---ROLL BACK---
    Given I am on Addon Index Page
    And I click select checkbox of addon list for the same order of row of addon list included "&<addon><;"
    And I select delete of bulk actions dropdown
    Then I should see confirmation popover
    And I click on delete checkbox
    When I click on confirm delete button
    Then I should not see confirmation popover
    Then I should be redirected to Addon Index Page
    Given I am on Product Index Page
    When I click row of product checkbox for the same order of row of product name included "&<you should see me>< product;"
    When I select delete selected of bulk actions dropdown
    Then I should see delete confirmation popover
    Then I click on delete checkbox
    Then I click on confirm bulk button