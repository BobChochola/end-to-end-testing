@BaseCase @Admin @Storefront @Checkout @customVariationProdutctCheckout
@fixture-payment @fixture-delivery @fixture-shop
Feature: Checkout with Custom Variations Product
  As a merchant
  I want to add variations custom products
  So my customer can checkout with this product

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

  @EAT-495 @EAT-495-3
  Scenario: Checkout with Custom Variations Product
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill '(dirty data) Product Variations Custom For Checkout' to english name field
    And I click on variations tab
    And I click on variations toggle
    And I select variation dropdown option included 'Custom' of variation dropdown
    Then I should see custom variation field
    When I fill 'custom varation' to custom variation field
    And I input "B" to add options field
    And I input "R" to add options field
    When I click on add variation button
    And I input "S" to 2nd add options field
    And I input "M" to 2nd add options field
    And I click on variations same price checkbox
    And I fill "50" to 1st row of variation price field
    And I fill "25" to 2nd row of variation price field
    And I fill "50" to 3rd row of variation price field
    And I fill "25" to 4th row of variation price field
    And I fill "2000000" to 1st row of variation quantity field
    And I fill "1900000" to 2nd row of variation quantity field
    And I fill "3000000" to 3rd row of variation quantity field
    And I fill "4000000" to 4th row of variation quantity field
    Then I scroll down to breadcrumb
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Shop Product Index Page
    And I input 'Product Variations Custom For Checkout' to search field
    Then 1st product of products list should contain "Product Variations Custom For Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain 'custom varation'
    And I select dropdown option included 'R' of variation dropdown
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included 'Taiwan' of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included 'Custom Delivery' of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included 'Custom' of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill new email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on become member checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then 1st row of delivery detail should contain name
    Given I am on Orders Page
    Then 1st row of order list should contain new email
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then product details should contain 'Product Variations Custom For Checkout'
    And ---ROLL BACK---
    Given I am on Product Index Page
    Then 1st row of product list should contain 'Product Variations Custom For Checkout'
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then 1st row of product list should not contain 'Product Variations Custom For Checkout'