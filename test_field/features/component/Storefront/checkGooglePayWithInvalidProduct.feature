@BaseCase @Admin @Storefront @Payment @checkGooglePayWithInvalidProduct @baseLocation-HK @fixture-googlepay
Feature: Check Google Pay info at making payments with invalid options
  Check Google Pay option and btn will not show up at making payments
  with invalid products, delivery options & settings

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

  Scenario: Show correct info with invalid delivery options
    Given I am on Payment Setting Page
    When I click edit button of payment method list for the same order of row of payment method list included 'Google Pay'
    Then I should be redirected to Payment Edit Page
    And I scroll down to excluded delivery options
    And I click on excluded delivery options included "Local Delivery"
    And I click on update button
    Then I should be redirected to Payment Setting Page
    Given I am on Shop Product Index Page
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    When I select delivery dropdown option included "Local Delivery" of delivery method dropdown
    And I click on payment method dropdown
    Then payment dropdown option should not contain "Google Pay"
    And ---ROLL BACK---
    Given I am on Payment Setting Page
    When I click edit button of payment method list for the same order of row of payment method list included 'Google Pay'
    Then I should be redirected to Payment Edit Page
    And I scroll down to excluded delivery options
    And I click on excluded delivery options included "Local Delivery"
    And I click on update button
    Then I should be redirected to Payment Setting Page