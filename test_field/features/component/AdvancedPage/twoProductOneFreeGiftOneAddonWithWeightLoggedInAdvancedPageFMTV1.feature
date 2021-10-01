@BaseCase @Admin @Storefront @Product @Checkout @AdvancedPage @twoProductOneFreeGiftOneAddonWithWeightLoggedInAdvancedPageFMTV1
@fixture-payment @fixture-delivery @fixture-product @fixture-addon @fixture-promotion @fixture-mobile-signup-p2 @fixture-shop @fixture-freegift @EAT-817
Feature: Variant product and free gift and addon checkout with login from advanced page (FMT) V1
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

    Given I am on Promotion Index Page
    When I input "14th Free Gift Promotion" to search field
    Then I should see apply filter label
    Then I should see row of select checkbox list
    Then 1st row of promotion list should contain "14th Free Gift Promotion"
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

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

    Given I am on Product Index Page
    When I click on 1st row of product checkbox
    And I select assign to categories of bulk actions dropdown
    And I click on 1st categories checkbox
    And I click on assign button
    And I should see confirmation popover
    And I click on confirm bulk button
    Then I should see alert

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

  @EAT-817-13
  Scenario: Variant product and free gift and addon checkout with login from advanced page (FMT) V1
    Then I should be redirected to Shop Advanced Page
    When I scroll down to product
    Then 1st product should contain '2 variant with weight'
    Then 1st regular price of product list should contain 'NT$100'
    Then 1st sale price of product list should contain 'NT$10 ~ NT$30'
    And I hover over 1st product
    And I click on 1st add to cart button
    Then I should see popover
    Then popover sale price should contain 'NT$10 Member Only'
    Then popover regular price should contain 'NT$50'
    When I click on popover variation dropdown option included 'M'
    And I click on popover add to cart button
    Then I should see cart panel
    When I click on close cart panel area
    And I hover over 1st product
    And I click on 1st add to cart button
    Then I should see popover
    When I click on popover variation dropdown option included 'M'
    When I click on popover variation dropdown option included 'G'
    Then popover sale price should contain 'NT$30 Member Only'
    Then popover regular price should contain 'NT$100'
    And I click on popover add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    Then I wait for 3 seconds for loading
    And I select delivery dropdown option included "(DBW) Family Mart B2C - Pickup and pay in store" of delivery method dropdown
    Then I wait for 3 seconds for loading
    Then 1st row of unit price should contain "NT$30"
    Then 1st row of subtotal price should contain "NT$30"
    Then 1st item quantity field should contain '1'
    Then 1st row of cart item should contain '2 variant with weight'
    Then 2nd row of unit price should contain "NT$30"
    Then 2nd row of subtotal price should contain "NT$30"
    Then 2nd item quantity field should contain '1'
    Then 2nd row of cart item should contain '2 variant with weight'
    When I click on cart addon items button
    Then 3rd row of unit price should contain "NT$10"
    Then 3rd row of subtotal price should contain "NT$10"
    Then 3rd item quantity field should contain '1'
    Then 3rd row of cart item should contain '3rd Addon for Checkout'
    Then 4th row of unit price should contain "NT$0"
    Then 4th row of subtotal price should contain "NT$0"
    Then 4th row of cart item should contain '2'
    Then 4th row of cart item should contain '1st Created Free Gift'
    Then 4th row of cart item should contain '14th Free Gift Promotion'
    Then cart item subtotal should contain 'NT$70'
    Then delivery fee should contain 'NT$20'
    Then total should contain 'NT$90'
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    Then I click on cart summary
    Then 1st row of product items should contain "2 variant with weight"
    Then 1st cart item price should contain 'NT$30'
    Then 1st cart item quantity should contain '1'
    Then 1st cart item subtotal should contain 'NT$30'
    Then 2nd row of product items should contain "2 variant with weight"
    Then 2nd cart item price should contain 'NT$30'
    Then 2nd cart item quantity should contain '1'
    Then 2nd cart item subtotal should contain 'NT$30'
    Then 3rd row of product items should contain "3rd Addon for Checkout"
    Then 3rd cart item price should contain 'NT$10'
    Then 3rd cart item quantity should contain '1'
    Then 3rd cart item subtotal should contain 'NT$10'
    Then 4th row of product items should contain "1st Created Free Gift"
    Then 4th row of product items should contain "14th Free Gift Promotion"
    Then 4th cart item price should contain 'NT$0'
    Then 4th cart item quantity should contain '2'
    Then 4th cart item subtotal should contain 'NT$0'
    Then total price should contain "NT$90"
    Then order summary should contain 'Item Subtotal:NT$70'
    Then order summary should contain 'Delivery Fee:NT$20'
    Then order summary should contain 'Total:NT$90'
    And I click on pick store button
    Then I should be redirected to Family Mart Pick Store Page
    When I click on name search button
    And I fill store name to store name field
    And I click on search button
    Then I should see row of search store list
    And I click on row of search store list
    Then I should see confirm store button
    And I click on confirm store button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
    And I fill email to email address field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then delivery fee should contain "NT$20"
    Then total should contain "NT$90"
    Then 1st row of product unit price should contain "NT$30"
    Then 1st row of product subtotal should contain "NT$30"
    Then 1st row of product quantity should equal to "1"
    Then 1st row of product items should contain "2 variant with weight"
    Then 2nd row of product unit price should contain "NT$30"
    Then 2nd row of product subtotal should contain "NT$30"
    Then 2nd row of product quantity should equal to "1"
    Then 2nd row of product items should contain "2 variant with weight"
    Then 3rd row of product unit price should contain "NT$10"
    Then 3rd row of product subtotal should contain "NT$10"
    Then 3rd row of product quantity should equal to "1"
    Then 3rd row of product items should contain "3rd Addon for Checkout"
    Then item subtotal should contain 'NT$70'
    Then delivery fee should contain 'NT$20'
    Then total should contain 'NT$90'

    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then delivery fee should contain "NT$20"
    Then total should contain "NT$90"
    Then product details should contain '1 x NT$30 = NT$30'
    Then product details should contain '1 x NT$30 = NT$30'
    Then product details should contain '1 x NT$10 = NT$10'
    Then product details should contain '2 x NT$0 = NT$0'
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
    Given I am on Promotion Index Page
    When I input "14th Free Gift Promotion" to search field
    Then I should see apply filter label
    Then I should see row of select checkbox list
    Then 1st row of promotion list should contain "14th Free Gift Promotion"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item