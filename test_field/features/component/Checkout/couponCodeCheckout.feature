@PostTest @PreTest @Admin @BaseCase @Storefront @Checkout @CouponCode @couponCodeCheckout @fixture-payment @fixture-delivery @fixture-product @fixture-promotion @fixture-shop
Feature: Checkout with coupon Selected Products over Minimum Amount
  As a guest
  I want to use coupon checkout feature
  So that I can get the promotion

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
    When I input "7th Promotion" to search field
    Then 1st row of promotion list should contain "7th Promotion"
    Then I should see apply filter label
    Then I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

  @C3829
  Scenario: Checkout with coupon code:Selected Products over Minimum Amount
    Given I am on Shop Product Index Page
    And I input "4th Product for Checkout" to search field
    Then 1st product of products list should contain "4th Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill "50" to product quantity field
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 10 seconds for loading
    And I scroll down to apply coupon code button
    And I click on apply coupon code button
    Then I should see coupon code field
    And I wait for 5 seconds for loading
    And I input "SelectedProduct" to coupon code field
    And I wait for 3 seconds for loading
    Then promotion description should contain "SelectedProduct"
    When I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then 1st row of product unit price should contain "NT$10"
    Then 1st row of product quantity should equal to "50"
    Then 1st row of product items should contain "4th Product for Checkout"
    Then item subtotal should contain "NT$500"
    Then delivery fee should contain "NT$10"
    Then total should contain "NT$410"
    Then discount applied should contain "7th Promotion"
    Then discount applied should contain "SelectedProduct"
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order date should contain order date
    Then customer name should contain name
    Then customer email should contain email
    Then customer phone should contain phone
    Then payment type should contain "Bank Transfer"
    Then delivery method should contain "Custom Delivery"
    Then recipient name should contain name
    Then recipient phone should contain phone
    Then delivery fee should contain "NT$10"
    Then total should contain "NT$410"
    And ---ROLL BACK---
    Given I am on Promotion Index Page
    When I input "7th Promotion" to search field
    Then I should see apply filter label
    Then I should see 1 row of promotion list
    Then 1st row of promotion list should contain "7th Promotion"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item