@BaseCase @Storefront @recaptchaOnUserMessageAndMessageShop
@fixture-product @fixture-delivery @fixture-shop @fixture-payment @fixture-shop-recaptcha
Feature: shop_related_recaptcha on user message and message shop
  As a Merchant,
  I want to add recaptcha when customer message by message shop or user message

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

  @EAT-1194 @EAT-1194-3 @EAT-1194-3-1
  Scenario: shop_related_recaptcha on message shop
    Given I am on Customer Settings Page
    Then recaptcha toggle should not be checked
    And I click on recaptcha toggle
    When I click on update button
    And I wait for 5 seconds for loading

    Given I am on Shop Home Page
    When I click on message button
    Then I should see message popup
    When I fill new email to pop-up email field
    And I fill message content to pop-up message field
    When I click on pop-up send button with recaptcha
    Then I should see recaptcha popover
    When I click on pop-up send button with recaptcha
    Then I should see message popup

    And ---ROLL BACK---
    Given I am on Customer Settings Page
    And I click on recaptcha toggle
    Then recaptcha toggle should not be checked
    When I click on update button
    And I wait for 5 seconds for loading

  @EAT-1194 @EAT-1194-3 @EAT-1194-3-2
  Scenario: shop_related_recaptcha on member center message
    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'

    Given I am on Customer Settings Page
    Then recaptcha toggle should not be checked
    And I click on recaptcha toggle
    When I click on update button
    And I wait for 5 seconds for loading

    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Messages'
    Then I should be redirected to Shop Message Page
    And I fill 'recaptcha' to message field
    When I click on send button with recaptcha
    Then I should see recaptcha popover
    And I click on close recaptcha popup area

    And ---ROLL BACK---
    Given I am on Customer Settings Page
    And I click on recaptcha toggle
    Then recaptcha toggle should not be checked
    When I click on update button
    And I wait for 5 seconds for loading