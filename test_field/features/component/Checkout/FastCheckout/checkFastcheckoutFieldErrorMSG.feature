@BaseCase @Storefront @Admin @Checkout @FastCheckout @checkFastcheckoutFieldErrorMSG @fixture-shop @fixture-product @fixture-payment @fixture-delivery @fixture-paypal-spb-checkout @fixture-mini-fast-checkout @fixture-buynow-checkout @theme-ultra-chic @baseLocation-US
Feature: Check Fast Checkout Page error message when click on place order without filling text
  As a customer
  I should see require fill error message when click on plcae order without filling text
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
    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    When I input "17th Product for Checkout" to search field
    Then 1st product of products list should contain '17th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    And I click on add to cart button
    Then I should see cart panel
    And I click on checkout button
    Then I should be redirected to Shop Fast Checkout Page
    When I click on delivery option included 'Custom'
    When I wait for 5 seconds for loading
    And I select recipient address dropdown option included 'United States' of recipient address dropdown
    When I wait for 5 seconds for loading

  @EAT-1274 @EAT-1274-14
  Scenario: Check Fast Checkout Page error message when click on place order without filling text
    And I click on payment option included 'Custom'
    When I wait for 5 seconds for loading
    When I click on agree terms checkbox
    Then agree terms checkbox should not be checked
    When I click on place order button
    Then 1st error message should contain 'Full Name is required'
    Then 2nd error message should contain 'Email Address is required'
    Then 3rd error message should contain 'Recipient Name is required'
    Then 4th error message should contain 'Phone Number is required'
    Then 5th error message should contain 'Address is required'
    Then 6th error message should contain 'City is required'
    Then 7th error message should contain 'State/Province/Region is required'
    Then 8th error message should contain 'ZIP / Postal Code is required'
    Then I scroll down to place order button
    Then agree to shop error message should contain 'You must agree with the shop\'s Terms of Use and Privacy Policy'

    And I select recipient address dropdown option included 'Taiwan' of recipient address dropdown
    When I wait for 5 seconds for loading
    When I fill '0912345678' to customer email field
    When I fill 'testuser@shoplineapp.com' to recipient phone field
    When I click on place order button
    Then 1st error message should contain 'Full Name is required'
    Then 2nd error message should contain 'Email Address is invalid'
    Then 3rd error message should contain 'Recipient Name is required'
    Then 4th error message should contain 'Phone Number is invalid'
    Then 5th error message should contain 'State/City is required'
    Then agree to shop error message should contain 'You must agree with the shop\'s Terms of Use and Privacy Policy'

  @EAT-1274 @EAT-1274-18 @fixture-stripe-cc
  Scenario: Check Fast Checkout Page error message when click on place order without filling text (stripe field)
    And I click on payment option included 'Stripe'
    When I wait for 5 seconds for loading
    When I click on agree terms checkbox
    Then agree terms checkbox should not be checked
    When I click on place order button
    Then 9th error message should contain 'Cardholder Name is required'
    Then 10th error message should contain 'Credit Card Number is required'
    Then 12th error message should contain 'Expiry Date (MM/YY) is required'
    Then 14th error message should contain 'CVC is required'