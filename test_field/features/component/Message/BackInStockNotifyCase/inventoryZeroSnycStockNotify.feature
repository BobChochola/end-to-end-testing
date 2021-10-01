@BaseCase @BackInStockNotifyCase @Admin @Storefront @inventoryZeroSnycStockNotify @fixture-product @theme-kingsman @fixture-shop
Feature: Specifications with stock 0 are available to notify me of the button
  As a merchant
  I cancelled the add wishlist sync cancelled subscribe stock on notify

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

    Given I am on Basic Setting Page
    And I click on basic info update button
    Then I should be redirected to Dashboard Page

  @EAT-778
  Scenario: Specifications with stock 0 are available to notify me of the button
    Given I am on Shop Login Layout V Two Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Layout V Two Page

    Given I am on Shop Product Index Layout V Two Page
    When I hover over kingsman search icon
    And I input "3rd Product for Checkout" to search field
    When I click on 1st kingsman product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    Then I should not see notify when in stock button
    Then I should see add to wishlist button off

    Given I am on Inventory Page
    And I input "3rd Product for Checkout" to search field
    Then I should see row of product list
    Then 1st row of product list should contain "3rd Product for Checkout"
    Then I should see apply search label
    When I click on 1st set button
    And I fill "0" to 1st row of quantity field
    And I click on 1st save button
    Then 1st row of product list should contain "0"

    Given I am on Shop Product Index Layout V Two Page
    When I hover over kingsman search icon
    And I input "3rd Product for Checkout" to search field
    When I click on 1st kingsman product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    Then I should see sold out
    Then I should see notify when in stock button
    Then I should see add to wishlist button off

    And ---ROLL BACK---
    Given I am on Inventory Page
    And I input "3rd Product for Checkout" to search field
    Then I should see row of product list
    Then 1st row of product list should contain "3rd Product for Checkout"
    Then I should see apply search label
    When I click on 1st set button
    And I fill "200000" to 1st row of quantity field
    And I click on 1st save button