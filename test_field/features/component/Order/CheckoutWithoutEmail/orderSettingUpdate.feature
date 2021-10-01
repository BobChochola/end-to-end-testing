@BaseCase @Admin @Order @CheckoutWithoutEmail @Setting @orderSettingUpdate
Feature: Order Setting Update Feature
  As a merchant
  I want to change setting for order
  So that I can modify order settings on order settings page

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

  @C3741 @premiumFeature
  Scenario: Invoice Settings
    Given I am on Order Setting Page
    Then I should see invoice toggle off
    When I click on invoice toggle
    And I should see Nat No field
    And I fill Nat No to Nat No field
    And I select Donation Recipient of Donation Recipient dropdown
    And I fill '1234567' to website code field
    And I fill '123456789' to api password field
    And I select tax type dropdown option included 'Taxable' of tax type dropdown
    Then I should see update button
    And I click on update button
    Then I should be redirected to Dashboard Page
    And ---ROLL BACK---
    Given I am on Order Setting Page
    When I click on invoice toggle
    And I click on update button
    Then I should be redirected to Dashboard Page

  @C3743
  Scenario: Auto cancel orders with "failed" payment status
    Given I am on Order Setting Page
    When I click on auto cancel toggle
    Then I should see update button
    And I click on update button
    Then I should be redirected to Dashboard Page
    And ---ROLL BACK---
    Given I am on Order Setting Page
    When I click on auto cancel toggle
    And I click on update button
    Then I should be redirected to Dashboard Page

  @EAT-1147 @EAT-1147-1 @fixture-checkout-without-email
  Scenario: order setting & order management for checkout without email
    Given I am on Checkout Setting Page
    When I check and click checkout without email toggle off
    Then I should see update button
    And I click on update button
    Then I should see alert
    And ---ROLL BACK---
    Given I am on Checkout Setting Page
    Then checkout without email toggle should be checked
    When I click on checkout without email toggle
    And I click on update button
    Then I should see alert