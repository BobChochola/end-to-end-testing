@BaseCase @Storefront @Admin @Checkout @FastCheckout @fastCheckoutCustomerBlacklistErrorMsgHandling 
@baseLocation-US @theme-ultra-chic @fixture-payment @fixture-delivery @fixture-product @fixture-paypal-spb-checkout @fixture-mini-fast-checkout @fixture-buynow-checkout @fixture-shop
Feature: Fast checkout error handling - customer blacklist
  As a customer
  I should see the error msg when quantity of product sold out

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

  @EAT-1274 @EAT-1274-8
  Scenario: Fast checkout error handling - customer blacklist
    Given I am on Customer List Page
    When I select language dropdown option included 'English' of language dropdown
    Then I should see search field
    When I input email to search field
    And I should see row of select checkbox list
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    When I click on blacklist button
    Then I should see popover
    When I click on popover confirm button
    Then blacklist button should contain "Remove from blacklist"

    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    When I input "2nd Product for Checkout" to search field
    Then 1st product of products list should contain "2nd Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    And I click on add to cart button
    Then I should see cart panel
    And I click on checkout button
    Then I should be redirected to Shop Fast Checkout Page
    When I click on delivery option included 'Custom'
    When I wait for 5 seconds for loading
    When I click on payment option included 'Custom'
    When I wait for 5 seconds for loading
    And I select recipient address dropdown option included 'United States' of recipient address dropdown
    When I wait for 5 seconds for loading
    And I select recipient address dropdown option included "New York" of 2nd recipient address dropdown
    And I fill name to customer name field
    And I fill email to customer email field
    And I click on become member checkbox
    And I click on accept marketing checkbox
    And I fill name to recipient name field
    And I fill '81234567' to recipient phone field
    And I fill address to recipient address field
    And I fill city to 2nd recipient address field
    And I fill city to recipient city field
    And I fill '10001' to recipient post code field
    When I scroll down to place order button
    And I click on save address checkbox
    When I click on place order button
    Then I should see error alert
    Then error alert should contain 'Error processing order, please verify your information and try again. If the problem persists, please email shop owner for details.'
    And ---ROLL BACK---
    Given I am on Customer List Page
    When I input email to search field
    And I should see row of select checkbox list
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    And I click on blacklist button
    And I click on popover confirm button
    Then blacklist button should contain "Add to blacklist"