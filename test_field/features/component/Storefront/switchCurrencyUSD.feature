@BaseCase @Admin @Storefront @switchCurrencyUSD @fixture-product @fixture-shop
Feature: Switch Currency
  As a guest
  I want to switch currency
  So that I can use the currency that I want

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
    
    Given I am on Design Page
    Then I should see advanced setting tab
    When I click on advanced setting tab
    Then I should see currency label
    And I click on currency label included "Allow Customers to select the displayed currency"
    And I click on save button
    Then I should see publish button
    And I click on publish button
    Then I should not see publish button

  @C3797 @C3797-2
  Scenario: Switch currency to USD
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    And I click on currency dropdown included "$"
    And I click on currency included "USD"
    Then 1st product of products list should contain "USD"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And order summary should contain "USD"
    When I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I click on cart summary
    Then order summary should contain "USD"
    And ---ROLL BACK---
    Given I am on Shop Product Index Page
    When I click on cart button
    And I click on remove button
    Then cart panel should contain "Your Shopping Cart is empty."
    Given I am on Design Page
    When I click on advanced setting tab
    And I should see currency label
    And I click on currency label included "Allow Customers to select the displayed currency"
    And I click on save button
    And I should see publish button
    And I click on publish button
    And I should not see publish button