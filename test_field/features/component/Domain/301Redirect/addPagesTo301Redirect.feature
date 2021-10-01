@BaseCase @Admin @Storefront @Domain @301Redirect @addPagesTo301Redirect @fixture-product @fixture-shop
Feature: add Pages To 301 Redirect
  As a merchant
  I want to redirect to other page if my product or page was delete/unpublish
  So that I won't lost my shop’s page views

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

  @addPagesTo301Redirect-1
  Scenario: Add 301 Redirect with pages page
    Given I am on Pages Page
    Then I should see add advanced page button
    When I click on add advanced page button
    Then I should be redirected to Advanced Select Page
    When I click on 8th template
    Then I should be redirected to Page Builder Page
    When I click on skip the guide button
    And I click on menu button
    Then I should see side menu
    When I click on page setting button included "Page Title"
    Then I should see english title field
    And I fill "(dirty data) 301-redirection" to english title field
    And I click on menu button
    And I click on save button
    Then I should see view page button
    Given I am on Pages Page
    Then page list should contain "301-redirection"
    Given I am on Menu Navigation Page
    Then I should see add button
    And I click on add button
    Then I should be redirected to Menu Navigation Create Page
    And I select menu dropdown option included "Page" of menu type list dropdown
    And I select page dropdown option included "301-redirection" of page list dropdown
    Then I should see add button
    And I click on add button
    Then I should be redirected to Menu Navigation Page
    Then I should see 4 row of menu list
    Then 4th row of menu list should contain "301-redirection"
    Given I am on Domain Settings Page
    When I click on redirect tab included "301 Redirect"
    Then I should see add button
    And I click on add button
    Then I should be redirected to Redirection Create Page
    When I fill "/pages/dirty-data-301-redirection" to old url field
    And I fill redirection to redirection field
    And I click on add button
    Given I am on Domain Settings Page
    When I click on redirect tab included "301 Redirect"
    Then 1st row of redirection should contain "/pages/dirty-data-301-redirection"
    Given I am on Shop Home Page
    Then 4th navigation bar should contain "301-redirection"
    Given I am on Pages Page
    When I click on delete button
    Then I should see popover
    And I click on confirm button
    And I click on ok button
    Then page list should not contain '301-redirection'
    Given I am on Shop Home Page
    And I click on navigation bar included "301-redirection"
    Then I should be redirected to Shop Home Page
    And ---ROLL BACK---
    Given I am on Menu Navigation Page
    And I Refresh
    Then I should see delete button
    And I click on 4th delete button
    Then I should see confirm popover
    And I click on delete checkbox
    And I click on ok button
    Then I should not see confirm popover
    Given I am on Domain Settings Page
    When I click on redirect tab included "301 Redirect"
    Then I should see row of redirection
    And I click on 1st delete button
    Then I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should not see row of redirection

  @addPagesTo301Redirect-2
  Scenario: Add 301 Redirect with category page
    Given I am on Category Create Page
    And I fill "(dirty data) 301-redirection" to category name field
    And I click on add button
    Then I should be redirected to Category List Page
    Then 2nd row of categories list should contain "301-redirection"
    Given I am on Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st row of product list should contain "1st Product for Checkout"
    Then I click on 1st row of product checkbox
    And I select assign to categories of bulk actions dropdown
    Then I should see assign button
    And I click on 2nd categories checkbox
    And I click on assign button
    And I should see confirmation popover
    And I click on confirm bulk button
    Then I should see alert
    Given I am on Dashboard Page
    When I click on View my shop button
    When I switch to 2 of tabs
    Then I should be redirected to Shop Home Page
    When I click on shop all button
    Then I should be redirected to Shop Product Index Page
    When I click on 2nd row of categories
    Then I should see 1 product of products list
    And I switch to 1 of tabs
    Given I am on Domain Settings Page
    When I click on redirect tab included "301 Redirect"
    Then I should see add button
    And I click on add button
    Then I should be redirected to Redirection Create Page
    When I fill "/categories/dirty-data-301-redirection" to old url field
    And I fill redirection to redirection field
    And I click on add button
    Given I am on Domain Settings Page
    When I click on redirect tab included "301 Redirect"
    Then I should see row of redirection
    Then 1st row of redirection should contain "/categories/dirty-data-301-redirection"
    Given I am on Category List Page
    When I click delete button of categories list for the same order of row of categories list included "(dirty data) 301-redirection"
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see 1 delete button of categories list
    When I switch to 2 of tabs
    And I Refresh
    Then I should be redirected to Shop Home Page
    And ---ROLL BACK---
    Given I am on Domain Settings Page
    When I click on redirect tab included "301 Redirect"
    Then I should see row of redirection
    And I click on 1st delete button
    Then I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should not see row of redirection

  @addPagesTo301Redirect-3
  Scenario: Add 301 Redirect with product page
    Given I am on Dashboard Page
    When I click on View my shop button
    When I switch to 2 of tabs
    Then I should be redirected to Shop Home Page
    When I click on shop all button
    Then I should be redirected to Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain "1st Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I switch to 1 of tabs
    Given I am on Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st row of product list should contain "1st Product for Checkout"
    When I click on 1st row of publish button
    Given I am on Domain Settings Page
    When I click on redirect tab included "301 Redirect"
    Then I should see add button
    And I click on add button
    Then I should be redirected to Redirection Create Page
    When I fill "/products/1st-product-for-checkout" to old url field
    And I fill redirection to redirection field
    And I click on add button
    Given I am on Domain Settings Page
    When I click on redirect tab included "301 Redirect"
    Then I should see row of redirection
    Then 1st row of redirection should contain "/products/1st-product-for-checkout"
    When I switch to 2 of tabs
    And I Refresh
    Then I should be redirected to Shop Home Page
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st row of product list should contain "1st Product for Checkout"
    When I click on 1st row of publish button
    Given I am on Domain Settings Page
    When I click on redirect tab included "301 Redirect"
    Then I should see row of redirection
    And I click on 1st delete button
    Then I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should not see row of redirection