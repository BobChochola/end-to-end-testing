@BaseCase @Admin @Storefront @Design @BuyNow @doubleClickBuyNowButton-Wishlist
@fixture-product @fixture-delivery @fixture-payment @fixture-shop @theme-ultra-chic
Feature: double click buy now button in wishlist
  As a Shopline
  when I turn on buy now button rollout key
  and I double click buy now button in wishlist, then check cart product quantity

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

  @EAT-1197 @EAT-1197-3
  Scenario: double click buy now button in wishlist
    Given I am on Shop Login Layout V Two Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Layout V Two Page

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

    Then 1st row of wishlist should contain '13th Product for Checkout'
    Then 1st row of wishlist should contain 'ADD TO CART'
    Then 1st row of wishlist should contain 'BUY NOW'

    Then I should see 1 row of add to cart button
    Then I should see 1 row of buy now button
    And I click on 1st row of buy now button
    And I wait for 3 seconds for loading
    Then I should be redirected to Shop Cart Layout V Two Page
    Then 1st row of cart item should contain '13th Product for Checkout'
    Then 1st item quantity field should contain '1'
    And I click on ultrachic member center button

    Then I should be redirected to Shop User Profile Layout V Two Page
    When I click on member center tab included 'Wishlist'
    Then I should be redirected to Shop Wishlist Layout V Two Page
    And I click on 1st row of buy now button
    And I wait for 3 seconds for loading
    Then I should be redirected to Shop Cart Layout V Two Page
    Then 1st row of cart item should contain '13th Product for Checkout'
    Then 1st item quantity field should contain '2'

    And ---ROLL BACK---
    And I click on remove button
    Then I should see delete confirmation popover
    And I click on ok button
    Then I should see empty message
    And I click on ultrachic member center button
    Then I should be redirected to Shop User Profile Layout V Two Page
    When I click on member center tab included 'Wishlist'
    Then I should be redirected to Shop Wishlist Layout V Two Page
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