@OneBaseCase @Admin @Storefront @Product @oneLimitedProductCannotAddToCart @fixture-sl-pos @fixture-sl-pos-admin @fixture-integration-one @fixture-product @fixture-shop @theme-ultra-chic
Feature: Check unavailable quantity product can't add to cart in one account
  As a merchant
  customer can't add unavailable quantity product to cart

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
    Given I am on Inventory Page
    And I input "3rd Product for Checkout" to search field
    Then I should see row of product list
    Then 1st row of product list should contain "3rd Product for Checkout"
    And I click on 1st set button
    And I fill "0" to 1st row of quantity field
    And I scroll down to tab
    And I click on save button
    Then row of product variant quantity should equal to '0'
    Given I am on Inventory Page
    And I input "6th Product for Checkout" to search field
    Then I should see row of product list
    Then 1st row of product list should contain "6th Product for Checkout"
    And I click on 1st set button
    And I fill "0" to 1st row of quantity field
    And I scroll down to tab
    And I click on save button
    Then row of product variant quantity should equal to '0'
    Given I am on Inventory Page
    And I input "9th Product for Checkout" to search field
    Then I should see row of product list
    Then 1st row of product list should contain "9th Product for Checkout"
    And I click on 1st set button
    And I fill "0" to 1st row of quantity field
    And I scroll down to tab
    And I click on 1st save button
    Then 2nd row of product variant quantity should equal to '0'

  @EAT-810 @EAT-810-1
  Scenario: Cann't add unavailable product to cart
    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    When I input "3rd Product for Checkout" to search field
    Then 1st product of products list should contain '3rd Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    Then I should see sold out
    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    When I input "6th Product for Checkout" to search field
    Then 1st product of products list should contain '6th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    Then I should see sold out
    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    When I input "9th Product for Checkout" to search field
    Then 1st product of products list should contain '9th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    And I select variation option included "S" of variation selector
    Then I should see sold out
    And ---ROLL BACK---
    Given I am on Inventory Page
    And I input "3rd Product for Checkout" to search field
    Then I should see row of product list
    Then 1st row of product list should contain "3rd Product for Checkout"
    And I fill "10000" to 1st row of quantity field
    And I scroll down to tab
    And I click on save button
    Then 1st row of product list should contain "10000"
    And I input "6th Product for Checkout" to search field
    Then I should see row of product list
    Then 1st row of product list should contain "6th Product for Checkout"
    And I fill "10000" to 1st row of quantity field
    And I scroll down to tab
    And I click on save button
    Then 1st row of product list should contain "10000"
    And I input "9th Product for Checkout" to search field
    Then I should see row of product list
    Then 1st row of product list should contain "9th Product for Checkout"
    And I fill "10000" to 1st row of quantity field
    And I scroll down to tab
    And I click on save button
    Then 2nd row of product variant quantity should equal to '10000'