@BaseCase @Admin @Storefront @Product @Checkout @oneProductOneFreeGiftWithWeightProductIndexPage711C2CV1-extraProduct
@fixture-payment @fixture-delivery @fixture-product @fixture-shop @fixture-freegift @fixture-promotion @EAT-817
Feature: Variant product and free gift checkout without login from product list page (711 C2C) V1
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
    And I fill "30" to 1st row of variation price field
    And I fill "30" to 2nd row of variation price field
    And I fill "30" to 3rd row of variation price field
    And I fill "30" to 4th row of variation price field
    And I fill "20" to 1st row of variation sale price field
    And I fill "20" to 2nd row of variation sale price field
    And I fill "20" to 3rd row of variation sale price field
    And I fill "20" to 4th row of variation sale price field
    And I fill "10" to 1st row of variation member price field
    And I fill "10" to 2nd row of variation member price field
    And I fill "10" to 3rd row of variation member price field
    And I fill "10" to 4th row of variation member price field
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

  @EAT-817-8
  Scenario: I want to buy products with different weight and pay correct shipping fee
    Given I am on Shop Product Index Page
    Then 1st regular price of products list should contain 'NT$50'
    Then 1st sale price of products list should contain 'NT$20'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain "1 variant member price"
    Then regular price should contain "NT$50"
    Then sale price should contain 'NT$20'
    Then I click on increase button
    And I click on add to cart button
    Then I should see cart panel
    Given I am on Shop Product Index Page
    When I input "multiple variations" to search field
    Then 1st product of products list should contain "multiple variations"
    Then 1st regular price of products list should contain 'NT$30'
    Then 1st sale price of products list should contain 'NT$20'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain "multiple variations"
    Then regular price should contain "NT$30"
    Then sale price should contain "NT$20"
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    Then I wait for 3 seconds for loading
    And I select delivery dropdown option included "(DBW) 7-11 C2C - Pickup only" of delivery method dropdown
    Then I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    Then I wait for 3 seconds for loading
    Then 1st row of unit price should contain "NT$20"
    Then 1st row of subtotal price should contain "NT$40"
    Then 1st item quantity field should contain '2'
    Then 1st row of cart item should contain '1 variant member price'
    Then 2nd row of unit price should contain "NT$20"
    Then 2nd row of subtotal price should contain "NT$20"
    Then 2nd item quantity field should contain '1'
    Then 2nd row of cart item should contain 'multiple variations'
    Then 3rd row of unit price should contain "NT$0"
    Then 3rd row of subtotal price should contain "NT$0"
    Then 3rd row of cart item should contain '2'
    Then 3rd row of cart item should contain '1st Created Free Gift'
    Then 3rd row of cart item should contain '14th Free Gift Promotion'
    Then cart item subtotal should contain 'NT$60'
    Then delivery fee should contain 'NT$0'
    Then total should contain 'NT$60'
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    Then I click on cart summary
    Then 1st row of product items should contain "1 variant member price"
    Then 1st cart item price should contain 'NT$20'
    Then 1st cart item quantity should contain '2'
    Then 1st cart item subtotal should contain 'NT$40'
    Then 2nd row of product items should contain "multiple variations"
    Then 2nd cart item price should contain 'NT$20'
    Then 2nd cart item quantity should contain '1'
    Then 2nd cart item subtotal should contain 'NT$20'
    Then 3rd row of product items should contain "1st Created Free Gift"
    Then 3rd row of product items should contain "14th Free Gift Promotion"
    Then 3rd cart item price should contain 'NT$0'
    Then 3rd cart item quantity should contain '2'
    Then 3rd cart item subtotal should contain 'NT$0'
    Then total price should contain "NT$60"
    Then order summary should contain 'Item Subtotal:NT$60'
    Then order summary should contain 'Delivery Fee:NT$0'
    Then order summary should contain 'Total:NT$60'
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
    Then delivery fee should contain "NT$0"
    Then total should contain "NT$60"
    Then 1st row of product unit price should contain "NT$20"
    Then 1st row of product subtotal should contain "NT$40"
    Then 1st row of product quantity should equal to "2"
    Then 1st row of product items should contain "1 variant member price"
    Then 2nd row of product unit price should contain "NT$20"
    Then 2nd row of product subtotal should contain "NT$20"
    Then 2nd row of product quantity should equal to "1"
    Then 2nd row of product items should contain "multiple variations"
    Then 3rd row of product unit price should contain "NT$0"
    Then 3rd row of product subtotal should contain "NT$0"
    Then 3rd row of product quantity should equal to "2"
    Then 3rd row of product items should contain "1st Created Free Gift"
    Then 3rd row of product items should contain "14th Free Gift Promotion"
    Then item subtotal should contain 'NT$60'
    Then delivery fee should contain 'NT$0'
    Then total should contain 'NT$60'

    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then delivery fee should contain "NT$0"
    Then total should contain "NT$60"
    Then product details should contain '2 x NT$20 = NT$40'
    Then product details should contain '1 x NT$20 = NT$20'
    Then product details should contain '2 x NT$0 = NT$0'
    And ---ROLL BACK---
    Given I am on Product Index Page
    Then 1st row of product list should contain '1 variant member price'
    Then 2nd row of product list should contain 'multiple variations'
    When I click on 1st row of product checkbox
    When I click on 2nd row of product checkbox
    When I select delete selected of bulk actions dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm bulk button
    Then product list should not contain '1 variant member price'
    Given I am on Promotion Index Page
    When I input "14th Free Gift Promotion" to search field
    Then I should see apply filter label
    Then I should see row of select checkbox list
    Then 1st row of promotion list should contain "14th Free Gift Promotion"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item