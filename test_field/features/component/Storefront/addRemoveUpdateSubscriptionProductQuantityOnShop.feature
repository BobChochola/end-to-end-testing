@BaseCase @Storefront @Admin @addRemoveUpdateSubscriptionProductQuantityOnShop @fixture-shop @fixture-product @fixture-freegift @fixture-subscription-product @fixture-payment @fixture-delivery @fixture-promotion @EAT-1041
Feature: Check Product add/remove/update subscription product qantity on product-detail-page/cart-page/cart-in-sidebar/express-checkout-page/quick-add-to-cart
  As a shopper
  I can add/remove/update subscription product qantity on shop 

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

    Given I am on Promotion Index Page
    When I input '18th Free Gift Promotion' to search field
    Then 1st row of promotion list should contain '18th Free Gift Promotion'
    And I click on row of select checkbox list
    And I select publish of bulk actions dropdown

    Given I am on Product Index Page
    When I input '17th Product for Checkout' to search field
    Then 1st row of product name should contain '17th Product for Checkout'
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on quantity and pricing tab
    When I check and click product subscription disabled
    Then I should see product subscription enabled
    When I click on update button

  @EAT-1041-3
  Scenario: Increase/decrease/update/remove subscription-product/addon/freegift quantity on product-detail-page/cart-page/cart-in-sidebar/express-checkout-page/quick-add-to-cart
    Given I am on Promotion Setting Page
    And I should see show promotion campaign toggle
    And I check and click show promotion campaign toggle off
    Then show promotion campaign toggle should be checked
    When I click on update button
    Then I should see alert

    Given I am on Design Page
    Then I click on advanced setting tab
    And I click on preference checkbox included "Instant Add to Cart"
    And I click on current window checkbox
    And I click on save button
    And I wait for 3 seconds for loading
    When I click on publish button
    And I wait for 10 seconds for loading
    And instant add to cart checkbox should be checked
    And current window checkbox should be checked

    Given I am on Shop Product Index Page
    When I input '17th Product for Checkout' to search field
    Then 1st product of products list should contain '17th Product for Checkout'
    Then I hover over 1st product of products list
    When I click on add to cart
    Then I should see cart popover
    When I click on popover increase button
    Then popover quantity field should contain '2'
    When I click on add to cart button
    Then I should see cart panel
    And I should see 1 cart item list
    And 1st cart item list should contain '2x NT$10'
    And I click on remove button
    And I click on close cart panel area
    Then 1st product of products list should contain '17th Product for Checkout'
    Then I hover over 1st product of products list
    When I click on add to cart
    Then I should see cart popover
    Then I fill '3' to popover quantity field
    When I click on add to cart button
    Then I should see cart panel
    And I should see 1 cart item list
    And 1st cart item list should contain '3x NT$10'
    And I click on close cart panel area
    Then 1st product of products list should contain '17th Product for Checkout'
    Then I hover over 1st product of products list
    When I click on add to cart
    Then I should see cart popover
    Then I fill '2' to popover quantity field
    When I click on popover decrease button
    Then popover quantity field should contain '1'
    When I click on add to cart button
    Then I should see cart panel
    And I should see 1 cart item list
    And 1st cart item list should contain '4x NT$10'
    And I click on remove button
    And I click on close cart panel area

    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain '17th Product for Checkout'
    And I click on increase button
    And I click on increase addon quantity button
    When I click on buy together button
    Then I should see cart panel
    And 1st cart item list should contain '17th Product for Checkout'
    And 1st cart item list should contain '2x NT$10'
    And 2nd cart item list should contain '3rd Addon for Checkout'
    And 2nd cart item list should contain '1x NT$10'
    When I click on close cart panel area
    When I fill '2' to product quantity field
    When I fill '2' to addon quantity field
    When I click on buy together button
    Then I should see cart panel
    And 1st cart item list should contain '17th Product for Checkout'
    And 1st cart item list should contain '4x NT$10'
    And 2nd cart item list should contain '3rd Addon for Checkout'
    And 2nd cart item list should contain '3x NT$10'
    When I click on close cart panel area
    And I fill '2' to product quantity field
    And I fill '1' to addon quantity field
    And I click on decrease button
    And I click on addon decrease button
    When I click on add to cart button
    Then I should see cart panel
    And 1st cart item list should contain '17th Product for Checkout'
    And 1st cart item list should contain '5x NT$10'
    And 2nd cart item list should contain '3rd Addon for Checkout'
    And 2nd cart item list should contain '3x NT$10'
    When I click on close cart panel area
    And 1st promotion tag should contain '18th Free Gift Promotion on selected products'
    When I click on 1st promotion tag

    When I switch to 2 of tabs
    Then I should be redirected to Shop Promotion Page
    And I should see promotion cart panel
    When I hover over promotion cart image
    When I click on promotion cart remove button
    Then I should be redirected to Shop Promotion Page
    Then 1st product of products list should contain '17th Product for Checkout'
    When I click on 1st add to cart button
    Then quick cart product info should contain '17th Product for Checkout'
    And I click on quick cart increase button
    When I click on quick cart add to cart button
    Then I should see 1 bundle cart item
    And 1st bundle cart item should contain '17th Product for Checkout'
    And bundle cart item quantity field should contain '2'
    When I click on 1st add to cart button
    Then quick cart product info should contain '17th Product for Checkout'
    And I fill '7' to quick cart quantity field
    When I click on quick cart add to cart button
    Then I should see 1 bundle cart item
    And 1st bundle cart item should contain '17th Product for Checkout'
    And bundle cart item quantity field should contain '9'
    When I click on 1st add to cart button
    Then quick cart product info should contain '17th Product for Checkout'
    And I fill '2' to quick cart quantity field
    And I click on quick cart decrease button
    When I click on quick cart add to cart button
    Then I should see 1 bundle cart item
    And 1st bundle cart item should contain '17th Product for Checkout'
    And bundle cart item quantity field should contain '10'
    And I fill '3' to 1st bundle cart item quantity field
    When I click on bundle cart checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    Then I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    Then I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    Then I wait for 3 seconds for loading
    And 1st row of cart item should contain '17th Product for Checkout'
    And 1st item quantity field should contain '3'
    Then applied promotion should contain '18th Free Gift Promotion'
    When I click on row of applied promotion included '18th Free Gift Promotion'
    Then I should be redirected to Shop Promotion Page
    When I click on cart item increase button
    Then bundle cart item quantity field should contain '4'
    When I click on bundle cart checkout button
    Then I should be redirected to Shop Cart Page
    And 1st row of cart item should contain '17th Product for Checkout'
    And 1st item quantity field should contain '4'
    Then applied promotion should contain '18th Free Gift Promotion'
    When I click on row of applied promotion included '18th Free Gift Promotion'
    Then I should be redirected to Shop Promotion Page
    When I click on cart item decrease button
    Then bundle cart item quantity field should contain '3'
    When I click on bundle cart checkout button
    Then I should be redirected to Shop Cart Page
    And 1st row of cart item should contain '17th Product for Checkout'
    And 1st item quantity field should contain '3'
    When I click on 1st row of cart item image
    When I switch to 3 of tabs
    Then I should be redirected to Shop Product Show Page
    When I click on cart button
    Then I should see cart panel
    When I click on remove button
    Then cart panel should contain 'Your Shopping Cart is empty'
    And I click on close cart panel area
    And I fill '3' to product quantity field
    And I fill '3' to addon quantity field
    When I click on buy together button
    Then I should see cart panel
    When I click on checkout button

    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    Then I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    Then I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    Then I wait for 3 seconds for loading
    Then I should see 3 row of cart item
    And 1st row of cart item should contain '17th Product for Checkout'
    And 2nd row of cart item should contain '3rd Addon for Checkout'
    And 3rd row of cart item should contain '2nd Created Free Gift'
    And 1st item quantity field should contain '3'
    And 2nd item quantity field should contain '3'
    And freegift quantity should contain '3'
    And I should see 2 decrease button
    When I click on 2nd decrease button
    Then I wait for 5 seconds for loading
    When I click on 1st decrease button
    And 1st item quantity field should contain '2'
    And 2nd item quantity field should contain '2'
    And freegift quantity should contain '1'
    And I should see 2 increase quantity button
    When I click on 1st increase quantity button
    Then I wait for 5 seconds for loading
    When I click on 2nd increase quantity button
    And 1st item quantity field should contain '3'
    And 2nd item quantity field should contain '3'
    And freegift quantity should contain '3'
    And I should see 2 item quantity field
    When I fill '5' to 1st item quantity field
    Then I wait for 5 seconds for loading
    When I fill '5' to 2nd item quantity field
    And 1st item quantity field should contain '5'
    And 2nd item quantity field should contain '5'
    And freegift quantity should contain '6'
    And I should see 2 remove button
    When I click on 2nd remove button
    Then I should see delete confirmation popover
    And I click on ok button
    Then 1st row of cart item should contain '17th Product for Checkout'
    And 2nd row of cart item should contain '2nd Created Free Gift'
    When I click on 1st remove button
    Then I should see delete confirmation popover
    And I click on ok button
    Then I should see empty message

    And ---ROLL BACK---
    Given I am on Design Page
    Then I click on advanced setting tab
    And I click on new window checkbox
    And I click on preference checkbox included "Instant Add to Cart"
    And I click on save button
    And I wait for 3 seconds for loading
    When I click on publish button
    And I wait for 10 seconds for loading
    And instant add to cart checkbox should not be checked

    Given I am on Promotion Setting Page
    When I click on show promotion campaign toggle
    Then show promotion campaign toggle should not be checked
    When I click on update button
    Then I should see alert

    Given I am on Promotion Index Page
    When I input '18th Free Gift Promotion' to search field
    Then 1st row of promotion list should contain '18th Free Gift Promotion'
    And I click on row of select checkbox list
    And I select unpublish of bulk actions dropdown

    Given I am on Product Index Page
    When I input '17th Product for Checkout' to search field
    Then 1st row of product name should contain '17th Product for Checkout'
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on quantity and pricing tab
    When I check and click product subscription enabled
    Then I should see product subscription disabled
    When I click on update button

  @EAT-1041-4
  Scenario: Increase/decrease/update/remove subscription-product/addon/freegift quantity on Express-checkout-page
    Given I am on Express Checkout Pages Page
    When I click on create button
    Then I should be redirected to Express Checkout Builder Page
    Then I should see skip the guide button
    And I click on skip the guide button
    Then I should see product picker
    And I input "17th Product for Checkout" to search field
    Then I click on search button
    Then I should see product of product list
    Then 1st product of product list should contain '17th Product for Checkout'
    And I click on 1st product of product list
    And I click on popup save button
    And I click on save page button
    Then I should see view page button
    When I click on view page button
    And I switch to 2 of tabs
    Then I should be on Shop Express Checkout Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    Then I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    Then I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    Then I wait for 3 seconds for loading
    Then I should see 1 add quantity button
    When I click on add quantity button
    When I click on add quantity button
    And I wait for 3 seconds for loading
    Then quantity field should contain '3'
    Then applied promotion should contain 'Get 3 Free Gift'
    When I click on sub quantity button
    And I wait for 3 seconds for loading
    Then quantity field should contain '2'
    Then applied promotion should contain 'Get 1 Free Gift'
    When I fill '5' to quantity field
    And I wait for 3 seconds for loading
    Then applied promotion should contain 'Get 6 Free Gift'

    And ---ROLL BACK---
    Given I am on Express Checkout Pages Page
    When I click on delete button
    Then I should see delete confirmation popup
    And I click on reconfirm checkbox
    When I click on ok button
    Then I should not see delete button

    Given I am on Promotion Index Page
    When I input '18th Free Gift Promotion' to search field
    Then 1st row of promotion list should contain '18th Free Gift Promotion'
    And I click on row of select checkbox list
    And I select unpublish of bulk actions dropdown

    Given I am on Product Index Page
    When I input '17th Product for Checkout' to search field
    Then 1st row of product name should contain '17th Product for Checkout'
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on quantity and pricing tab
    When I check and click product subscription enabled
    Then I should see product subscription disabled
    When I click on update button