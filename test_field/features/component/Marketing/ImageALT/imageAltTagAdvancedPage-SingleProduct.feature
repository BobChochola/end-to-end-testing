@BaseCase2 @ImageService @Admin @Storefront @Product @AdvancedPage @Marketing @ImageALT @imageAltTagAdvancedPage-SingleProduct @fixture-shop @EAT-1023
Feature: Add Image Alt for Advanced Page (Single Product)
  As a Merchant
  I want to create Advanced Page with alt tag
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

    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    Then I should see alt button
    When I click on alt button
    Then I should see alt field
    When I fill 'variations alt test' to alt field
    And I click on ok button
    And I click on info tab
    And I fill '(dirty data) main product with variations alt tag test' to english name field
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

  @EAT-1023-1 @EAT-1023-1-2
  Scenario: Add Image Alt for Advanced Page (Single Product)
    Given I am on Pages Page
    When I click on add advanced page button
    Then I should be redirected to Advanced Select Page
    When I click on 8th template
    Then I should be redirected to Page Builder Page
    Then I should see skip the guide button
    When I click on skip the guide button
    
    When I click on menu button
    Then I should see menu
    Then I should see single product button
    When I drag single product button to top location
    And I check and click empty single product
    And I wait for 3 seconds for loading
    Then I should see popup
    When I click on popup product included 'main product alt tag test'
    And I click on popup save button
    Then I should see 1 single product

    When I scroll down to bottom location
    When I click on menu button
    Then I should see menu
    Then I should see single product button
    
    When I drag single product button to bottom location
    And I check and click empty single product
    And I wait for 3 seconds for loading
    Then I should see popup
    When I click on popup product included 'main product with variations alt tag test'
    And I click on popup save button
    Then I should see 2 single product
    And I click on save button
    Then I should see view page button
    And I click on view page button
    And I switch to 2 of tabs

    Then I should be redirected to Shop Advanced Page
    When I scroll down to product
    Then 1st product should contain 'main product alt tag test'
    Then the tag name of 1st product image is 'div'
    Then 1st product image should not have attribute 'alt'
    Then 2nd product should contain 'main product with variations alt tag test'
    Then the tag name of 2nd product image is 'div'
    Then 2nd product image should not have attribute 'alt'
    And I hover over 2nd product
    And I click on 2nd add to cart button
    Then I should see popover
    Then popover product info should contain 'main product with variations alt tag test'
    Then the tag name of popover product image is 'img'
    Then popover product image should have attribute 'alt' equal to 'variations alt test'
    Then the tag name of popover product small image is 'div'
    Then popover product small image should have attribute 'alt' equal to 'variations alt test'
    And I select popover variation dropdown option included 'M' of 2nd popover variation dropdown
    Then the tag name of popover product image is 'img'
    Then popover product image should have attribute 'alt' equal to 'variations 2 alt test'
    Then the tag name of popover product small image is 'div'
    Then popover product small image should have attribute 'alt' equal to 'variations 2 alt test'
    And I select popover variation dropdown option included 'G' of 1st popover variation dropdown
    Then the tag name of popover product image is 'img'
    Then popover product image should have attribute 'alt' equal to 'variations 4 alt test'
    Then the tag name of popover product small image is 'div'
    Then popover product small image should have attribute 'alt' equal to 'variations 4 alt test'
    And I select popover variation dropdown option included 'S' of 2nd popover variation dropdown
    Then the tag name of popover product image is 'img'
    Then popover product image should have attribute 'alt' equal to 'variations 3 alt test'
    Then the tag name of popover product small image is 'div'
    Then popover product small image should have attribute 'alt' equal to 'variations 3 alt test'
    When I click on popover close button

    And ---ROLL BACK---
    Given I am on Product Index Page
    Then 1st row of product list should contain 'main product with variations alt tag test'
    Then 2nd row of product list should contain 'main product alt tag test'
    When I click on 1st row of product checkbox
    When I click on 2nd row of product checkbox
    And I select delete selected of bulk actions dropdown
    Then I should see delete confirmation popover
    When I click on delete checkbox
    And I click on confirm bulk button
    Then product list should not contain 'main product alt tag test'

    Given I am on Pages Page
    When I click on delete button
    Then I should see popover
    And I click on confirm button
    Then I click on ok button