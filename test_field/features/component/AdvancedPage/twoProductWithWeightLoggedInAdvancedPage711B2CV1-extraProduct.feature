@BaseCase @Admin @Storefront @Product @Checkout @AdvancedPage @twoProductWithWeightLoggedInAdvancedPage711B2CV1-extraProduct
@fixture-payment @fixture-delivery @fixture-product @fixture-shop @fixture-mobile-signup-p2 @EAT-817
Feature: Variant product login and checkout from advanced page (711B2C) V1
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
    And I fill "0" to 1st row of variation price field
    And I fill "0" to 2nd row of variation price field
    And I fill "0" to 3rd row of variation price field
    And I fill "0" to 4th row of variation price field
    And I fill "0" to 1st row of variation sale price field
    And I fill "0" to 2nd row of variation sale price field
    And I fill "0" to 3rd row of variation sale price field
    And I fill "0" to 4th row of variation sale price field
    And I fill "0" to 1st row of variation member price field
    And I fill "0" to 2nd row of variation member price field
    And I fill "0" to 3rd row of variation member price field
    And I fill "0" to 4th row of variation member price field
    And I fill "200" to 1st row of variation quantity field
    And I fill "100" to 2nd row of variation quantity field
    And I fill "300" to 3rd row of variation quantity field
    And I fill "400" to 4th row of variation quantity field
    Then I scroll down to id
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page

    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) No variant with weight member price" to english name field
    And I click on quantity and pricing tab
    And I fill "50" to regular price field
    And I fill '10' to member price field
    And I fill "15" to quantity field
    Then I scroll down to id
    And I click on settings tab
    And I input "3.4" to weight field
    Then I should see alert
    Then I should be redirected to Product Edit Page

    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) 1 variant member price" to english name field
    And I click on variations tab
    When I click on variations toggle
    And I input "R" to add options field
    And I click on variations same price checkbox
    And I fill "50" to 1st row of variation price field
    And I fill "20" to 1st row of variation sale price field
    And I fill '10' to 1st row of variation member price field
    And I fill "200" to 1st row of variation quantity field
    Then I scroll down to id
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page

    Given I am on Product Index Page
    When I click on 3rd row of product checkbox
    And I select assign to categories of bulk actions dropdown
    And I click on 1st categories checkbox
    And I click on assign button
    And I should see confirmation popover
    And I click on confirm bulk button
    Then I should see alert
    When I click on 3rd row of product checkbox
    When I click on 2nd row of product checkbox
    And I click on assign button
    And I should see confirmation popover
    And I click on confirm bulk button
    Then I should see alert
    When I click on 2nd row of product checkbox
    When I click on 1st row of product checkbox
    And I click on assign button
    And I should see confirmation popover
    And I click on confirm bulk button
    Then I should see alert

    Given I am on Pages Page
    When I click on add advanced page button
    Then I should be redirected to Advanced Select Page
    When I click on 8th template
    Then I should be redirected to Page Builder Page
    Then I should see skip the guide button
    When I click on skip the guide button
    And I click on edit category button
    Then I should see side menu
    When I click on 1st category checkbox
    Then I should see ok button
    And I click on ok button
    Then I should see save button
    And I click on save button
    Then I should see view page button
    And I click on view page button
    And I switch to 2 of tabs

  @EAT-817-7
  Scenario: Variant product login and checkout from advanced page (711B2C) V1
    Then I should be redirected to Shop Advanced Page
    When I scroll down to product
    Then 1st product should contain '1 variant member price'
    Then 1st sale price of product list should contain 'NT$10'
    Then 1st regular price of product list should contain 'NT$50'
    Then 2nd product should contain 'No variant with weight member price'
    Then 2nd regular price of product list should contain 'NT$50'
    Then 2nd sale price of product list should contain 'NT$10'
    Then 3rd product should contain 'multiple variations'
    Then 3rd product should not contain 'NT$'
    And I hover over 1st product
    And I click on 1st add to cart button
    Then I should see popover
    Then popover sale price should contain 'NT$10 Member Only'
    Then popover regular price should contain 'NT$50'
    And I click on popover add to cart button
    Then I should see cart panel
    When I click on close cart panel area
    And I hover over 3rd product
    And I click on 3rd add to cart button
    Then I should see popover
    Then I should see popover message button
    When I click on popover variation dropdown option included 'G'
    Then I should see popover message button
    When I click on popover variation dropdown option included 'M'
    Then I should see popover message button
    When I click on popover variation dropdown option included 'R'
    Then I should see popover message button
    When I click on popover close button
    When I hover over 2nd product
    And I click on 2nd add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then 1st row of unit price should contain "NT$10"
    Then 1st row of subtotal price should contain "NT$10"
    Then 1st item quantity field should contain '1'
    Then 1st row of cart item should contain '1 variant member price'
    Then 2nd row of unit price should contain "NT$10"
    Then 2nd row of subtotal price should contain "NT$10"
    Then 2nd item quantity field should contain '1'
    Then 2nd row of cart item should contain 'No variant with weight member price'
    When I select country dropdown option included "Taiwan" of country list dropdown
    Then I wait for 3 seconds for loading
    And I select delivery dropdown option included "(DBW) 7-11 B2C - Pickup and pay in store" of delivery method dropdown
    Then I wait for 3 seconds for loading
    Then cart item subtotal should contain 'NT$20'
    Then delivery fee should contain 'NT$0'
    Then total should contain 'NT$20'
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    Then I click on cart summary
    Then 1st row of product items should contain "1 variant member price"
    Then 1st cart item price should contain 'NT$10'
    Then 1st cart item quantity should contain '1'
    Then 1st cart item subtotal should contain 'NT$10'
    Then 2nd row of product items should contain "No variant with weight member price"
    Then 2nd cart item price should contain 'NT$10'
    Then 2nd cart item quantity should contain '1'
    Then 2nd cart item subtotal should contain 'NT$10'
    Then total price should contain "NT$20"
    Then order summary should contain 'Item Subtotal:NT$20'
    Then order summary should contain 'Delivery Fee:NT$0'
    Then order summary should contain 'Total:NT$20'
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
    And I fill name to name field
    And I fill email to email address field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then delivery fee should contain "NT$0"
    Then total should contain "NT$20"
    Then 1st row of product unit price should contain "NT$10"
    Then 1st row of product subtotal should contain "NT$10"
    Then 1st row of product quantity should equal to "1"
    Then 1st row of product items should contain "1 variant member price"
    Then 2nd row of product unit price should contain "NT$10"
    Then 2nd row of product subtotal should contain "NT$10"
    Then 2nd row of product quantity should equal to "1"
    Then 2nd row of product items should contain "No variant with weight member price"
    Then item subtotal should contain 'NT$20'
    Then delivery fee should contain 'NT$0'
    Then total should contain 'NT$20'

    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then delivery fee should contain "NT$0"
    Then total should contain "NT$20"
    Then product details should contain '1 x NT$10 = NT$10'
    Then product details should contain '1 x NT$10 = NT$10'
    And ---ROLL BACK---
    Given I am on Product Index Page
    Then 1st row of product list should contain '1 variant member price'
    Then 2nd row of product list should contain 'No variant with weight member price'
    Then 3rd row of product list should contain 'multiple variations'
    When I click on 1st row of product checkbox
    When I click on 2nd row of product checkbox
    When I click on 3rd row of product checkbox
    When I select delete selected of bulk actions dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm bulk button
    Then product list should not contain 'No variant with weight member price'
    Given I am on Pages Page
    When I click on delete button
    Then I should see popover
    And I click on confirm button
    Then I click on ok button