@BaseCase @Admin @Storefront @Checkout @CouponCode @promotionCheckoutWithDifferentCategories
@fixture-payment @fixture-delivery @fixture-product @fixture-shop @fixture-promotion
Feature: Checkout different categories with promotion
  As a customer
  I want to checkout different variations with promotion

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
    When I input "5th Promotion" to search field
    Then I should see apply filter label
    Then I should see row of select checkbox list
    Then apply filter label should contain "5th Promotion"
    Then 1st row of promotion list should contain "5th Promotion"
    And I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

  @C3827
  Scenario: Checkout different variations with promotion
    Given I am on Shop Product Index Page
    When I input "10th Product for Checkout" to search field
    Then 1st product of products list should contain "10th Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on dropdown option included "Red"
    Then I should see 2 variation dropdown
    When I click on dropdown option included "M"
    And I click on add to cart button
    And I click on close cart panel area
    And I click on dropdown option included "Blue"
    Then I should see 2 variation dropdown
    When I click on dropdown option included "M"
    And I click on add quantity button
    And I click on add to cart button
    Then I should see checkout button
    And I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    Then I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    Then I select payment dropdown option included "Bank" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on apply coupon code button
    Then I should see coupon code field
    And I input "ExceptECPay" to coupon code field
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkboxs
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then 1st row of product items should contain "10th Product for Checkout"
    Then 1st row of product quantity should equal to "1"
    Then 1st row of product items should contain "Red"
    Then 1st row of product items should contain "M"
    Then 2nd row of product items should contain "10th Product for Checkout"
    Then 2nd row of product quantity should equal to "2"
    Then 2nd row of product items should contain "Blue"
    Then 2nd row of product items should contain "M"
    Then discount applied should contain "5th Promotion"
    And ---ROLL BACK---
    Given I am on Promotion Index Page
    When I input "5th Promotion" to search field
    Then I should see apply filter label
    Then I should see 1 row of promotion list
    Then 1st row of promotion list should contain "5th Promotion"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item