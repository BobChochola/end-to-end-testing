@BaseCase @Admin @Storefront @Product @Checkout @AdvancedPage @threeProductOneAddonWithWeightAdvancedPage711B2CV1
@fixture-payment @fixture-delivery @fixture-product @fixture-addon @fixture-shop @EAT-817
Feature: Variant product and addon checkout without login from advanced page (711 B2C) V1
  As a merchant
  I want each product to apply different weight
  So that delivery fee can be more accurate

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

    Given I am on Product Setting Page
    Then price range setting block should contain 'Currently using'

    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) 2 variant with weight" to english name field
    And I click on variations tab
    When I click on variations toggle
    And I input "R" to add options field
    And I input "G" to add options field
    When I click on add variation button
    And I input "S" to 2nd add options field
    And I input "M" to 2nd add options field
    And I click on variations same price checkbox
    And I fill "50" to 1st row of variation price field
    And I fill "100" to 2nd row of variation price field
    And I fill "50" to 3rd row of variation price field
    And I fill "100" to 4th row of variation price field
    And I fill "20" to 1st row of variation sale price field
    And I fill "40" to 2nd row of variation sale price field
    And I fill "20" to 3rd row of variation sale price field
    And I fill "40" to 4th row of variation sale price field
    And I fill "10" to 1st row of variation member price field
    And I fill "30" to 2nd row of variation member price field
    And I fill "10" to 3rd row of variation member price field
    And I fill "30" to 4th row of variation member price field
    And I fill "200" to 1st row of variation quantity field
    And I fill "100" to 2nd row of variation quantity field
    And I fill "300" to 3rd row of variation quantity field
    And I fill "400" to 4th row of variation quantity field
    And I fill "5.1" to 1st row of variation weight field
    And I fill "2.8" to 2nd row of variation weight field
    And I fill "5.1" to 3rd row of variation weight field
    And I fill "2.8" to 4th row of variation weight field
    Then I scroll down to id
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page

    Given I am on Cart Add On Items Create Page
    And I fill "(dirty data) Add-on Item" to english name field
    When I click on select add on items button
    Then I should see search add on items field
    And I input "3rd Addon for Checkout" to search add on items field
    When I click on search button
    Then add on items name should contain "3rd Addon for Checkout"
    And I click on 1st add on items checkbox
    When I click on add on items save button
    Then I should see add on items price field
    And I fill '10' to add on items price field
    And I click on unlimited checkbox
    When I click on save button
    Then I should be redirected to Cart Add On Items Index Page
    Then I should see alert
    Then 1st row of cart addon list should contain "Add-on Item"

    Given I am on Pages Page
    When I click on add advanced page button
    Then I should be redirected to Advanced Select Page
    When I click on 8th template
    Then I should be redirected to Page Builder Page
    Then I should see skip the guide button
    When I click on skip the guide button
    When I click on menu button
    And I wait for 3 seconds for loading
    Then I should see single product button
    When I drag single product button to top location
    And I check and click empty single product
    And I wait for 3 seconds for loading
    Then I should see popup
    When I input '4th Product for Checkout' to popup search field
    When I click on popup product included '4th Product for Checkout'
    And I click on popup save button
    Then I should see single product
    When I click on menu button
    Then I should see menu
    Then I should see single product button
    When I drag single product button to top location
    And I check and click empty single product
    And I wait for 3 seconds for loading
    Then I should see popup
    When I input '6th Product for Checkout' to popup search field
    When I click on popup product included '6th Product for Checkout'
    And I click on popup save button
    Then I should see 2 single product
    When I click on menu button
    Then I should see menu
    Then I should see single product button
    When I drag single product button to top location
    And I check and click empty single product
    And I wait for 3 seconds for loading
    Then I should see popup
    When I input '2 variant with weight' to popup search field
    When I click on popup product included '2 variant with weight'
    And I click on popup save button
    Then I should see 3 single product
    And I click on save button
    Then I should see view page button
    And I click on view page button
    And I switch to 2 of tabs

  @EAT-817-15
  Scenario: I want to buy products with different weight and pay correct shipping fee
    Then I should be redirected to Shop Advanced Page
    When I scroll down to product
    Then 1st product should contain '2 variant with weight'
    Then 1st regular price of product list should contain 'NT$100'
    Then 1st sale price of product list should contain 'NT$20 ~ NT$40'
    And I hover over 1st product
    And I click on 1st add to cart button
    Then I should see popover
    Then popover sale price should contain 'NT$20'
    Then popover regular price should contain 'NT$50'
    And I click on popover add to cart button
    Then I should see cart panel
    When I click on close cart panel area
    Then 2nd product should contain '6th Product for Checkout'
    Then 2nd regular price of product list should contain 'NT$59'
    When I scroll down to 2nd product
    When I hover over 2nd product
    And I click on 2nd add to cart button
    Then I should see popover
    Then popover regular price should contain 'NT$59'
    And I click on popover add to cart button
    Then I should see cart panel
    When I click on close cart panel area
    Then 3rd product should contain '4th Product for Checkout'
    Then 3rd regular price of product list should contain 'NT$20'
    Then 2nd sale price of product list should contain 'NT$10'
    When I scroll down to 3rd product
    When I hover over 3rd product
    And I click on 3rd add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then 1st row of unit price should contain "NT$20"
    Then 1st row of subtotal price should contain "NT$20"
    Then 1st item quantity field should contain '1'
    Then 1st row of cart item should contain '2 variant with weight'
    Then 2nd row of unit price should contain "NT$59"
    Then 2nd row of subtotal price should contain "NT$59"
    Then 2nd item quantity field should contain '1'
    Then 2nd row of cart item should contain '6th Product for Checkout'
    Then 3rd row of unit price should contain "NT$10"
    Then 3rd row of subtotal price should contain "NT$10"
    Then 3rd item quantity field should contain '1'
    Then 3rd row of cart item should contain '4th Product for Checkout'
    When I click on cart addon items button
    Then 4th row of unit price should contain "NT$10"
    Then 4th row of subtotal price should contain "NT$10"
    Then 4th item quantity field should contain '1'
    Then 4th row of cart item should contain '3rd Addon for Checkout'
    When I select country dropdown option included "Taiwan" of country list dropdown
    Then I wait for 3 seconds for loading
    And I select delivery dropdown option included "(DBW) 7-11 B2C - Pickup and pay in store" of delivery method dropdown
    Then I wait for 3 seconds for loading
    Then cart item subtotal should contain 'NT$99'
    Then delivery fee should contain 'NT$20'
    Then total should contain 'NT$119'
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    Then I click on cart summary
    Then 1st row of product items should contain "2 variant with weight"
    Then 1st cart item price should contain 'NT$20'
    Then 1st cart item quantity should contain '1'
    Then 1st cart item subtotal should contain 'NT$20'
    Then 2nd row of product items should contain "6th Product for Checkout"
    Then 2nd cart item price should contain 'NT$59'
    Then 2nd cart item quantity should contain '1'
    Then 2nd cart item subtotal should contain 'NT$59'
    Then 3rd row of product items should contain "4th Product for Checkout"
    Then 3rd cart item price should contain 'NT$10'
    Then 3rd cart item quantity should contain '1'
    Then 3rd cart item subtotal should contain 'NT$10'
    Then 4th row of product items should contain "3rd Addon for Checkout"
    Then 4th cart item price should contain 'NT$10'
    Then 4th cart item quantity should contain '1'
    Then 4th cart item subtotal should contain 'NT$10'

    Then total price should contain "NT$119"
    Then order summary should contain 'Item Subtotal:NT$99'
    Then order summary should contain 'Delivery Fee:NT$20'
    Then order summary should contain 'Total:NT$119'
    When I click on pick store button
    Then I should be redirected to Seven Pick Store Page
    When I click on id search button
    And I switch to main frame frame
    Then I should see store id field
    And I fill store id to store id field
    And I click on search button
    And I click on 1st store list
    When I switch to default frame
    Then I should see store confirm button
    And I click on store confirm button
    And I click on agree button
    And I click on submit button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then delivery fee should contain "NT$20"
    Then total should contain "NT$119"
    Then 1st row of product unit price should contain "NT$20"
    Then 1st row of product subtotal should contain "NT$20"
    Then 1st row of product quantity should equal to "1"
    Then 1st row of product items should contain "2 variant with weight"
    Then 2nd row of product unit price should contain "NT$59"
    Then 2nd row of product subtotal should contain "NT$59"
    Then 2nd row of product quantity should equal to "1"
    Then 2nd row of product items should contain "6th Product for Checkout"
    Then 3rd row of product unit price should contain "NT$10"
    Then 3rd row of product subtotal should contain "NT$10"
    Then 3rd row of product quantity should equal to "1"
    Then 3rd row of product items should contain "4th Product for Checkout"
    Then 4th row of product unit price should contain "NT$10"
    Then 4th row of product subtotal should contain "NT$10"
    Then 4th row of product quantity should equal to "1"
    Then 4th row of product items should contain "3rd Addon for Checkout"
    Then item subtotal should contain 'NT$99'
    Then delivery fee should contain 'NT$20'
    Then total should contain 'NT$119'

    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then delivery fee should contain "NT$20"
    Then total should contain "NT$119"
    Then product details should contain '1 x NT$20 = NT$20'
    Then product details should contain '1 x NT$59 = NT$59'
    Then product details should contain '1 x NT$10 = NT$10'
    Then product details should contain '1 x NT$10 = NT$10'
    And ---ROLL BACK---
    Given I am on Cart Add On Items Index Page
    When I click on 1st select checkbox of cart addon list
    Then I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then cart add on items list should contain "No promotions yet"
    Given I am on Product Index Page
    Then 1st row of product list should contain '2 variant with weight'
    When I click on 1st row of product checkbox
    When I select delete selected of bulk actions dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm bulk button
    Then product list should not contain '2 variant with weight'
    Given I am on Pages Page
    When I click on delete button
    Then I should see popover
    And I click on confirm button
    Then I click on ok button