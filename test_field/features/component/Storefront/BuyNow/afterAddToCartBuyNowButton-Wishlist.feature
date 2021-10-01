@BaseCase @Admin @Storefront @Design @BuyNow @afterAddToCartBuyNowButton-Wishlist
@fixture-product @fixture-delivery @fixture-payment @fixture-shop @theme-ultra-chic
Feature: cart has some product, then click buy now button in wishlist
  As a Shopline
  when I turn on buy now button rollout key
  and cart has some product then click buy now button in wishlist

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click no thanks button

    Given I am on Design Page
    And I click on advanced setting tab
    Then I should see buy it now checkbox
    Then I click on buy it now checkbox
    And I click on save button
    And I click on publish button
    Then I should not see publish button
    Then buy it now checkbox should be checked

  @EAT-1197 @EAT-1197-2
  Scenario: cart has some product, then click buy now button in wishlist
    Given I am on Shop Login Layout V Two Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Layout V Two Page 

    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    And I input "Out Of Stock" to search field
    Then 1st product of products list should contain 'Out Of Stock'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    Then I should see sold out
    Then I should see notify when in stock button
    Then I should see add to wishlist button off
    When I click on add to wishlist button off
    Then I should see alert
    Then alert should contain "When product is back in stock, there will be email notification."
    Then notify when in stock button should contain 'In Stock Notification On'
    
    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    And I input "18th Product for Checkout" to search field
    Then 1st product of products list should contain '18th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    Then I should see add to wishlist button off
    When I click on add to wishlist button off
    Then I should see add to wishlist button on

    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    And I input "13th Product for Checkout" to search field
    Then 1st product of products list should contain '13th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    Then I should see add to wishlist button off
    When I click on add to wishlist button off
    Then I should see add to wishlist button on
    When I click on ultrachic member center button

    Then I should be redirected to Shop User Profile Layout V Two Page
    When I click on member center tab included 'Wishlist'
    Then I should be redirected to Shop Wishlist Layout V Two Page
    Then 3rd row of wishlist should contain 'Out Of Stock'
    Then 3rd row of wishlist should contain 'In Stock Notification On'

    Then 2nd row of wishlist should contain '18th Product for Checkout'
    Then 2nd row of wishlist should contain 'ADD TO CART'
    Then 2nd row of wishlist should contain 'BUY NOW'

    Then 1st row of wishlist should contain '13th Product for Checkout'
    Then 1st row of wishlist should contain 'ADD TO CART'
    Then 1st row of wishlist should contain 'BUY NOW'

    Then I should see 2 row of add to cart button
    Then I should see 2 row of buy now button
    And I click on 1st row of add to cart button
    Then I should see cart panel
    And I click on 2nd row of buy now button
    And I wait for 3 seconds for loading
    Then I should be redirected to Shop Cart Layout V Two Page
    Then I should see 2 row of cart item
    Then 1st row of cart item should contain '13th Product for Checkout'
    Then 2nd row of cart item should contain '18th Product for Checkout'

    And ---ROLL BACK---
    And I click on remove button
    Then I should see delete confirmation popover
    And I click on ok button
    And I wait for 3 seconds for loading
    And I click on remove button
    Then I should see delete confirmation popover
    And I click on ok button
    And I wait for 3 seconds for loading
    Then I should see empty message
    And I click on ultrachic member center button
    Then I should be redirected to Shop User Profile Layout V Two Page
    When I click on member center tab included 'Wishlist'
    Then I should be redirected to Shop Wishlist Layout V Two Page
    When I click on 3rd row of delete button
    Then I should see popup
    When I click on confirm button
    When I click on 2nd row of delete button
    Then I should see popup
    When I click on confirm button
    When I click on 1st row of delete button
    Then I should see popup
    When I click on confirm button
    And I wait for 3 seconds for loading
    Then I should see continue shopping button

    Given I am on Design Page
    And I click on advanced setting tab
    And I click on row of preference label included "Activate the \"Buy Now Button\" feature to the store"
    And I click on save button
    And I click on publish button
    Then I should not see publish button
    Then buy it now checkbox should not be checked