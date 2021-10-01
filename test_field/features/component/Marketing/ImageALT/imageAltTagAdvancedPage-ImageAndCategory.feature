@BaseCase @ImageService @Admin @Storefront @Product @AdvancedPage @Marketing @ImageALT @imageAltTagAdvancedPage-ImageAndCategory @fixture-shop @EAT-1023
Feature: Add Image Alt for Advanced Page (Image & Category)
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

    Given I am on Category Create Page
    And I fill "(dirty data) New Category" to category name field
    And I click on add button
    Then I should be redirected to Category List Page
    Then 2nd row of categories list should contain "New Category"

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
    And I click on categories tab
    And I click on 2nd row of categories checkbox
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
    When I scroll down to breadcrumb
    And I click on categories tab
    And I click on 2nd row of categories checkbox
    Then I scroll down to add button
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    Then I should see row of product photo list
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain 'main product with variations alt tag test'

  @EAT-1023-1 @EAT-1023-1-1
  Scenario: Add Image Alt for Advanced Page (Image & Category)
    Given I am on Pages Page
    When I click on add advanced page button
    Then I should be redirected to Advanced Select Page
    When I click on 8th template
    Then I should be redirected to Page Builder Page
    Then I should see skip the guide button
    When I click on skip the guide button
    And I click on default image
    Then I should see image upload zone
    Then I should see 2 uploaded photo item
    When I click on uploaded photo item more button
    Then I should see image alt field
    When I fill 'advanced full image alt test' to image alt field
    When I click on save and close button
    Then I should not see skip the guide button

    When I click on 2nd default image
    Then I should see image upload zone
    When I pick photo to photo selector
    And I wait for 3 seconds for loading
    And I click on 2nd delete photo item button
    Then I should see 2 uploaded photo item
    Then I should see image alt field
    When I fill 'advanced image alt test' to image alt field
    When I click on save and close button

    When I click on menu button
    Then I should see product category button
    When I drag product category button to top location
    And I check and click edit category button
    And I wait for 5 seconds for loading
    Then I should see category checkbox
    When I click on category checkbox included 'New Category'
    And I wait for 3 seconds for loading
    When I click on save and close button
    Then I should see product category item

    And I click on save button
    Then I should see view page button
    And I click on view page button
    And I switch to 2 of tabs

    Then I should be redirected to Shop Advanced Page
    Then I should see full width image
    Then the tag name of full width image is 'img'
    Then full width image should have attribute 'alt' equal to 'advanced full image alt test'
    Then I should see origin size image
    Then the tag name of origin size image is 'img'
    Then origin size image should have attribute 'alt' equal to 'advanced image alt test'
    Then I should see category title
    Then 1st category product should contain 'main product with variations alt tag test'
    Then the tag name of 1st category product image is 'div'
    Then 1st category product image should not have attribute 'alt'
    Then 2nd category product should contain 'main product alt tag test'
    Then the tag name of 2nd category product image is 'div'
    Then 2nd category product image should not have attribute 'alt'

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

    Given I am on Category List Page
    When I click delete button of categories list for the same order of row of categories list included "(dirty data) New Category"
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see 1 delete button of categories list