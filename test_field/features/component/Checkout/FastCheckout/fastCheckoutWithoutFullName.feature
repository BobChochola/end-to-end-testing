@BaseCase @Storefront @Admin @Checkout @FastCheckout @fastCheckoutWithoutFullName @fixture-shop @fixture-product @fixture-payment @fixture-delivery @fixture-paypal-spb-checkout @fixture-mini-fast-checkout @fixture-buynow-checkout @theme-ultra-chic @baseLocation-US
Feature: fast-Checkout without full name, member and customer
  As a merchant
  I turn ON without full name toggle, and check fast checkout page should not display the field. Try two way: 1. login member; 2. without login

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

    Given I am on Checkout Setting Page
    Then I should see full name toggle
    When I check and click full name toggle off
    And I scroll down to update button
    And I click on update button
    Then I should see alert

  @EAT-1274 @EAT-1274-16
  Scenario: fast-Checkout without full name, member and customer
    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    When I input "17th Product for Checkout" to search field
    Then 1st product of products list should contain '17th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    When I click on add to cart button
    Then I should see checkout button
    And I click on checkout button

    Then I should be redirected to Shop Fast Checkout Page
    When I click on delivery option included 'Custom'
    And I click on payment option included 'Custom'
    And I select recipient address dropdown option included 'Germany' of recipient address dropdown
    And I should not see customer name field
    And I fill email to customer email field
    And I click on become member checkbox
    And I click on accept marketing checkbox
    And I fill 'customer tester' to recipient name field
    And I fill phone to recipient phone field
    And I fill post code to recipient post code field
    And I fill city to recipient city field
    And I fill address to recipient address field
    And I fill city to 2nd recipient address field
    And I click on payment option included 'Custom'
    When I click on place order button
    Then I should be redirected to Shop Order Confirm Layout V Two Page
    Then 1st row of customer detail should contain 'customer tester'
    Then 2nd row of customer detail should contain '0912345***'

    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    When I input "17th Product for Checkout" to search field
    Then 1st product of products list should contain '17th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    When I click on add to cart button
    Then I should see checkout button
    And I click on checkout button

    Then I should be redirected to Shop Fast Checkout Page
    When I click on login button
    Then I should be redirected to Shop Login Layout V Two Page
    And I fill email to email field
    And I fill password to password field 
    When I click on submit button

    Then I should be redirected to Shop Fast Checkout Page
    When I click on delivery option included 'Custom'
    When I wait for 5 seconds for loading
    And I click on payment option included 'Custom'
    When I wait for 5 seconds for loading
    And I select recipient address dropdown option included 'Germany' of recipient address dropdown
    When I wait for 5 seconds for loading
    And I should not see customer name field
    And customer email field should be disabled
    And I click on become member checkbox
    And I click on accept marketing checkbox
    And I fill 'customer tester' to recipient name field
    And I fill phone to recipient phone field
    And I fill post code to recipient post code field
    And I fill city to recipient city field
    And I fill address to recipient address field
    And I fill city to 2nd recipient address field
    And I click on payment option included 'Custom'
    When I click on place order button
    Then I should be redirected to Shop Order Confirm Layout V Two Page
    Then 1st row of customer detail should contain 'customer tester'
    Then 2nd row of customer detail should contain '0912345***'
    And ---ROLL BACK---
    Given I am on Checkout Setting Page
    Then I should see full name toggle
    When I click on full name toggle
    And I scroll down to update button
    And I click on update button
    Then I should see alert