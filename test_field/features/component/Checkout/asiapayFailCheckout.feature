@BaseCase @Admin @Storefront @Checkout @CouponCode @asiapayFailCheckout
@fixture-payment @fixture-delivery @fixture-product @fixture-promotion @fixture-shop @baseLocation-HK
Feature: AsiaPay Checkout
  As a customer
  I can go checkout with product via Asiapay credit card

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
    When I input "2nd Promotion" to search field
    Then 1st row of promotion list should contain "2nd Promotion"
    Then I should see apply filter label
    Then I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

  @C3837
  Scenario: Checkout - HK shop (Asiapay via credit card)
    Given I am on Shop Product Index Page
    When I input "3rd Product for Checkout" to search field
    Then 1st product of products list should contain "3rd Product for Checkout"
    Then I click on 1st product of products list
    And I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Hong Kong" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Credit Card via Asiapay" of payment method dropdown
    And I wait for 5 seconds for loading
    When I click on apply coupon code button
    Then I should see coupon code field
    Then I input "asiapayonly" to coupon code field
    And I wait for 3 seconds for loading
    Then I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I click on cart summary
    Then discount applied should contain "2nd Promotion"
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Asia Pay Checkout Page
    Then error msg should equal to "Your payment service is not active"
    And ---ROLL BACK---
    Given I am on Promotion Index Page
    When I input "2nd Promotion" to search field
    Then I should see apply filter label
    Then I should see 1 row of promotion list
    Then 1st row of promotion list should contain "2nd Promotion"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item