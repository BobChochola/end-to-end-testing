@BaseCase @Admin @Storefront @Product @Checkout @AdvancedPage @oneProductWithWeightLoggedInAdvancedPageLocalDeliveryV1-extraProduct
@fixture-payment @fixture-delivery @fixture-product @fixture-shop @fixture-mobile-signup-p2 @EAT-817
Feature: Variant product checkout with login from advanced page (Local Delivery) V1
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
    Given I am on Shop Login Page
    And I fill test phone to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'

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
    And I fill "50" to 1st row of variation price field
    And I fill "80" to 2nd row of variation price field
    And I fill "90" to 3rd row of variation price field
    And I fill "100" to 4th row of variation price field
    And I fill "50" to 1st row of variation sale price field
    And I fill "60" to 2nd row of variation sale price field
    And I fill "70" to 3rd row of variation sale price field
    And I fill "80" to 4th row of variation sale price field
    And I fill "30" to 1st row of variation member price field
    And I fill "40" to 2nd row of variation member price field
    And I fill "50" to 3rd row of variation member price field
    And I fill "60" to 4th row of variation member price field
    And I fill "200" to 1st row of variation quantity field
    And I fill "100" to 2nd row of variation quantity field
    And I fill "300" to 3rd row of variation quantity field
    And I fill "400" to 4th row of variation quantity field
    Then I scroll down to id
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page

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
    When I click on menu button
    Then I should see menu
    Then I should see single product button
    When I drag single product button to top location
    And I check and click empty single product
    And I wait for 3 seconds for loading
    Then I should see popup
    When I click on popup product included '2 variant with weight'
    And I click on popup save button
    Then I should see 2 single product
    And I click on save button
    Then I should see view page button
    And I click on view page button
    And I switch to 2 of tabs

  @EAT-817-3
  Scenario: I want to buy products with different weight and pay correct shipping fee
    Then I should be redirected to Shop Advanced Page
    When I scroll down to product
    Then 1st product should contain '2 variant with weight'
    Then 1st sale price of product list should contain 'NT$10 ~ NT$30'
    Then 1st regular price of product list should contain 'NT$100'
    And I hover over 1st product
    And I click on 1st add to cart button
    Then I should see popover
    Then popover sale price should contain 'NT$10'
    Then popover regular price should contain 'NT$50'
    When I click on popover variation dropdown option included 'M'
    Then popover sale price should contain 'NT$30'
    Then popover regular price should contain 'NT$100'
    When I fill '4' to popover variation quantity field
    And I click on popover add to cart button
    Then I should see cart panel
    When I click on close cart panel area
    Then 2nd product should contain 'multiple variations'
    Then 2nd sale price of product list should contain 'NT$30 ~ NT$60'
    Then 2nd regular price of product list should contain 'NT$100'
    And I hover over 2nd product
    And I click on 2nd add to cart button
    Then I should see popover
    Then popover sale price should contain 'NT$30 Member Only'
    Then popover regular price should contain 'NT$50'
    When I click on popover variation dropdown option included 'M'
    Then popover sale price should contain 'NT$40 Member Only'
    Then popover regular price should contain 'NT$80'
    When I fill '2' to popover variation quantity field
    And I click on popover add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then 1st row of unit price should contain "NT$30"
    Then 1st row of subtotal price should contain "NT$120"
    Then 1st item quantity field should contain '4'
    Then 1st row of cart item should contain '2 variant with weight'
    Then 2nd row of unit price should contain "NT$40"
    Then 2nd row of subtotal price should contain "NT$80"
    Then 2nd item quantity field should contain '2'
    Then 2nd row of cart item should contain 'multiple variations'
    When I select country dropdown option included "Taiwan" of country list dropdown
    Then I wait for 3 seconds for loading
    And I select delivery dropdown option included "(DBW) - LocalDelivery" of delivery method dropdown
    Then I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    Then cart item subtotal should contain 'NT$200'
    Then delivery fee should contain 'NT$15'
    Then total should contain 'NT$215'
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    Then I click on cart summary
    And 1st row of product items should contain "2 variant with weight"
    And 2nd row of product items should contain "multiple variations"
    Then total price should contain "NT$215"
    Then order summary should contain 'Item Subtotal:NT$200'
    Then order summary should contain 'Delivery Fee:NT$15'
    Then order summary should contain 'Total:NT$215'
    And I fill name to name field
    And I fill email to email address field
    And I click on same as checkbox
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill address to delivery address field
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then delivery fee should contain "NT$15"
    Then total should contain "NT$215"
    Then 1st row of product unit price should contain "NT$30"
    Then 1st row of product subtotal should contain "NT$120"
    Then 1st row of product quantity should equal to "4"
    Then 1st row of product items should contain "2 variant with weight"
    Then 2nd row of product unit price should contain "NT$40"
    Then 2nd row of product subtotal should contain "NT$80"
    Then 2nd row of product quantity should equal to "2"
    Then 2nd row of product items should contain "multiple variations"
    Then item subtotal should contain 'NT$200'
    Then delivery fee should contain 'NT$15'
    Then total should contain 'NT$215'

    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then delivery fee should contain "NT$15"
    Then total should contain "NT$215"
    Then product details should contain '4 x NT$30 = NT$120'
    Then product details should contain '2 x NT$40 = NT$80'
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain '2 variant with weight'
    Given I am on Pages Page
    When I click on delete button
    Then I should see popover
    And I click on confirm button
    Then I click on ok button