@BaseCase @Admin @Storefront @Order @OrderEdit @Setting @orderEditsevenB2CProcessing @fixture-shop @fixture-product @fixture-payment @fixture-delivery
Feature: Order edit delivery details for recipient information
  As a merchant
  I want to edit delivery details of customer's recipient information
  So that I can edit successful

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

  @C3774 @C3774-2
  Scenario: (Processing)I want to edit delivery details of customer's recipient information
    Given I am on Order Setting Page
    When I click on add field button
    And I scroll down to update button
    And I should see custome name field
    And I fill name to custome name field
    And I fill hint to custome hint field
    Then I should see update button
    And I click on update button
    Then I should be redirected to Dashboard Page
    Given I am on Shop Product Index Page
    When I input "2nd Product for Checkout" to search field
    Then 1st product of products list should contain '2nd Product for Checkout'
    When I click on product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "7-11 Pickup and pay in store (B2C)" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Pay on 7-11 Store Pickup (B2C)" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I click on pick store button
    Then I should be redirected to Seven Pick Store Page
    When I click on id search button
    Then I switch to main frame frame
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
    And I fill phone to contact number field
    And I fill email to email address field
    And I fill "shopline" to custom field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Given I am on Orders Page
    And I select Seven Eleven B2C Order Management of Orders delivery type dropdown
    Then I should see breadcrumb
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I scroll down to payment status
    Then I should see execute shipment button
    When I click on execute shipment button
    Then I should see execute shipment popover
    And I click on OK button
    And I click on OK button
    Given I am on Orders Page
    And I select Seven Eleven B2C Order Management of Orders delivery type dropdown
    Then I should see breadcrumb
    When I click on processing tab
    Then I should see search label
    And search label should contain 'Ref. delivery status is pre-processing/processing'
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I Refresh
    Then I should see order edit button
    When I click on order edit button
    And I fill "shoplineapp" to custom field
    Then I click on order save button
    And custom field text should contain "shoplineapp"
    And I click on customer form edit button
    And I fill edited name to name field
    And I fill edited email to email field
    And I fill edited phone to phone field
    And I click on customer save button
    Then I should see alert
    Then name field should contain edited name
    Then email field should contain edited email
    Then phone field should contain edited phone
    Then delivery status should contain "Unfulfilled"
    Then I Refresh
    Then I should see delivery form edit button
    And I click on delivery form edit button
    Then I fill edited name to third party recipient name field
    And I fill edited phone to third party recipient phone field
    And I scroll down to payment status dropdown
    Then I click on save button
    And I should see popover
    Then I click on YES button
    And I should see confirm popover
    Then I click on YES button
    And I should see popover
    Then I click on YES button
    And third party recipient name should contain edited name
    And third party recipient phone should contain edited phone
    And ---ROLL BACK---
    Given I am on Order Setting Page
    And I scroll down to delete field button
    Then I should see delete field button
    Then I scroll down to delete field button
    When I click on delete field button
    And I click on update button
    Then I should be redirected to Dashboard Page