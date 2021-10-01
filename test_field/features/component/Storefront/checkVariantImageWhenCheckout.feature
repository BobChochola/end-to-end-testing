@BaseCase @ImageService @Storefront @Admin @Product @checkVariantImageWhenCheckout @fixture-shop @fixture-delivery @fixture-payment @EAT-722
Feature: Save Variant Image Selector when not Totally Uploaded
  As a user of Shopline
  I want to create variant products with variant image
  So that I can see variant image when I checkout

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

  @EAT-722-1
  Scenario: without variation image
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    When I click on info tab
    And I fill '(dirty data) without variant image product' to english name field
    And I click on quantity and pricing tab
    Then I should see regular price field
    And I fill '20' to regular price field
    And I click on unlimited quantity checkbox
    And I click on variations tab
    And I click on variations toggle
    And I input 'White' to add options field
    And I input 'Yellow' to add options field
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    Then I should see row of product photo list
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain 'without variant image product'
    Then 1st row of regular price list should contain '20'
    Then 1st row of quantity list should contain '∞'

    Given I am on Shop Product Index Page
    When I input 'without variant image product' to search field
    Then 1st product of products list should contain 'without variant image product'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain 'without variant image product'
    Then product info should contain 'NT$20'
    And I select dropdown option included 'White' of variation dropdown
    And I click on add to cart button
    Then I should see cart panel
    Then 1st cart item list should contain 'without variant image product'
    Then 1st cart item list should contain 'White'
    Then I should have image product photo for 1st cart panel image list
    When I click on close cart panel area
    And I select dropdown option included 'Yellow' of variation dropdown
    And I click on add to cart button
    Then I should see cart panel
    Then 2nd cart item list should contain 'without variant image product'
    Then 2nd cart item list should contain 'Yellow'
    Then I should have image product photo for 2nd cart panel image list
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then 1st row of cart item should contain 'without variant image product'
    Then 1st row of cart item should contain 'White'
    Then I should have image product photo for 1st row of cart item image
    Then 2nd row of cart item should contain 'without variant image product'
    Then 2nd row of cart item should contain 'Yellow'
    Then I should have image product photo for 2nd row of cart item image
    And ---ROLL BACK---
    Given I am on Product Index Page
    Then 1st row of product list should contain 'without variant image product'
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    When I click on delete checkbox
    And I click on confirm delete button
    Then 1st row of product list should not contain 'without variant image product'

  @EAT-722-2
  Scenario: with variation image
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    When I click on info tab
    And I fill '(dirty data) with variant image product' to english name field
    And I click on quantity and pricing tab
    Then I should see regular price field
    And I fill '20' to regular price field
    And I click on unlimited quantity checkbox
    And I click on variations tab
    And I click on variations toggle
    And I input 'White' to add options field
    And I input 'Yellow' to add options field
    And I scroll down to 2nd add button
    And I click on 1st row of variation photo button
    Then I should see upload photo popover
    When I pick white variants product photo to variants photo selector
    And I wait for 5 seconds for loading
    And I click on variants photo save button
    Then I should have image white variants product photo for 1st row of variation photo
    And I click on 2nd row of variation photo button
    Then I should see upload photo popover
    And I pick yellow variants product photo to variants photo selector
    And I wait for 5 seconds for loading
    And I click on variants photo save button
    Then I should have image yellow variants product photo for 2nd row of variation photo
    When I scroll down to 2nd add button
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    Then I should see row of product photo list
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain 'with variant image product'
    Then 1st row of regular price list should contain '20'
    Then 1st row of quantity list should contain '∞'

    Given I am on Shop Product Index Page
    When I input 'with variant image product' to search field
    Then 1st product of products list should contain 'with variant image product'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain 'with variant image product'
    Then product info should contain 'NT$20'
    And I select dropdown option included 'White' of variation dropdown
    And I click on add to cart button
    Then I should see cart panel
    Then 1st cart item list should contain 'with variant image product'
    Then 1st cart item list should contain 'White'
    Then I should have image white variants product photo for 1st cart panel image list
    When I click on close cart panel area
    And I select dropdown option included 'Yellow' of variation dropdown
    And I click on add to cart button
    Then I should see cart panel
    Then 2nd cart item list should contain 'with variant image product'
    Then 2nd cart item list should contain 'Yellow'
    Then I should have image yellow variants product photo for 2nd cart panel image list
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then 1st row of cart item should contain 'with variant image product'
    Then 1st row of cart item should contain 'White'
    Then I should have image white variants product photo for 1st row of cart item image
    Then 2nd row of cart item should contain 'with variant image product'
    Then 2nd row of cart item should contain 'Yellow'
    Then I should have image yellow variants product photo for 2nd row of cart item image

    And ---ROLL BACK---
    Given I am on Product Index Page
    Then 1st row of product list should contain 'with variant image product'
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    When I click on delete checkbox
    And I click on confirm delete button
    Then 1st row of product list should not contain 'with variant image product'