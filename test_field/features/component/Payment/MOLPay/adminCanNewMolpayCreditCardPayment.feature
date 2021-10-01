@BaseCase @Admin @Payment @MOLPay @adminCanNewMolpayCreditCardPayment @premiumFeature
Feature: admin can new MOLPay credit card payment
  As a merchant
  I want update the my payment way in Malaysian ringgit
  So that I can change my payment to MOLPay

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

  @EAT-577 @EAT-577-1 @baseLocation-MY @fixture-molpay-credit-card
  Scenario: admin can new MOLPay credit card payment in Malaysia Ringgit store
    Given I am on Payment Setting Page
    When I click on add button
    Then I should be redirected to Payment Info Page
    When I click on add payment button included 'Set up'
    And I switch to 2 of tabs
    Then I should be redirected to Payment Create Page
    When I select payment type dropdown option included 'MOLPay' of payment type dropdown
    And I fill 'shoplinetw' to id field
    And I fill 'df49146d0e6eaacd558e57da1e3d8df5' to verify key field
    And I fill 'df49146d0e6eaacd558e57da1e3d8df5' to secret key field
    And I select molpay payments dropdown option included "Credit Card" of molpay payments dropdown
    When I click on language tab included 'English'
    And I fill "(dirty data) MOLPay Credit Card 1" to name field
    And I click on add button
    And I click on confirm adding button
    Then I should be redirected to Payment Setting Page
    Then row of payment method list should contain 'MOLPay Credit Card 1'

    Given I am on Basic Setting Page
    When I select Taiwan of base country dropdown
    And I wait for 3 seconds for loading
    Then I should see popover
    When I click on confirm button
    And I click on basic info update button
    Then I should be redirected to Dashboard Page
    Given I am on Basic Setting Page
    Then base country dropdown should equal to "Taiwan"
    Given I am on Payment Setting Page
    When I click on add button
    Then I should be redirected to Payment Create Page
    When I select payment type dropdown option included 'MOLPay' of payment type dropdown
    And I fill 'shoplinetw' to id field
    And I fill 'df49146d0e6eaacd558e57da1e3d8df5' to verify key field
    And I fill 'df49146d0e6eaacd558e57da1e3d8df5' to secret key field
    And I select molpay payments dropdown option included "Credit Card" of molpay payments dropdown
    When I click on language tab included 'English'
    And I fill "(dirty data) MOLPay Credit Card 2" to name field
    And I click on add button
    And I click on confirm adding button
    Then I should be redirected to Payment Setting Page
    Then row of payment method list should contain 'MOLPay Credit Card 2'
    And ---ROLL BACK---
    Given I am on Payment Setting Page
    When I click on 1st delete button of payment method list
    And I click on delete checkbox
    And I click on confirm delete button
    Then row of payment method list should not contain 'MOLPay Credit Card 2'
    When I click on 1st delete button of payment method list
    And I click on delete checkbox
    And I click on confirm delete button
    Then row of payment method list should not contain 'MOLPay Credit Card 1'
    Given I am on Basic Setting Page
    When I select Malaysia of base country dropdown
    Then I should see popover
    When I click on confirm button
    And I click on basic info update button
    Then I should be redirected to Dashboard Page

  @EAT-577 @EAT-577-2 @baseLocation-TW
  Scenario: admin can't see MOLPay credit card payment in Taiwan Dollar store
    Given I am on Payment Setting Page
    When I click on add button
    Then I should be redirected to Payment Create Page
    Then payment type dropdown option should not contain "MOLPay"

    Given I am on Basic Setting Page
    When I select Malaysia of base country dropdown
    Then I should see popover
    When I click on confirm button
    And I click on basic info update button
    Then I should be redirected to Setup Guide Page
    Given I am on Basic Setting Page
    Then base country dropdown should equal to "Malaysia"
    Given I am on Payment Setting Page
    When I click on add button
    Then I should be redirected to Payment Create Page
    Then payment type dropdown option should not contain "MOLPay"
    And ---ROLL BACK---
    Given I am on Basic Setting Page
    When I select Taiwan of base country dropdown
    Then I should see popover
    When I click on confirm button
    And I click on basic info update button
    Then I should be redirected to Setup Guide Page
    Given I am on Basic Setting Page
    Then base country dropdown should equal to 'Taiwan'