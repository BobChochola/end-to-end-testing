@BaseCase @Admin @Storefront @Checkout @mobile-freeShippingCheckout-minItems
@fixture-mobile-signup-p2 @fixture-shop @fixture-product @fixture-delivery @fixture-payment @fixture-promotion
Feature: Mobile member Checkout - Free Shipping when Total Order Over Minimum items
  As a customer
  I want to place order with Minimum items
  So that I can enjoy Free Shipping

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

    Given I am on Free Shipping Index Page
    When I input "6th Free Shipping" to search field
    Then 1st row of free shipping list should contain "6th Free Shipping"
    Then I should see apply filter label
    Then I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert
    Given I am on Shop Login Page
    And I fill test phone to email field
    And I fill password to password field
    And I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'

  Scenario: I want to place order with Free Shipping when Total Order over Minimum items
    Given I am on Shop Product Index Page
    When I input "18th Product for Checkout" to search field
    Then 1st product of products list should contain "18th Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill "3" to product quantity field
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I scroll down to country list dropdown
    And I select country dropdown option included "Taiwan" of country list dropdown
    Then I wait for 5 seconds for loading
    And I select delivery dropdown option included "Local Delivery" of delivery method dropdown
    Then I wait for 5 seconds for loading
    And I select payment dropdown option included "Cash on Delivery" of payment method dropdown
    Then I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
    And I fill email to email address field
    And I click on same as checkbox
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill address to delivery address field
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then delivery fee should contain "NT$0"
    Then discount applied should contain "6th Free Shipping"
    Given I am on Orders Page
    Then I should see row of order links
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order date should contain order date
    Then customer name should contain name
    Then customer email should contain email
    Then customer phone should contain phone
    Then payment type should contain "Cash on Delivery"
    Then delivery method should contain "Local Delivery"
    Then recipient name should contain name
    Then recipient phone should contain phone
    Then delivery fee should contain "NT$0"
    And ---ROLL BACK---
    Given I am on Free Shipping Index Page
    When I input "6th Free Shipping" to search field
    Then I should see apply filter label
    Then 1st row of free shipping list should contain "6th Free Shipping"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item