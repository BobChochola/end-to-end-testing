@BaseCase @Admin @Storefront @Product @Checkout @AdvancedPage @twoProductWithWeightAdvancedPageCustomV1-extraProduct
@fixture-payment @fixture-delivery @fixture-product @fixture-shop @EAT-817
Feature: Variant product without login and checkout from advanced page (Custom) V1
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
    And I fill "(dirty data) multiple variations" to english name field
    And I click on quantity and pricing tab
    And I fill '200' to regular price field
    And I fill '160' to sale price field
    And I fill '110' to member price field
    And I click on variations tab
    When I click on variations toggle
    And I input "R" to add options field
    And I input "G" to add options field
    When I click on add variation button
    And I input "S" to 2nd add options field
    And I input "M" to 2nd add options field
    And I click on variations same price checkbox
    And I fill "80" to 1st row of variation price field
    And I fill "100" to 2nd row of variation price field
    And I fill "50" to 3rd row of variation price field
    And I fill "0" to 4th row of variation price field
    And I fill "40" to 1st row of variation sale price field
    And I fill "30" to 2nd row of variation sale price field
    And I fill "20" to 1st row of variation member price field
    And I fill "10" to 4th row of variation member price field
    And I fill "200" to 1st row of variation quantity field
    And I fill "100" to 2nd row of variation quantity field
    And I fill "300" to 3rd row of variation quantity field
    And I fill "400" to 4th row of variation quantity field
    Then I scroll down to id
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    When I wait for 5 seconds for product sync

    Given I am on Pages Page
    When I click on add advanced page button
    Then I should be redirected to Advanced Select Page
    When I click on 2th template
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
    When I input 'multiple variations' to popup search field
    When I click on popup product included 'multiple variations'
    And I click on popup save button
    Then I should see single product
    When I click on menu button
    Then I should see menu
    Then I should see single product button
    When I drag single product button to top location
    And I check and click empty single product
    And I wait for 3 seconds for loading
    Then I should see popup
    When I input '10th Product for Checkout' to popup search field
    When I click on popup product included '10th Product for Checkout'
    And I click on popup save button
    Then I should see 2 single product
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
    Then I should see 3 single product
    And I click on save button
    Then I should see view page button
    And I click on view page button
    And I switch to 2 of tabs

  @EAT-817-5
  Scenario: Variant product without login and checkout from advanced page (Custom) V1
    Then I should be redirected to Shop Advanced Page
    When I scroll down to product
    Then 1st product should contain '6th Product for Checkout'
    Then 1st regular price of product list should contain 'NT$59'
    Then 2nd product should contain '10th Product for Checkout'
    Then 1st sale price of product list should contain 'NT$25 ~ NT$50'
    Then 3rd product should contain 'multiple variations'
    Then 2nd sale price of product list should contain 'NT$30 ~ NT$50'
    Then 2nd regular price of product list should contain 'NT$100'
    And I hover over 1st product
    And I click on 1st add to cart button
    Then I should see popover
    Then popover regular price should contain 'NT$59'
    When I fill '4' to popover variation quantity field
    And I click on popover add to cart button
    Then I should see cart panel
    When I click on close cart panel area
    And I hover over 2nd product
    And I click on 2nd add to cart button
    Then I should see popover
    Then popover regular price should contain 'NT$50'
    When I click on popover variation dropdown option included 'M'
    Then popover regular price should contain 'NT$25'
    When I fill '2' to popover variation quantity field
    And I click on popover add to cart button
    Then I should see cart panel
    When I click on close cart panel area
    And I hover over 3rd product
    And I click on 3rd add to cart button
    Then I should see popover
    Then popover regular price should contain 'NT$80'
    Then popover sale price should contain 'NT$40'
    When I click on popover variation dropdown option included 'G'
    Then popover regular price should contain 'NT$50'
    When I click on popover variation dropdown option included 'M'
    Then I should see popover message button
    When I click on popover variation dropdown option included 'R'
    Then popover regular price should contain 'NT$100'
    Then popover sale price should contain 'NT$30'
    When I fill '2' to popover variation quantity field
    And I click on popover add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then 1st row of unit price should contain "NT$59"
    Then 1st row of subtotal price should contain "NT$236"
    Then 1st item quantity field should contain '4'
    Then 1st row of cart item should contain '6th Product for Checkout'
    Then 2nd row of unit price should contain "NT$25"
    Then 2nd row of subtotal price should contain "NT$50"
    Then 2nd item quantity field should contain '2'
    Then 2nd row of cart item should contain '10th Product for Checkout'
    Then 3rd row of unit price should contain "NT$30"
    Then 3rd row of subtotal price should contain "NT$60"
    Then 3rd item quantity field should contain '2'
    Then 3rd row of cart item should contain 'multiple variations'
    When I select country dropdown option included "Taiwan" of country list dropdown
    Then I wait for 3 seconds for loading
    And I select delivery dropdown option included "(DBW) CustomDelivery" of delivery method dropdown
    Then I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    Then cart item subtotal should contain 'NT$346'
    Then delivery fee should contain 'NT$50'
    Then total should contain 'NT$396'
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    Then I click on cart summary
    Then 1st row of product items should contain "6th Product for Checkout"
    Then 1st cart item price should contain 'NT$59'
    Then 1st cart item quantity should contain '4'
    Then 1st cart item subtotal should contain 'NT$236'
    Then 2nd row of product items should contain "10th Product for Checkout"
    Then 2nd cart item price should contain 'NT$25'
    Then 2nd cart item quantity should contain '2'
    Then 2nd cart item subtotal should contain 'NT$50'
    Then 3rd row of product items should contain "multiple variations"
    Then 3rd cart item price should contain 'NT$30'
    Then 3rd cart item quantity should contain '2'
    Then 3rd cart item subtotal should contain 'NT$60'
    Then total price should contain "NT$396"
    Then order summary should contain 'Item Subtotal:NT$346'
    Then order summary should contain 'Delivery Fee:NT$50'
    Then order summary should contain 'Total:NT$396'
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then delivery fee should contain "NT$50"
    Then total should contain "NT$396"
    Then 1st row of product unit price should contain "NT$59"
    Then 1st row of product subtotal should contain "NT$236"
    Then 1st row of product quantity should equal to "4"
    Then 1st row of product items should contain "6th Product for Checkout"
    Then 2nd row of product unit price should contain "NT$25"
    Then 2nd row of product subtotal should contain "NT$50"
    Then 2nd row of product quantity should equal to "2"
    Then 2nd row of product items should contain "10th Product for Checkout"
    Then 3rd row of product unit price should contain "NT$30"
    Then 3rd row of product subtotal should contain "NT$60"
    Then 3rd row of product quantity should equal to "2"
    Then 3rd row of product items should contain "multiple variations"
    Then item subtotal should contain 'NT$346'
    Then delivery fee should contain 'NT$50'
    Then total should contain 'NT$396'

    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then delivery fee should contain "NT$50"
    Then total should contain "NT$396"
    Then product details should contain '4 x NT$59 = NT$236'
    Then product details should contain '2 x NT$25 = NT$50'
    Then product details should contain '2 x NT$30 = NT$60'
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain 'multiple variations'
    Given I am on Pages Page
    When I click on delete button
    Then I should see popover
    And I click on confirm button
    Then I click on ok button