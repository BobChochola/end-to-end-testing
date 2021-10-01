@BaseCase @ImageService @Admin @Storefront @Marketing @Product @ImageALT @imageAltTagProductWithVariation @fixture-shop @fixture-payment @fixture-delivery @EAT-1021
Feature: Add Image Alt for Product Image (variations)
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

    Given I am on Design Page
    When I click on advanced setting tab
    Then I should see instant add to cart checkbox
    When I click on instant add to cart checkbox
    And I click on current window checkbox
    And I click on save button
    And I click on publish button
    Then I should not see publish button

  @EAT-1021-2
  Scenario: Add Image Alt for Product Image (variations)
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    Then I should see alt button
    When I click on alt button
    Then I should see alt field
    When I fill 'main alt test' to alt field
    And I click on ok button
    And I click on info tab
    And I fill '(dirty data) main product with variations alt tag test' to english name field
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
    And I click on variations tab
    When I click on variations toggle
    And I input "R" to add options field
    And I input "G" to add options field
    When I click on add variation button
    And I input "S" to 2nd add options field
    And I input "M" to 2nd add options field
    
    And I click on 1st row of variation photo button
    Then I should see upload photo popover
    When I should see main product photo
    Then I click on main product photo
    When I click on variants photo save button
    Then I should have image product photo for 1st row of variation photo

    When I click on 2nd row of variation photo button
    Then I should see upload photo popover
    When I pick white variants product photo to variants photo selector
    And I wait for 5 seconds for loading
    Then I should see variants alt button
    When I click on variants alt button
    Then I should see alt field
    When I fill 'variations 2 alt test' to alt field
    And I click on ok button
    And I click on variants photo save button
    Then I should have image white variants product photo for 2nd row of variation photo

    When I click on 3rd row of variation photo button
    Then I should see upload photo popover
    When I pick yellow variants product photo to variants photo selector
    And I wait for 5 seconds for loading
    Then I should see variants alt button
    When I click on 2nd variants alt button
    Then I should see alt field
    When I fill 'variations 3 alt test' to alt field
    And I click on ok button
    And I click on variants photo save button
    Then I should have image yellow variants product photo for 3rd row of variation photo

    When I click on 4th row of variation photo button
    Then I should see upload photo popover
    When I pick product detail photo to variants photo selector
    And I wait for 5 seconds for loading
    Then I should see variants alt button
    When I click on 3rd variants alt button
    Then I should see alt field
    When I fill 'variations 4 alt test' to alt field
    And I click on ok button
    And I click on variants photo save button
    Then I should have image product detail photo for 4th row of variation photo

    And I click on variations same price checkbox
    And I fill "20" to 1st row of variation price field
    And I fill "10" to 2nd row of variation price field
    And I fill "30" to 3rd row of variation price field
    And I fill "40" to 4th row of variation price field
    And I fill "20" to 1st row of variation quantity field
    And I fill "10" to 2nd row of variation quantity field
    And I fill "30" to 3rd row of variation quantity field
    And I fill "40" to 4th row of variation quantity field
    Then I scroll down to add button
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    Then I should see row of product photo list
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain 'main product with variations alt tag test'

    Given I am on Shop Product Index Page
    When I input 'main product with variations alt tag test' to search field
    Then product of products list should contain 'main product with variations alt tag test'
    Then the tag name of row of product image is 'div'
    Then row of product image should not have attribute 'alt'
    And I hover over 1st product of products list
    When I click on 1st add to cart
    Then I should see cart popover
    Then product info should contain 'main product with variations alt tag test'
    Then the tag name of quick cart popover product image is 'img'
    Then quick cart popover product image should have attribute 'alt' equal to 'main alt test'
    Then the tag name of quick cart popover product small image is 'div'
    Then quick cart popover product small image should have attribute 'alt' equal to 'main alt test'
    And I select dropdown option included 'M' of 2nd variation dropdown
    Then the tag name of quick cart popover product image is 'img'
    Then quick cart popover product image should have attribute 'alt' equal to 'variations 2 alt test'
    Then the tag name of quick cart popover product small image is 'div'
    Then quick cart popover product small image should have attribute 'alt' equal to 'variations 2 alt test'
    And I select dropdown option included 'G' of 1st variation dropdown
    Then the tag name of quick cart popover product image is 'img'
    Then quick cart popover product image should have attribute 'alt' equal to 'variations 4 alt test'
    Then the tag name of quick cart popover product small image is 'div'
    Then quick cart popover product small image should have attribute 'alt' equal to 'variations 4 alt test'
    And I select dropdown option included 'S' of 2nd variation dropdown
    Then the tag name of quick cart popover product image is 'img'
    Then quick cart popover product image should have attribute 'alt' equal to 'variations 3 alt test'
    Then the tag name of quick cart popover product small image is 'div'
    Then quick cart popover product small image should have attribute 'alt' equal to 'variations 3 alt test'
    When I click on close button

    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain 'main product with variations alt tag test'
    Then the tag name of main product image is 'img'
    Then main product image should have attribute 'alt' equal to 'main alt test'
    Then the tag name of main product image button is 'div'
    Then main product image button should have attribute 'alt' equal to 'main alt test'
    And I click on add to cart button
    Then I should see cart panel
    Then 1st cart item list should contain 'main product with variations alt tag test'
    Then 1st cart item list should contain 'R'
    Then 1st cart item list should contain 'S'
    Then the tag name of 1st cart panel image list is 'img'
    # Then 1st cart panel image list should have attribute 'alt' equal to 'main alt test'
    When I click on close cart panel area

    And I select dropdown option included 'M' of 2nd variation dropdown
    Then the tag name of main product image is 'img'
    Then main product image should have attribute 'alt' equal to 'variations 2 alt test'
    Then the tag name of main product image button is 'div'
    Then main product image button should have attribute 'alt' equal to 'variations 2 alt test'
    And I click on add to cart button
    Then I should see cart panel
    Then 2nd cart item list should contain 'main product with variations alt tag test'
    Then 2nd cart item list should contain 'R'
    Then 2nd cart item list should contain 'M'
    Then the tag name of 2nd cart panel image list is 'img'
    # it's a known issue, waiting for SL-12039
    # Then 2nd cart panel image list should have attribute 'alt' equal to 'variations 2 alt test'
    When I click on close cart panel area

    And I select dropdown option included 'G' of 1st variation dropdown
    Then the tag name of main product image is 'img'
    Then main product image should have attribute 'alt' equal to 'variations 4 alt test'
    Then the tag name of main product image button is 'div'
    Then main product image button should have attribute 'alt' equal to 'variations 4 alt test'
    And I click on add to cart button
    Then I should see cart panel
    Then 3rd cart item list should contain 'main product with variations alt tag test'
    Then 3rd cart item list should contain 'G'
    Then 3rd cart item list should contain 'M'
    Then the tag name of 3rd cart panel image list is 'img'
    # it's a known issue, waiting for SL-12039
    # Then 3rd cart panel image list should have attribute 'alt' equal to 'variations 4 alt test'
    When I click on close cart panel area

    And I select dropdown option included 'S' of 2nd variation dropdown
    Then the tag name of main product image is 'img'
    Then main product image should have attribute 'alt' equal to 'variations 3 alt test'
    Then the tag name of main product image button is 'div'
    Then main product image button should have attribute 'alt' equal to 'variations 3 alt test'
    And I click on add to cart button
    Then I should see cart panel
    Then 4th cart item list should contain 'main product with variations alt tag test'
    Then 4th cart item list should contain 'G'
    Then 4th cart item list should contain 'S'
    Then the tag name of 4th cart panel image list is 'img'
    # it's a known issue, waiting for SL-12039
    # Then 4th cart panel image list should have attribute 'alt' equal to 'variations 3 alt test'
    When I click on close cart panel area

    When I scroll down to additional detail image
    Then the tag name of additional detail image is 'img'
    Then additional detail image should have attribute 'alt' equal to 'additional product alt test'
    When I click on cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then 1st row of cart item should contain 'main product with variations alt tag test'
    Then 1st row of cart item should contain 'R'
    Then 1st row of cart item should contain 'S'
    Then the tag name of 1st row of cart item image is 'a'
    Then 1st row of cart item image should not have attribute 'alt'
    Then 2nd row of cart item should contain 'main product with variations alt tag test'
    Then 2nd row of cart item should contain 'R'
    Then 2nd row of cart item should contain 'M'
    Then the tag name of 2nd row of cart item image is 'a'
    Then 2nd row of cart item image should not have attribute 'alt'
    Then 3rd row of cart item should contain 'main product with variations alt tag test'
    Then 3rd row of cart item should contain 'G'
    Then 3rd row of cart item should contain 'M'
    Then the tag name of 3rd row of cart item image is 'a'
    Then 3rd row of cart item image should not have attribute 'alt'
    Then 4th row of cart item should contain 'main product with variations alt tag test'
    Then 4th row of cart item should contain 'G'
    Then 4th row of cart item should contain 'S'
    Then the tag name of 4th row of cart item image is 'a'
    Then 4th row of cart item image should not have attribute 'alt'
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Local Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I click on cart summary
    Then I should see 4 row of product image
    Then the tag name of 1st row of product image is 'a'
    Then 1st row of product image should not have attribute 'alt'
    Then the tag name of 2nd row of product image is 'a'
    Then 2nd row of product image should not have attribute 'alt'
    Then the tag name of 3rd row of product image is 'a'
    Then 3rd row of product image should not have attribute 'alt'
    Then the tag name of 4th row of product image is 'a'
    Then 4th row of product image should not have attribute 'alt'
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
    Then row of product items should contain 'main product with variations alt tag test'
    Then the tag name of 1st row of product image is 'a'
    Then 1st row of product image should not have attribute 'alt'
    Then the tag name of 2nd row of product image is 'a'
    Then 2nd row of product image should not have attribute 'alt'
    Then the tag name of 3rd row of product image is 'a'
    Then 3rd row of product image should not have attribute 'alt'
    Then the tag name of 4th row of product image is 'a'
    Then 4th row of product image should not have attribute 'alt'

    And ---ROLL BACK---
    Given I am on Product Index Page
    Then 1st row of product list should contain 'main product with variations alt tag test'
    When I click on 1st row of product checkbox
    And I select delete selected of bulk actions dropdown
    Then I should see delete confirmation popover
    When I click on delete checkbox
    And I click on confirm bulk button
    Then product list should not contain 'main product with variations alt tag test'

    Given I am on Design Page
    When I click on advanced setting tab
    Then I should see instant add to cart checkbox
    When I click on new window checkbox
    And I click on instant add to cart checkbox
    And I click on save button
    And I click on publish button
    Then I should not see publish button