@BaseCase @Admin @Storefront @Product @Checkout @oneProductOneFreeGiftWithWeightLoggedInProductIndexPageCustomV2
@fixture-payment @fixture-delivery @fixture-product @fixture-freegift @theme-kingsman @fixture-promotion @fixture-shop @EAT-927
Feature: Variant product and free gift checkout with login from product list page (Custom) V2
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
    Given I am on Basic Setting Page
    And I click on basic info update button
    Then I should be redirected to Dashboard Page

    Given I am on Shop Login Layout V Two Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Layout V Two Page

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

  @EAT-927-5
  Scenario: I want to buy products with different weight and pay correct shipping fee
    Given I am on Shop Product Index Layout V Two Page
    Then 1st regular price of products list should contain 'NT$50'
    Then 1st sale price of products list should contain 'NT$10'
    When I click on 1st kingsman product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    Then product info should contain "1 variant member price"
    Then regular price should contain "NT$50"
    Then sale price should contain 'NT$10 Member Only'
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    Then I wait for 3 seconds for loading
    And I select delivery dropdown option included "(DBW) CustomDelivery" of delivery method dropdown
    Then I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    Then I wait for 3 seconds for loading
    Then 1st row of unit price should contain "NT$10"
    Then 1st row of subtotal price should contain "NT$10"
    Then 1st item quantity field should contain '1'
    Then 1st row of cart item should contain '1 variant member price'
    Then 2nd row of unit price should contain "NT$0"
    Then 2nd row of subtotal price should contain "NT$0"
    Then 2nd row of cart item should contain '2'
    Then 2nd row of cart item should contain '1st Created Free Gift'
    Then 2nd row of cart item should contain '14th Free Gift Promotion'
    Then cart item subtotal should contain 'NT$10'
    Then delivery fee should contain 'NT$30'
    Then total should contain 'NT$40'
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    Then I click on cart summary
    Then 1st row of product items should contain "1 variant member price"
    Then 1st cart item price should contain 'NT$10'
    Then 1st cart item quantity should contain '1'
    Then 1st cart item subtotal should contain 'NT$10'
    Then 2nd row of product items should contain "1st Created Free Gift"
    Then 2nd row of product items should contain "14th Free Gift Promotion"
    Then 2nd cart item price should contain 'NT$0'
    Then 2nd cart item quantity should contain '2'
    Then 2nd cart item subtotal should contain 'NT$0'
    Then total price should contain "NT$40"
    Then order summary should contain 'Item Subtotal:NT$10'
    Then order summary should contain 'Delivery Fee:NT$30'
    Then order summary should contain 'Total:NT$40'
    When I fill name to name field
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then delivery fee should contain "NT$30"
    Then total should contain "NT$40"
    Then 1st row of product unit price should contain "NT$10"
    Then 1st row of product subtotal should contain "NT$10"
    Then 1st row of product quantity should equal to "1"
    Then 1st row of product items should contain "1 variant member price"
    Then 2nd row of product unit price should contain "NT$0"
    Then 2nd row of product subtotal should contain "NT$0"
    Then 2nd row of product quantity should equal to "2"
    Then 2nd row of product items should contain "1st Created Free Gift"
    Then 2nd row of product items should contain "14th Free Gift Promotion"
    Then item subtotal should contain 'NT$10'
    Then delivery fee should contain 'NT$30'
    Then total should contain 'NT$40'

    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then delivery fee should contain "NT$30"
    Then total should contain "NT$40"
    Then product details should contain '1 x NT$10 = NT$10'
    Then product details should contain '2 x NT$0 = NT$0'
    And ---ROLL BACK---
    Given I am on Product Index Page
    Then 1st row of product list should contain '1 variant member price'
    When I click on 1st row of product checkbox
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