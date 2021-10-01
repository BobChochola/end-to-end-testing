@BaseCase @ImageService @Admin @Storefront @Marketing @Product @ImageALT @imageAltTagProductWithoutVariation @fixture-shop @fixture-payment @fixture-delivery @EAT-1021
Feature: Add Image Alt for Product Image (main)
  As a Merchant
  I want to create products with alt tag
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

  @EAT-1021-1
  Scenario: Add Image Alt for Product Image (main)
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    Then I should see alt button
    When I click on alt button
    Then I should see alt field
    When I fill 'related product alt test' to alt field
    And I click on ok button
    And I click on info tab
    And I fill '(dirty data) related product' to english name field
    And I click on quantity and pricing tab
    And I fill '20' to regular price field
    And I click on unlimited quantity checkbox
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    Then I should see row of product photo list
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain 'related product'
    
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
    And I click on additional product photo collapse
    Then I scroll down to additional product photo collapse
    When I pick product detail photo to product detail photo selector
    Then I should see delete detail photo button
    Then I should see additional product alt button
    When I click on additional product alt button
    Then I should see alt field
    When I fill 'additional product alt test' to alt field
    And I click on ok button
    And I scroll down to breadcrumb
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

    Given I am on Shop Product Index Page
    When I input 'main product alt tag test' to search field
    Then product of products list should contain 'main product alt tag test'
    Then the tag name of row of product image is 'div'
    Then row of product image should not have attribute 'alt'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain 'main product alt tag test'
    Then the tag name of main product image is 'img'
    Then main product image should have attribute 'alt' equal to 'main alt test'
    Then the tag name of main product image button is 'div'
    Then main product image button should have attribute 'alt' equal to 'main alt test'
    When I scroll down to additional detail image
    Then the tag name of additional detail image is 'img'
    Then additional detail image should have attribute 'alt' equal to 'additional product alt test'
    Then the tag name of row of related products image is 'div'
    Then row of related products image should not have attribute 'alt'
    And I click on add to cart button
    Then I should see cart panel
    Then cart item list should contain 'main product alt tag test'
    Then the tag name of cart panel image list is 'img'
    Then cart panel image list should have attribute 'alt' equal to 'main alt test'
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then row of cart item should contain 'main product alt tag test'
    Then the tag name of row of cart item image is 'a'
    Then row of cart item image should not have attribute 'alt'
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Local Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I click on cart summary
    Then I should see row of product image
    Then the tag name of row of product image is 'a'
    Then row of product image should not have attribute 'alt'
    When I fill name to name field
    And I fill new customer email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I wait for 3 seconds for loading
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I wait for 3 seconds for loading
    And I fill address to delivery address field
    And I click on become member checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then row of product items should contain 'main product alt tag test'
    Then the tag name of row of product image is 'a'
    Then row of product image should not have attribute 'alt'

    And ---ROLL BACK---
    Given I am on Product Index Page
    Then 1st row of product list should contain 'main product alt tag test'
    Then 2nd row of product list should contain 'related product'
    When I click on 1st row of product checkbox
    When I click on 2nd row of product checkbox
    And I select delete selected of bulk actions dropdown
    Then I should see delete confirmation popover
    When I click on delete checkbox
    And I click on confirm bulk button
    Then product list should not contain 'main product alt tag test'