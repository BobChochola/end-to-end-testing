@BaseCase @ImageService @Admin @Storefront @Product @productHidePrice @fixture-shop
Feature: price hide product creation
  As a user of Shopline
  I want to create products with hiding price
  So that my customer can see products without price

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

  @C4291 @C4291-1
  Scenario: add product - hide price with variations
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on variations tab
    And I click on variations toggle
    And I input "R" to add options field
    And I click on variations same price checkbox
    And I should see add button
    And I scroll down to add button
    And I fill "20" to 1st row of variation price field
    And I click on unlimited quantity checkbox
    And I click on info tab
    And I fill "(dirty data) hide price" to english name field
    And I click on quantity and pricing tab
    And I click on hide price toggle
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain "hide price"
    Then 1st row of regular price list should equal to "NT$20"
    Then 1st row of quantity list should contain "∞"
    Given I am on Shop Product Index Page
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain "hide price"
    Then product info should contain "Please message the shop owner for order details."
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain "hide price"

  @C4291 @C4291-2
  Scenario: add product - hide price without variations
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "hide price" to english name field
    And I click on quantity and pricing tab
    And I click on hide price toggle
    And I click on unlimited quantity checkbox
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain "hide price"
    Then 1st row of regular price list should equal to ""
    Then 1st row of quantity list should contain "∞"
    Given I am on Shop Product Index Page
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain "hide price"
    Then product info should contain "Please message the shop owner for order details."
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain "hide price"

  @C4291 @C4291-3
  Scenario: add product - hide price with variations not input price
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "hide price" to english name field
    And I click on quantity and pricing tab
    And I click on hide price toggle
    And I click on unlimited quantity checkbox
    And I click on variations tab
    When I click on variations toggle
    And I input "R" to add options field
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain "hide price"
    Then 1st row of regular price list should equal to ""
    Then 1st row of quantity list should contain "∞"
    Given I am on Shop Product Index Page
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain "hide price"
    Then product info should contain "Please message the shop owner for order details."
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain "hide price"

  @C4291 @C4291-4
  Scenario: add product - hide price without variations and input price
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "hide price" to english name field
    And I click on quantity and pricing tab
    And I fill "20" to regular price field
    And I click on hide price toggle
    And I click on unlimited quantity checkbox
    And I should see add button
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain "hide price"
    Then 1st row of regular price list should equal to "NT$20"
    Then 1st row of quantity list should contain "∞"
    Given I am on Shop Product Index Page
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain "hide price"
    Then product info should contain "Please message the shop owner for order details."
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain "hide price"