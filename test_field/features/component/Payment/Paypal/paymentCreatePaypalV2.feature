@BaseCase @Admin @Payment @Paypal @fixture-paypal-cn @paymentCreatePaypalV2 @premiumFeature
Feature: Paypal Create V2 Feature
  As a merchant
  I want to create new payment
  So that I can have different payments for my shoppers

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click no thanks button

  @EAT-1199
  Scenario: Create payment V2
    Given I am on Payment Setting Page
    When I click on add button
    Then I should be redirected to Payment Create Page
    When I select payment type dropdown option included 'PayPal / Credit Card (NEW)' of payment type dropdown
    And add button should be disabled
    And connect PayPal account button should contain 'Connect PayPal account'
    And paypal connect button description should contain 'PayPal is a simple online payment gateway that requires no setup cost.You can set up directly here by clicking the “Connect PayPal account” button'
    When I click on connect PayPal account button
    Then I should be redirected to Paypal Account Connect Page
    And I should see email field
    And I should see select region dropdown
    And I should see login button
