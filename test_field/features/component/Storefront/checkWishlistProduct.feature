@BaseCase @Admin @Storefront @Product @checkWishlistProduct @EAT-744
Feature: Check each product status on wishlist and edit wishlist successfully
  As a shopliner
  I want to my customer can add product to wishlist and edit wishlist

  @EAT-744-1 @fixture-product @fixture-shop
  Scenario: check sign in/up tips, add product to cart from wishlist and remove from trash button
    Given I am on Shop Product Index Page
    When I input "4th Product for Checkout" to search field
    Then 1st product of products list should contain '4th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain "4th Product for Checkout"
    Then I should see add to wishlist button
    When I click on add to wishlist button
    Then I should see wishlist tips link
    When I click on wishlist tips link
    Then I should be redirected to Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Product Show Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    Then I should see add to wishlist button
    When I click on add to wishlist button
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Wishlist'
    Then I should be redirected to Shop Wishlist Page
    Then 1st row of wishlist should contain '4th Product for Checkout'
    Then 1st row of product price should contain 'NT$20'
    Then 1st row of product price should contain 'NT$10'
    When I click on 1st row of add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then 1st row of cart item should contain '4th Product for Checkout'
    When I click on remove button
    Then I should see delete confirmation popover
    When I click on ok button
    Then I should see empty message
    Then empty message should contain "Your shopping cart is empty"
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Wishlist'
    Then I should be redirected to Shop Wishlist Page
    When I click on 1st row of delete button
    Then I should see popup
    When I click on confirm button
    Then I should see continue shopping button

  @EAT-744-2 @fixture-product @fixture-shop
  Scenario: add product to wishlist with login member and remove from adding to wishlist button
    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    Given I am on Shop Product Index Page
    When I input "18th Product for Checkout" to search field
    Then 1st product of products list should contain '18th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see add to wishlist button
    When I click on add to wishlist button
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Wishlist'
    Then I should be redirected to Shop Wishlist Page
    Then 1st row of wishlist should contain '18th Product for Checkout'
    Then 1st row of wishlist should contain 'Color : Blue'
    Then 1st row of product price should contain 'NT$100'
    When I click on 1st row of product title
    And I switch to 2 of tabs
    Then I should be redirected to Shop Product Show Page
    Then product info should contain "18th Product for Checkout"
    Then I should see add to wishlist button
    When I click on add to wishlist button
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Wishlist'
    Then I should be redirected to Shop Wishlist Page
    Then I should see continue shopping button

  @EAT-744-3 @fixture-product @fixture-shop
  Scenario: Check product status on wishlist page
    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    Given I am on Shop Product Index Page
    When I input "20th Product for Checkout" to search field
    Then 1st product of products list should contain '20th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see add to wishlist button
    When I click on add to wishlist button
    Then I should see add to wishlist button on
    When I input "Out Of Stock" to search field
    Then I should be redirected to Shop Product Index Page
    Then 1st product of products list should contain 'Out Of Stock'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see add to wishlist button
    When I click on add to wishlist button
    Then I should see add to wishlist button on
    And I click on notify when in stock button
    Then I should not see notify when in stock button on
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Wishlist'
    Then I should be redirected to Shop Wishlist Page
    Then 1st row of wishlist should contain 'Out Of Stock'
    Then 1st row of wishlist should contain 'SOLD OUT'
    Then 1st row of product price should contain 'NT$20'
    Then 2nd row of wishlist should contain '20th Product for Checkout'
    Then 2nd row of wishlist should contain 'UNAVAILABLE'
    Then 2nd row of wishlist should not contain 'NT$'
    Then ---I NEED TO ROLLBACK row of wishlist---
    When I click on 1st row of delete button
    Then I should see popup
    When I click on confirm button
    Then 1st row of wishlist should not contain 'Out Of Stock'
    When I click on 1st row of delete button
    Then I should see popup
    When I click on confirm button
    Then I should see continue shopping button

  @EAT-744-4 @fixture-product @fixture-shop
  Scenario: update product and check product status on wishlist page
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
    And I click on info tab
    And I fill "(dirty data) wishlist list update check" to english name field
    And I click on quantity and pricing tab
    And I fill "50" to regular price field
    And I fill "10" to sale price field
    And I click on unlimited quantity checkbox
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page

    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    Given I am on Shop Product Index Page
    When I input "(dirty data) wishlist list update check" to search field
    Then 1st product of products list should contain '(dirty data) wishlist list update check'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see add to wishlist button
    When I click on add to wishlist button
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Wishlist'
    Then I should be redirected to Shop Wishlist Page
    Then 1st row of wishlist should contain '(dirty data) wishlist list update check'
    Then 1st row of wishlist should contain 'ADD TO CART'
    Then 1st row of product price should contain 'NT$50'
    Then 1st row of product price should contain 'NT$10'

    #unpublish product
    Given I am on Product Index Page
    Then I should see row of publish button
    When I click on 1st row of publish button
    Then 1st row of publish button should contain 'Publish'

    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Wishlist'
    Then I should be redirected to Shop Wishlist Page
    Then 1st row of wishlist should contain '(dirty data) wishlist list update check'
    Then 1st row of wishlist should contain 'UNAVAILABLE'
    Then 1st row of product price should contain 'NT$50'
    Then 1st row of product price should contain 'NT$10'

    #add variant
    Given I am on Product Index Page
    Then I should see row of publish button
    When I click on 1st row of publish button
    Then 1st row of publish button should contain 'Unpublish'
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on tab included 'Variations'
    Then I should see variations toggle
    And I click on variations toggle
    When I input "Red" to add options field
    And I input "Blue" to add options field
    And I click on edit language button
    And I click on update button
    Then I should be redirected to Product Index Page

    Given I am on Shop Product Index Page
    When I input "(dirty data) wishlist list update check" to search field
    Then 1st product of products list should contain '(dirty data) wishlist list update check'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see add to wishlist button
    When I click on add to wishlist button
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Wishlist'
    Then I should be redirected to Shop Wishlist Page
    Then 1st row of wishlist should contain '(dirty data) wishlist list update check'
    Then 1st row of wishlist should contain 'ADD TO CART'
    Then 1st row of wishlist should contain 'Color : Red'
    Then 1st row of product price should contain 'NT$50'
    Then 1st row of product price should contain 'NT$10'
    Then 2nd row of wishlist should not contain 'Color : Red'
    When I click on 2nd row of delete button
    Then I should see popup
    When I click on confirm button

    #update variant
    Given I am on Product Index Page
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on tab included 'Variations'
    And I click on edit language button
    Then I should see popup
    And I input "Black" to 1st row of english variation name field
    And I click on update button
    Then I should be redirected to Product Index Page

    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Wishlist'
    Then I should be redirected to Shop Wishlist Page
    Then 1st row of wishlist should contain '(dirty data) wishlist list update check'
    Then 1st row of wishlist should contain 'ADD TO CART'
    Then 1st row of wishlist should contain 'Color : Black'
    Then 1st row of product price should contain 'NT$50'
    Then 1st row of product price should contain 'NT$10'

    #delete variant
    Given I am on Product Index Page
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on tab included 'Variations'
    And I click on 1st remove row of variation tags
    And I click on update button
    Then I should be redirected to Product Index Page

    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Wishlist'
    Then I should be redirected to Shop Wishlist Page
    Then I should see continue shopping button

    #delete product
    Given I am on Shop Product Index Page
    When I input "(dirty data) wishlist list update check" to search field
    Then 1st product of products list should contain '(dirty data) wishlist list update check'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see add to wishlist button
    When I click on add to wishlist button

    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then 1st row of product list should not contain "(dirty data) wishlist list update check"

    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Wishlist'
    Then I should be redirected to Shop Wishlist Page
    Then I should see continue shopping button

  # @EAT-744-5 @fixture-product @fixture-shop
  # Scenario: check wishlist without installed from app store
  #   Given I am on Shop Product Index Page
  #   When I input "4th Product for Checkout" to search field
  #   Then 1st product of products list should contain '4th Product for Checkout'
  #   When I click on 1st product of products list
  #   Then I should be redirected to Shop Product Show Page
  #   Then product info should contain "4th Product for Checkout"
  #   Then I should not see add to wishlist button