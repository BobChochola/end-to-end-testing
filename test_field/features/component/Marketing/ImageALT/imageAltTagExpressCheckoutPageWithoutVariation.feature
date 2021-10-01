@BaseCase @ImageService @Admin @Storefront @Product @ExpressCheckoutPage @Marketing @ImageALT @imageAltTagExpressCheckoutPageWithoutVariation @fixture-shop @EAT-1023
Feature: Add Image Alt for Express Checkout Page with product which doesn't have variation
  As a Merchant
  I want to create Express Checkout Page with alt tag
  So that I can see the image with alt tag

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
    Then I should see alt button
    When I click on alt button
    Then I should see alt field
    When I fill 'main alt test' to alt field
    And I click on ok button
    And I click on info tab
    And I fill '(dirty data) main product alt tag test' to english name field
    And I click on quantity and pricing tab
    And I fill '10' to regular price field
    And I click on unlimited quantity checkbox
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    Then I should see row of product photo list
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain 'main product alt tag test'

  @EAT-1023-2-1
  Scenario: Add Image Alt for Express Checkout Page
    Given I am on Express Checkout Pages Page
    Then I should see create button
    When I click on create button
    Then I should be redirected to Express Checkout Builder Page
    Then I should see skip the guide button
    When I click on skip the guide button
    Then I should see product picker
    When I input 'main product alt tag test' to search field
    And I click on search button
    Then I should see product of product list
    Then 1st product of product list should contain 'main product alt tag test'
    And I click on 1st product of product list
    And I click on popup save button
    Then I should be on Express Checkout Builder Page
    When I click on click to edit image elements
    Then I should see edit item panel bar
    When I clear and pick photo to photo selector
    Then I should see 2 uploaded photo item
    Then I should see image alt field
    When I fill 'express checkout page full image alt' to image alt field
    And I click on settings tab
    And I click on show full-width image checkbox
    And I click on ok button
    Then I should be on Express Checkout Builder Page
    When I click on menu button
    Then I should see image button
    When I drag image button to top location
    And I wait for 5 seconds for loading
    Then I should see image upload zone
    When I clear and pick photo to photo selector
    Then I should see 2 uploaded photo item
    Then I should see image alt field
    When I fill 'express checkout page alt' to image alt field
    And I click on ok button
    Then I should be on Express Checkout Builder Page
    And I click on save page button
    Then I should see view page button
    When I click on view page button
    And I switch to 2 of tabs
    Then I should be on Shop Express Checkout Page
    Then I should see 2 image
    Then the tag name of 1st image is 'img'
    Then 1st image should have attribute 'alt' equal to 'express checkout page alt'
     Then the tag name of 2nd image is 'img'
    Then 2nd image should have attribute 'alt' equal to 'express checkout page full image alt'
    Then product name should contain 'MAIN PRODUCT ALT TAG TEST'
    Then I should see product image
    Then the tag name of product image is 'img'
    Then product image should have attribute 'alt' equal to 'main alt test'

    And ---ROLL BACK---
    Given I am on Product Index Page
    Then 1st row of product list should contain 'main product alt tag test'
    When I click on 1st row of product checkbox
    And I select delete selected of bulk actions dropdown
    Then I should see delete confirmation popover
    When I click on delete checkbox
    And I click on confirm bulk button
    Then product list should not contain '(dirty data) main product alt tag test'

    Given I am on Express Checkout Pages Page
    When I click on delete button
    Then I should see popup
    And I click on reconfirm checkbox
    And I click on popup ok button
    Then I should not see delete button