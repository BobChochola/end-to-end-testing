@BaseCase @Admin @Storefront @checkNoAlertInputScriptToProductTitleCategoryTitleV2 @theme-kingsman @fixture-shop
Feature: should not see any alert on storefront(set product/category) - V2
  As a merchant
  I don't want my customer see and alert when I input something script to field

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

    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill xss name to english name field
    And I click on quantity and pricing tab
    And I fill "20" to regular price field
    And I fill "10" to sale price field
    And I click on unlimited quantity checkbox
    And I click on add button
    Then alert should be present
    Then I should see alert
    Then I should be redirected to Product Edit Page

    Given I am on Category Create Page
    And I fill category xss name to category name field
    And I click on add button
    Then I should be redirected to Category List Page
    Then 2nd row of categories list should contain category xss name
    Given I am on Product Index Page
    When I click on 1st row of product checkbox
    And I select assign to categories of bulk actions dropdown
    And I click on 2nd row of assigned categories
    And I click on assign button
    And I should see confirmation popover
    And I click on confirm bulk button
    Then I should see alert

  @EAT-939 @EAT-939-3 
  Scenario: should not see any alert on storefront(set product/category) - V2
    Given I am on Shop Home Layout V Two Page
    When I click on shop all button
    Then I should be redirected to Shop Product Index Layout V Two Page
    Then alert should not be present
    When I click on 2nd row of categories
    Then 1st kingsman product of products list should contain '(dirty data)xss'
    Then alert should not be present
    When I click on 1st kingsman product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    Then product info should contain "(dirty data)xss"
    Then alert should not be present
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain '(dirty data)'
    Given I am on Category List Page
    When I click delete button of categories list for the same order of row of categories list included category xss name
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see 1 delete button of categories list