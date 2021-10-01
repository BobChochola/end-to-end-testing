@Admin @BaseCase @Storefront @Checkout @mobile-711B2cMultipleProductsCheckout
@fixture-mobile-signup-p2 @fixture-shop @fixture-product @fixture-delivery @fixture-payment @fixture-promotion
Feature: Mobile member Checkout - 711 B2C Multiple Products Checkout
  As a guest
  I want to use 711 B2C checkout feature
  So that I can get the product and pay the bill in the 711 store

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

  Scenario: I want to pay 7-11Pickup only with the delivery weight
    Given I am on Shop Product Index Page
    When I input "6th Product for Checkout" to search field
    Then 1st product of products list should contain "6th Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on close cart panel area
    When I input "15th Product for Checkout" to search field
    Then I should be redirected to Shop Product Index Page
    Then 1st product of products list should contain "15th Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill "2" to product quantity field
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "(DBW) 7-11 C2C - Pickup only" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 3 seconds for loading
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
    Then 1st row of product unit price should contain "NT$59"
    Then 1st row of product quantity should equal to "1"
    Then 1st row of product items should contain "6th Product for Checkout"
    Then 1st row of product items should contain "Blue"
    Then 2nd row of product unit price should contain "NT$25"
    Then 2nd row of product quantity should equal to "2"
    Then 2nd row of product items should contain "15th Product for Checkout"
    Then item subtotal should contain "NT$109"
    Then delivery fee should contain "NT$15"
    Then total should contain "NT$124"
    
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order date should contain order date
    Then customer name should contain name
    Then customer email should contain email
    Then customer phone should contain phone
    Then payment type should contain "Bank Transfer"
    Then I scroll down to delivery status
    Then delivery method should contain "(DBW) 7-11 C2C - Pickup only"
    When I Refresh
    Then third party recipient name should contain name
    Then third party recipient phone should contain phone
    Then delivery fee should contain "NT$15"