@BaseCase @Admin @Storefront @ExpressCheckoutPage @checkExpressCheckoutPage711 @fixture-payment @fixture-delivery @fixture-product @fixture-shop
Feature: Express checkout page cannot select 7-11 shop
  As a merchant
  I want to create an express checkout page for customers
  And customers cannot select 7-11 delivery

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

  @EAT-724
  Scenario: cannot select 7-11 delivery
    Given I am on Express Checkout Pages Page
    When I click on create button
    Then I should be redirected to Express Checkout Builder Page
    Then I should see skip the guide button
    When I click on skip the guide button
    Then I should see product picker
    When I input "4th Product for Checkout" to search field
    And I click on search button
    Then 1st product of product list should contain "4th Product for Checkout"
    And I click on 1st product of product list
    And I click on popup save button
    Then I should be on Express Checkout Builder Page
    When I click on save page button
    And I should see view page button
    And I click on view page button
    And I switch to 2 of tabs
    Then I should be on Shop Express Checkout Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "(DBW) No integration 711 Pickup" of delivery method dropdown
    And I select delivery dropdown option included "(DBW) 7-11 B2C - Pickup and pay in store" of delivery method dropdown
    And I select delivery dropdown option included "(DBW) 7-11 C2C - Pickup only" of delivery method dropdown
    And I select delivery dropdown option included "7-11 Pickup only (B2C)" of delivery method dropdown
    And I select delivery dropdown option included "7-11 Pickup and pay in store (B2C)" of delivery method dropdown
    And I select delivery dropdown option included "7-11 Pickup only (C2C)" of delivery method dropdown
    And I select delivery dropdown option included "7-11 Pickup and pay in store (C2C)" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Pay on 7-11 Store Pickup (C2C)" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on buy now button
    Then I should be redirected to Shop Checkout Page
    When I click on pick store button
    Then I should be redirected to Seven Pick Store Page
    When I click on id search button
    When I switch to main frame frame
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
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I should see remarks for shop content
    When I click on summary collapse
    Then 1st row of product unit price should contain "NT$10"
    Then 1st row of product quantity should equal to "1"
    Then 1st row of product items should contain "4th Product for Checkout"
    Then delivery fee should contain "NT$10"
    Then total should contain "NT$20"
    And  ---ROLL BACK---
    Given I am on Express Checkout Pages Page
    When I click on delete button
    Then I should see popup
    And I click on reconfirm checkbox
    And I click on popup ok button
    Then I should not see delete button