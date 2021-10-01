@BaseCase @ImageService @Admin @Storefront @ImageGallery @createMainProductWithImageGallery @EAT-1000 @fixture-shop
Feature: upload image at Image Gallery
  As a merchant
  I want to upload image at image gallery page
  So that I can see correct image
 
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

  @EAT-1000-3
  Scenario: create main product and upload product photo from image gallery
    Given I am on Image Gallery Page
    When I pick png image to image selector
    And I wait for 3 seconds for uploading
    Then I should have image png image for 1st row of image
    Then row of image name should contain '2.png'
    Then image limit should contain '1 / 100000'
    When I clear and pick jpg image to image selector
    And I wait for 3 seconds for uploading
    Then I should have image jpg image for 1st row of image
    Then row of image name should contain '3.jpg'
    Then image limit should contain '2 / 100000'
    When I click on 1st copy url button
    Then I should see alert
    
    Given I am on Product Create Page
    Then I should see from gallery button
    When I click on from gallery button
    Then I should see image gallery popover
    Then image select count should contain '0/12'
    When I click on 1st row of image list
    And I click on 2nd row of image list
    Then image select count should contain '2/12'
    When I pick product photo to image selector
    And I wait for 3 seconds for loading
    Then 1st row of image list should contain '1.png'
    When I click on 1st row of image list
    Then image select count should contain '3/12'
    Then select button should contain 'Selected 3 image(s)'
    When I click on select button
    Then I should see 3 delete photo button
    Then product photo count should contain '3 / 12'
    Then I scroll down to id
    And I click on info tab
    And I fill '(dirty data) none variation and main photo from image gallery' to english name field
    And I click on description field
    And I click on image button
    Then I should see image upload popover
    When I click on upload url button
    Then I should see upload url popover
    When I paste copied text to url field
    Then url field should contain 'https://img.shoplineapp.com'
    When I click on popup ok button
    Then I should see upload image
    Then I should have image jpg image for upload image
    When I click on confirm button
    Then I should have image jpg image for description image 
    Then I scroll down to add button
    And I click on quantity and pricing tab
    And I fill '10' to regular price field
    And I click on unlimited quantity checkbox
    Then I scroll down to add button
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    Then I should have image jpg image for row of product photo list
    Then 1st row of product list should contain 'none variation and main photo from image gallery'
    Then 1st row of regular price list should contain '10'
    Then 1st row of quantity list should contain '∞'

    Given I am on Shop Product Index Page
    Then 1st product of products list should contain 'none variation and main photo from image gallery'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain 'none variation and main photo from image gallery'
    Then I should have image jpg image for 1st main product image button
    Then I should have image png image for 2nd main product image button
    Then I should have image product photo for 3rd main product image button
    Then I should have image jpg image for description image

    Given I am on Image Gallery Page
    Then I should see 3 row of image
    Then I should have image product photo for 1st row of image
    Then 1st row of image name should contain '1.png'
    Then image limit should contain '3 / 100000'

    Then ---ROLL BACK---
    When I click on 3rd delete button
    Then I should see delete popover
    When I click on ensure checkbox
    And I click on ok button
    When I click on 2nd delete button
    Then I should see delete popover
    When I click on ensure checkbox
    And I click on ok button
    When I click on 1st delete button
    Then I should see delete popover
    When I click on ensure checkbox
    And I click on ok button
    Then image list should not contain '3.jpg'
    Then image list should not contain '2.png'
    Then image list should not contain '1.png'

    Given I am on Product Index Page
    Then 1st row of product list should contain 'none variation and main photo from image gallery'
    When I click on 1st row of product checkbox
    When I select delete selected of bulk actions dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm bulk button
    Then product list should not contain 'none variation and main photo from image gallery'