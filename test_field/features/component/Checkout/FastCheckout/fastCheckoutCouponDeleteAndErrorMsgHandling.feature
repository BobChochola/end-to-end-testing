@BaseCase @Storefront @Admin @Checkout @FastCheckout @fastCheckoutCouponDeleteAndErrorMsgHandling 
@baseLocation-US @theme-ultra-chic @fixture-payment @fixture-delivery @fixture-product @fixture-promotion @fixture-mini-fast-checkout @fixture-buynow-checkout @fixture-shop
Feature: Fast checkout coupon error handling and delete applied coupon
  As a customer
  I should see the error msg when coupon required higher number of product and invaild coupon
  I can delete coupon from applied coupon

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
    Then I should see apply filter label
    Then 1st row of promotion list should contain "3rd Promotion"
    Then I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

  @EAT-1274 @EAT-1274-15
  Scenario: Fast checkout coupon error handling and delete applied coupon
    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    When I input "15th Product for Checkout" to search field
    Then 1st product of products list should contain "15th Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    And I click on add to cart button
    Then I should see checkout button
    And I click on checkout button
    Then I should be redirected to Shop Fast Checkout Page
    When I click on delivery option included 'Custom'
    When I wait for 5 seconds for loading
    And I click on payment option included 'Custom'
    When I wait for 5 seconds for loading
    And I select recipient address dropdown option included 'United States' of recipient address dropdown
    When I wait for 5 seconds for loading
    And I select recipient address dropdown option included "New York" of 2nd recipient address dropdown
    When I wait for 5 seconds for loading
    When I fill 'shoplinetiers' to coupon field
    And I click on coupon validate button
    Then I should see coupon error message
    Then coupon error message should contain 'Coupon shoplinetiers require a higher number of products'
    When I fill 'test' to coupon field
    And I click on coupon validate button
    Then I should see coupon error message
    Then coupon error message should contain 'This Coupon test is invalid. Please check again if you have filled in the code correctly. Be aware of uppercase and lowercase.'
    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    When I input "15th Product for Checkout" to search field
    Then 1st product of products list should contain "15th Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    And I fill '2' to product quantity field
    And I click on add to cart button
    Then I should see checkout button
    And I click on checkout button
    Then I should be redirected to Shop Fast Checkout Page
    When I click on delivery option included 'Custom'
    When I wait for 5 seconds for loading
    And I click on payment option included 'Custom'
    When I wait for 5 seconds for loading
    And I select recipient address dropdown option included 'United States' of recipient address dropdown
    When I wait for 5 seconds for loading
    And I select recipient address dropdown option included "New York" of 2nd recipient address dropdown
    When I wait for 5 seconds for loading
    Then delivery fee should contain 'US$10.00'
    Then payment fee should contain 'US$0'
    When I fill 'shoplinetiers' to coupon field
    And I click on coupon validate button
    Then promotion section should contain 'shoplinetiers3rd Promotion-US$7.50'
    Then I should see row of promotion delete button
    And I click on 1st row of promotion delete button
    Then promotion section should not contain 'shoplinetiers'
    And ---ROLL BACK---
    Given I am on Promotion Index Page
    When I input "3rd Promotion" to search field
    Then I should see apply filter label
    Then I should see 1 row of promotion list
    Then 1st row of promotion list should contain "3rd Promotion"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item