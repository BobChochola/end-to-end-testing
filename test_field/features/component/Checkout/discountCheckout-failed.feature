@BaseCase @Admin @Storefront @Checkout @CouponCode @discountCheckout-failed @fixture-product @fixture-shop @fixture-promotion @fixture-payment @fixture-delivery
Feature: Get discount on Entire Order with purchase over items
  As a guest
  I want to checkout products
  So that I can get discount

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
    When I input "3rd Promotion" to search field
    Then 1st row of promotion list should contain "3rd Promotion"
    Then I should see apply filter label
    Then I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

  @C3824
  Scenario: Get discount on Entire Order with purchase over items
    Given I am on Shop Product Index Page
    And I input "3rd Product for Checkout" to search field
    Then 1st product of products list should contain "3rd Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill "2" to product quantity field
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I scroll down to country list dropdown
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on apply coupon code button
    And I wait for 3 seconds for loading
    And I input "shoplinetiers" to coupon code field
    Then I should see promotion error info
    Then promotion error info should equal to "Coupon shoplinetiers require a higher number of products"
    And I click on proceed to checkout button
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
    Then 1st row of product unit price should contain "NT$10"
    Then 1st row of product quantity should equal to "2"
    Then 1st row of product items should contain "3rd Product for Checkout"
    Then item subtotal should contain "NT$20"
    Then I should not see discount applied
    Then delivery fee should contain "NT$10"
    Then total should contain "NT$30"
    And ---ROLL BACK---
    Given I am on Promotion Index Page
    When I input "3rd Promotion" to search field
    Then I should see apply filter label
    Then I should see 1 row of promotion list
    Then 1st row of promotion list should contain "3rd Promotion"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item