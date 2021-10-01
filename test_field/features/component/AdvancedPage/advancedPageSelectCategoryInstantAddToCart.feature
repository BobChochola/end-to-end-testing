@BaseCase @Admin @Storefront @AdvancedPage @Category @advancedPageSelectCategoryInstantAddToCart @fixture-product @fixture-shop
Feature: Add instant add to cart product to cart
  As a merchant
  I want to use instant add to cart feature
  So that user can add product to cart quickly

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

    Given I am on Category Create Page
    And I fill "(dirty data) New Category" to category name field
    And I click on add button
    Then I should be redirected to Category List Page
    Then 2nd row of categories list should contain "New Category"
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

  @C3807
  Scenario: Add instant add to cart product to cart
    Given I am on Pages Page
    When I click on add advanced page button
    Then I should be redirected to Advanced Select Page
    When I click on 8th template
    Then I should be redirected to Page Builder Page
    Then I should see skip the guide button
    When I click on skip the guide button
    And I click on edit category button
    Then I should see side menu
    When I click on 2nd category checkbox
    Then I should see ok button
    And I click on ok button
    Then I should see save button
    And I click on save button
    Then I should see view page button
    And I click on view page button
    And I switch to 2 of tabs
    Then I should be redirected to Shop Advanced Page
    When I scroll down to product
    And I hover over 1st product
    And I click on 1st add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And ---ROLL BACK---
    Given I am on Pages Page
    When I click on delete button
    Then I should see popover
    And I click on confirm button
    Then I click on ok button
    Given I am on Category List Page
    When I click delete button of categories list for the same order of row of categories list included "(dirty data) New Category"
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see 1 delete button of categories list