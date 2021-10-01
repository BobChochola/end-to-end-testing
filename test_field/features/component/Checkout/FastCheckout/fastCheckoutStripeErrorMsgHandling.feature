@BaseCase @Storefront @Admin @Checkout @FastCheckout @fastCheckoutStripeErrorMsgHandling 
@baseLocation-US @theme-ultra-chic @fixture-payment @fixture-delivery @fixture-product @fixture-paypal-spb-checkout @fixture-mini-fast-checkout @fixture-buynow-checkout @fixture-stripe-cc @fixture-shop
Feature: Fast checkout error handling - stripe credit card
  As a customer
  I should see the error msg when I using wrong card number

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

  @EAT-1274 @EAT-1274-17
  Scenario: Fast checkout error handling - stripe credit card
    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    When I input "2nd Product for Checkout" to search field
    Then 1st product of products list should contain '2nd Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    And I click on add to cart button
    Then I should see cart panel
    And I click on checkout button
    Then I should be redirected to Shop Fast Checkout Page
    When I click on delivery option included 'Custom'
    When I wait for 5 seconds for loading
    When I click on payment option included 'Stripe'
    When I wait for 5 seconds for loading
    And I select recipient address dropdown option included 'United States' of recipient address dropdown
    When I wait for 5 seconds for loading
    And I select recipient address dropdown option included "New York" of 2nd recipient address dropdown
    And I fill name to customer name field
    And I fill email to customer email field
    And I click on become member checkbox
    And I click on accept marketing checkbox
    And I fill name to recipient name field
    And I fill '2015551234' to recipient phone field
    And I fill address to recipient address field
    And I fill city to 2nd recipient address field
    And I fill city to recipient city field
    And I fill '10001' to recipient post code field
    Then I fill name to cardholder name field
    When I switch to stripe credit card frame frame
    And I simply fill '5' to stripe card number field
    And I simply fill '1' to stripe card number field
    And I simply fill '1' to stripe card number field
    And I simply fill '0' to stripe card number field
    And I simply fill '0' to stripe card number field
    And I simply fill '7' to stripe card number field
    And I simply fill '5' to stripe card number field
    And I simply fill '5' to stripe card number field
    And I simply fill '9' to stripe card number field
    And I simply fill '5' to stripe card number field
    And I simply fill '3' to stripe card number field
    And I simply fill '4' to stripe card number field
    And I simply fill '7' to stripe card number field
    And I simply fill '0' to stripe card number field
    And I simply fill '0' to stripe card number field
    And I simply fill '4' to stripe card number field
    When I switch to default frame
    When I switch to stripe expiry date frame frame
    And I simply fill '0' to stripe expiry date field
    And I simply fill '7' to stripe expiry date field
    And I simply fill '/' to stripe expiry date field
    And I simply fill '2' to stripe expiry date field
    And I simply fill '2' to stripe expiry date field
    When I switch to default frame
    When I switch to stripe cvc frame frame
    And I simply fill '1' to stripe cvc field
    And I simply fill '2' to stripe cvc field
    And I simply fill '3' to stripe cvc field
    Then I switch to default frame
    When I scroll down to place order button
    When I click on place order button
    Then I should see error alert
    Then error alert should contain '3D secure verification failed, please try again or select other payment methods, thank you!'