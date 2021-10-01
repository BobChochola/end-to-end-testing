@BaseCase @Admin @Storefront @Payment @MOLPay @molpayThailandCurrency-ATM @fixture-shop @fixture-product @fixture-delivery @baseLocation-TH @premiumFeature
Feature: MOLpay THB currency payment endpoint adjustment - ATM
  As a merchant
  I can use molpay in Thailand Currency setting

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

    Given I am on Payment Setting Page
    When I click on add button
    Then I should be redirected to Payment Create Page
    When I select payment type dropdown option included 'MOLPay' of payment type dropdown
    And I fill 'shoplinetw' to id field
    And I fill 'df49146d0e6eaacd558e57da1e3d8df5' to verify key field
    And I fill 'df49146d0e6eaacd558e57da1e3d8df5' to secret key field
    And I select molpay payments dropdown option included "ATM Transfer" of molpay payments dropdown
    When I click on language tab included 'English'
    And I fill "(dirty data) ATM Transfer via MOLPay" to name field
    And I click on add button
    And I click on confirm adding button
    Then I should be redirected to Payment Setting Page
    Then row of payment method list should contain '(dirty data) ATM Transfer via MOLPay'

  @EAT-1159 @EAT-1159-3
  Scenario: MOLpay THB currency payment endpoint adjustment - ATM
    Given I am on Shop Product Index Page
    When I input "3rd Product for Checkout" to search field
    Then 1st product of products list should contain '3rd Product for Checkout'
    Then 1st product of products list should contain "฿"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button

    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "(dirty data) ATM Transfer via MOLPay" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Mol Pay Checkout Page

    And ---ROLL BACK---
    Given I am on Payment Setting Page
    When I click on 1st delete button of payment method list
    And I click on delete checkbox
    And I click on confirm delete button
    Then row of payment method list should not contain '(dirty data) ATM Transfer via MOLPay'