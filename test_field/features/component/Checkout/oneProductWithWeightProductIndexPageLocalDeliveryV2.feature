@BaseCase @Admin @Storefront @Product @Checkout @oneProductWithWeightProductIndexPageLocalDeliveryV2
@fixture-payment @fixture-delivery @fixture-product @theme-kingsman @fixture-shop @EAT-927
Feature: Variant product checkout without login from product list page (Local Delivery) V2
  As a merchant
  I want each product to apply different weight
  So that delivery fee can be more accurate

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
    Given I am on Basic Setting Page
    And I click on basic info update button
    Then I should be redirected to Dashboard Page

  @EAT-927-12
  Scenario: I want to buy products with different weight and pay correct shipping fee
    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    When I input "6th Product for Checkout" to search field
    Then 1st kingsman product of products list should contain "6th Product for Checkout"
    Then 1st kingsman regular price of products list should contain 'NT$59'
    When I click on 1st kingsman product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    Then product info should contain "6th Product for Checkout"
    Then regular price should contain "NT$59"
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then 1st row of unit price should contain "NT$59"
    Then 1st row of subtotal price should contain "NT$59"
    Then 1st item quantity field should contain '1'
    Then 1st row of cart item should contain '6th Product for Checkout'
    When I select country dropdown option included "Taiwan" of country list dropdown
    Then I wait for 3 seconds for loading
    And I select delivery dropdown option included "(DBW) - LocalDelivery" of delivery method dropdown
    Then I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    Then cart item subtotal should contain 'NT$59'
    Then delivery fee should contain 'NT$10'
    Then total should contain 'NT$69'
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    Then I click on cart summary
    Then 1st row of product items should contain "6th Product for Checkout"
    Then 1st cart item price should contain 'NT$59'
    Then 1st cart item quantity should contain '1'
    Then 1st cart item subtotal should contain 'NT$59'
    Then total price should contain "NT$69"
    Then order summary should contain 'Item Subtotal:NT$59'
    Then order summary should contain 'Delivery Fee:NT$10'
    Then order summary should contain 'Total:NT$69'
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill address to delivery address field
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then delivery fee should contain "NT$10"
    Then total should contain "NT$69"
    Then 1st row of product unit price should contain "NT$59"
    Then 1st row of product subtotal should contain "NT$59"
    Then 1st row of product quantity should equal to "1"
    Then 1st row of product items should contain "6th Product for Checkout"
    Then item subtotal should contain 'NT$59'
    Then delivery fee should contain 'NT$10'
    Then total should contain 'NT$69'
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then delivery fee should contain "NT$10"
    Then total should contain "NT$69"
    Then product details should contain '1 x NT$59 = NT$59'