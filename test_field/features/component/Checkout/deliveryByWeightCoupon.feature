@BaseCase @Admin @Storefront @Checkout @CouponCode @deliveryByWeightCoupon 
@fixture-payment @fixture-delivery @fixture-addon @fixture-product @fixture-shop @fixture-promotion
Feature: Checkout with delivery by weight and coupon code
  As a member
  I want to buy products with different weight and using coupon code
  So that I can enjoy disocount

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
    When I input "13th Promotion" to search field
    Then 1st row of promotion list should contain "13th Promotion"
    Then I should see apply filter label
    Then I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

  @C3865
  Scenario: I want to buy products with different weight and pay correct shipping fee
    Given I am on Shop Product Index Page
    When I input "14th Product for Checkout" to search field
    Then 1st product of products list should contain "14th Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    Given I am on Shop Product Index Page
    When I input "13th Product for Checkout" to search field
    Then 1st product of products list should contain "13th Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on addon item checkbox
    And I click on buy together button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for cart update
    And I select delivery dropdown option included "(DBW) CustomDelivery" of delivery method dropdown
    And I wait for 5 seconds for cart update
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 5 seconds for cart update
    And I click on apply coupon code button
    Then I should see coupon code field
    And I input "AmountDiscount" to coupon code field
    And I wait for 5 seconds for cart update
    And I click on proceed to checkout button
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
    Then delivery fee should contain "NT$50"
    Then total should contain "NT$100"
    Then discount applied should contain "13th Promotion"
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order date should contain order date
    Then customer name should contain name
    Then customer email should contain email
    Then customer phone should contain phone
    Then delivery method should contain "(DBW) CustomDelivery"
    Then payment type should contain "Bank Transfer"
    Then recipient name should contain name
    Then recipient phone should contain phone
    Then delivery fee should contain "NT$50"
    Then total should contain "NT$100"
    And ---ROLL BACK---
    Given I am on Promotion Index Page
    When I input "13th Promotion" to search field
    Then I should see apply filter label
    Then I should see 1 row of promotion list
    Then 1st row of promotion list should contain "13th Promotion"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item