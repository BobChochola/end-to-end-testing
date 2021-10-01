@BaseCase @Admin @Storefront @Checkout @mobile-freeCheckout
@fixture-mobile-signup-p2 @fixture-shop @fixture-product @fixture-delivery @fixture-payment @fixture-promotion @baseLocation-HK
Feature: Mobile Free Checkout
  As a guest
  I want to checkout with promotion
  So that I might can get the product for free

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

    Given I am on Promotion Index Page
    When I input "3rd Promotion" to search field
    Then 1st row of promotion list should contain "3rd Promotion"
    Then I should see apply filter label
    Then I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert
    Given I am on Free Shipping Index Page
    When I input "2nd Free Shipping" to search field
    Then 1st row of free shipping list should contain "2nd Free Shipping"
    Then I should see apply filter label
    Then I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

  Scenario: Checkout - Free
    Given I am on Shop Product Index Page
    And I input "2nd Product for Checkout" to search field
    Then 1st product of products list should contain "2nd Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I click on login button
    Then I should be redirected to Shop Login Page
    And I fill test phone to email field
    And I fill password to password field
    And I click on submit button
    Then I should be redirected to Shop Cart Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    When I scroll down to country list dropdown
    And I select country dropdown option included "Hong Kong" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "S.F. Express - 7-11 Store Pickup" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select sf district dropdown option included "Central" of sf district dropdown
    And I wait for 5 seconds for loading
    And I select sf location dropdown option included "89 Caine Road, Central" of sf location dropdown
    And I wait for 5 seconds for loading
    Then free checkout label should contain "Free Checkout"
    When I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill "陳小明" to name field
    And I fill email to email address field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then 1st row of product unit price should contain "HK$10"
    Then 1st row of product quantity should equal to "1"
    Then 1st row of product items should contain "2nd Product for Checkout"
    Then item subtotal should contain "HK$10"
    Then delivery fee should contain "HK$0"
    Then total should contain "HK$0"
    Then discount applied should contain "3rd Promotion"
    Then discount applied should contain "2nd Free Shipping"
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order date should contain order date
    Then customer name should contain "陳小明"
    Then customer email should contain email
    Then customer phone should contain phone
    Then delivery method should contain "S.F. Express - 7-11 Store Pickup"
    Then payment type should contain "Free Checkout"
    Then recipient name should contain "陳小明"
    Then recipient phone should contain phone
    Then express location should contain "G/F, 89 Caine Road, Central, HK"
    And ---ROLL BACK---
    Given I am on Promotion Index Page
    When I input "3rd Promotion" to search field
    Then I should see apply filter label
    Then 1st row of promotion list should contain "3rd Promotion"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item
    Given I am on Free Shipping Index Page
    When I input "2nd Free Shipping" to search field
    Then I should see apply filter label
    Then 1st row of free shipping list should contain "2nd Free Shipping"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item