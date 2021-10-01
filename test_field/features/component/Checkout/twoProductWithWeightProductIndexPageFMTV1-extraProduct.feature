@BaseCase @Admin @Storefront @Product @Checkout @twoProductWithWeightProductIndexPageFMTV1-extraProduct
@fixture-payment @fixture-delivery @fixture-product @fixture-shop @EAT-817
Feature: Variant product checkout without login from product list page (FMT) V1
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
    Then I should see member price toggle
    When I check and click member price toggle off
    When I check and click member price toggle off
    And I click on update button
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
    And I fill "0" to 1st row of variation price field
    And I fill "0" to 2nd row of variation price field
    And I fill "0" to 3rd row of variation price field
    And I fill "50" to 4th row of variation price field
    And I fill "10" to 1st row of variation sale price field
    And I fill "20" to 2nd row of variation sale price field
    And I fill "30" to 3rd row of variation sale price field
    And I fill "40" to 4th row of variation sale price field
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

  @EAT-817-6
  Scenario: I want to buy products with different weight and pay correct shipping fee
    Given I am on Shop Product Index Page
    Then I should see 2 member price flag
    Then 1st regular price of products list should contain 'NT$50'
    Then 1st sale price of products list should contain 'NT$20'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain "1 variant member price"
    Then regular price should contain "NT$50"
    Then sale price should contain 'NT$20'
    And I click on add to cart button
    Then I should see cart panel
    When I click on close cart panel area
    When I input "No variant with weight member price" to search field
    Then I should be redirected to Shop Product Index Page
    Then 1st product of products list should contain "No variant with weight member price"
    Then 1st regular price of products list should contain 'NT$50'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain "No variant with weight member price"
    Then regular price should contain "NT$50"
    When I fill '2' to product quantity field
    And I click on add to cart button
    Then I should see cart panel
    When I click on close cart panel area
    When I input "multiple variations" to search field
    Then I should be redirected to Shop Product Index Page
    Then 1st product of products list should contain "multiple variations"
    Then 1st regular price of products list should contain 'NT$50'
    Then 1st sale price of products list should contain 'NT$10 ~ NT$40'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain "multiple variations"
    Then sale price should contain 'NT$10'
    When I click on dropdown option included 'G'
    Then sale price should contain 'NT$30'
    When I click on dropdown option included 'M'
    Then sale price should contain 'NT$40'
    When I click on dropdown option included 'R'
    Then sale price should contain 'NT$20'
    When I fill '2' to product quantity field
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then 1st row of unit price should contain "NT$20"
    Then 1st row of subtotal price should contain "NT$20"
    Then 1st item quantity field should contain '1'
    Then 1st row of cart item should contain '1 variant member price'
    Then 2nd row of unit price should contain "NT$50"
    Then 2nd row of subtotal price should contain "NT$100"
    Then 2nd item quantity field should contain '2'
    Then 2nd row of cart item should contain 'No variant with weight member price'
    Then 3rd row of unit price should contain "NT$20"
    Then 3rd row of subtotal price should contain "NT$40"
    Then 3rd item quantity field should contain '2'
    Then 3rd row of cart item should contain 'multiple variations'
    When I select country dropdown option included "Taiwan" of country list dropdown
    Then I wait for 3 seconds for loading
    And I select delivery dropdown option included "(DBW) Family Mart B2C - Pickup and pay in store" of delivery method dropdown
    Then I wait for 3 seconds for loading
    And I select payment dropdown option included "Pay on Family Mart Store Pickup (B2C)" of payment method dropdown
    Then cart item subtotal should contain 'NT$160'
    Then delivery fee should contain 'NT$0'
    Then total should contain 'NT$160'
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    Then I click on cart summary
    Then 1st row of product items should contain "1 variant member price"
    Then 1st cart item price should contain 'NT$20'
    Then 1st cart item quantity should contain '1'
    Then 1st cart item subtotal should contain 'NT$20'
    Then 2nd row of product items should contain "No variant with weight member price"
    Then 2nd cart item price should contain 'NT$50'
    Then 2nd cart item quantity should contain '2'
    Then 2nd cart item subtotal should contain 'NT$100'
    Then 3rd row of product items should contain "multiple variations"
    Then 3rd cart item price should contain 'NT$20'
    Then 3rd cart item quantity should contain '2'
    Then 3rd cart item subtotal should contain 'NT$40'
    Then total price should contain "NT$160"
    Then order summary should contain 'Item Subtotal:NT$160'
    Then order summary should contain 'Delivery Fee:NT$0'
    Then order summary should contain 'Total:NT$160'
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
    Then total should contain "NT$160"
    Then 1st row of product unit price should contain "NT$20"
    Then 1st row of product subtotal should contain "NT$20"
    Then 1st row of product quantity should equal to "1"
    Then 1st row of product items should contain "1 variant member price"
    Then 2nd row of product unit price should contain "NT$50"
    Then 2nd row of product subtotal should contain "NT$100"
    Then 2nd row of product quantity should equal to "2"
    Then 2nd row of product items should contain "No variant with weight member price"
    Then 3rd row of product unit price should contain "NT$20"
    Then 3rd row of product subtotal should contain "NT$40"
    Then 3rd row of product quantity should equal to "2"
    Then 3rd row of product items should contain "multiple variations"
    Then item subtotal should contain 'NT$160'
    Then delivery fee should contain 'NT$0'
    Then total should contain 'NT$160'

    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then delivery fee should contain "NT$0"
    Then total should contain "NT$160"
    Then product details should contain '1 x NT$20 = NT$20'
    Then product details should contain '2 x NT$50 = NT$100'
    Then product details should contain '2 x NT$20 = NT$40'
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
    Then product list should not contain 'multiple variations'
    Given I am on Product Setting Page
    Then I should see member price toggle
    When I click on member price toggle
    And I click on update button
    Then I should see alert