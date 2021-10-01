@BaseCase @Admin @Storefront @Checkout @711B2cSingleProductCheckout
@fixture-payment @fixture-delivery @fixture-product @fixture-promotion @fixture-shop
Feature: 711 B2C Single Product Checkout
  As a guest
  I want to use 711 B2C checkout feature
  So that I can get the product and pay the bill in the 711 store

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

  @C3861
  Scenario: Use "711B2C-Pickup and pay" with the delivery weight
    Given I am on Shop Product Index Page
    When I input "12th Product for Checkout" to search field
    Then 1st product of products list should contain "12th Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill "2" to product quantity field
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "(DBW) 7-11 B2C - Pickup and pay in store" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Pay on 7-11 Store Pickup (B2C)" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    When I click on pick store button
    Then I should be redirected to Seven Pick Store Page
    When I click on id search button
    And I switch to main frame frame
    Then I should see store id field
    And I fill store id to store id field
    And I click on search button
    And I click on 1st store list
    When I switch to default frame
    Then I should see store confirm button
    And I click on store confirm button
    And I click on agree button
    And I click on submit button
    Then I should be redirected to Shop Checkout Page
    When I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then 1st row of product unit price should contain "NT$10"
    Then 1st row of product quantity should equal to "2"
    Then 1st row of product items should contain "12th Product for Checkout"
    Then item subtotal should contain "NT$20"
    Then delivery fee should contain "NT$20"
    Then total should contain "NT$40"
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order date should contain order date
    Then customer name should contain name
    Then customer email should contain email
    Then customer phone should contain phone
    Then payment type should contain "Pay on 7-11 Store Pickup (B2C)"
    Then delivery method should contain "(DBW) 7-11 B2C - Pickup and pay in store"
    When I Refresh
    Then third party recipient name should contain name
    Then third party recipient phone should contain phone
    Then delivery fee should contain "NT$20"