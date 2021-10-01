@BaseCase @Admin @Storefront @CheckoutWithoutEmail @Checkout @Credit @mobile-limitationCreditsCheckout
@fixture-mobile-signup-p2 @fixture-shop @fixture-product @fixture-delivery @fixture-payment @fixture-checkout-without-email @EAT-1147
Feature: Mobile member Checkout - Limitation Credits Checkout
  As a merchant
  I want to checkout with credits

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

    Given I am on Checkout Setting Page
    When I check and click checkout without email toggle off
    Then checkout without email toggle should be checked
    Then I should see update button
    And I click on update button
    Then I should see alert

    Given I am on Customer List Page
    When I input phone to search field
    Then I should see view button
    When I click view button for the same order of customer row included '0912345678'
    Then I should be redirected to Customer Detail Page
    When I click on assign credits button
    Then I should see popover
    When I fill "30" to amount of credit field
    And I click on never expires button
    And I fill "Testing amount of credits" to reason field
    And I click on credit save button
    Then I should see row of credit list
    Given I am on Store Credit Page
    And I select credit amount rule dropdown option included "Fixed Amount" of credit amount rule dropdown
    And I fill "5" to credit amount field
    And I click on update button
    Then I should see alert

  @EAT-1147-4
  Scenario: Assign limitation of credits and checkout with credit
    Given I am on Shop Product Index Page
    And I input "2nd Product for Checkout" to search field
    Then 1st product of products list should contain "2nd Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill "30" to product quantity field
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I click on login button
    Then I should be redirected to Shop Login Page
    And I fill test phone to email field
    And I fill password to password field
    And I click on submit button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    Then 1st row of order list should not contain '@'
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then credit should contain "NT$5"
    And ---ROLL BACK---
    Given I am on Customer List Page
    When I input phone to search field
    Then I should see view button
    When I click view button for the same order of customer row included '0912345678'
    Then I should be redirected to Customer Detail Page
    When I click on assign credits button
    Then I should see popover
    When I fill "-25" to amount of credit field
    And I fill "Rolling back amount of credits" to reason field
    And I click on credit save button
    Then I should see row of credit list
    Given I am on Store Credit Page
    And I select credit amount rule dropdown option included "Unlimited" of credit amount rule dropdown
    Then I should see disabled maximum amount field
    And I click on update button
    Then I should see alert
    Given I am on Checkout Setting Page
    Then checkout without email toggle should be checked
    When I click on checkout without email toggle
    Then checkout without email toggle should not be checked
    Then I should see update button
    And I click on update button
    Then I should see alert