@BaseCase @Storefront @Admin @Order @Search @orderFiltersbyPaymentStatus
@fixture-shop @fixture-payment @fixture-delivery @fixture-product
Feature: Check order payment filters
  As a merchant
  I want to check filter payment status

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

  @C8251 @C8251-1
  Scenario: Add payment filter
    Given I am on Shop Product Index Page
    When I input "2nd Product for Checkout" to search field
    Then 1st product of products list should contain '2nd Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Given I am on Orders Page
    Then I should see row of order links
    When I click on additional filters button
    Then I should see additional filters section
    And I select filter dropdown option included "Payment Status" of filter dropdown
    And I select payment status filter dropdown option included "Unpaid" of payment status filter dropdown
    Then I should not see loading icon
    Then 1st search label should contain "Payment Status is Unpaid"
    Then I should see row of order links
    Then 1st row of payment status should equal to "Unpaid"

  @C8251 @C8251-2 @premiumFeature
  Scenario: Place a failed payment order and add payment filter
    Given I am on Payment Create Page
    When I select payment type dropdown option included 'Taishin' of payment type dropdown
    And I fill Taishin Merchant ID to id field
    And I fill Taishin TID to tid field
    And I fill "(dirty data) Taishin" to name field
    When I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Payment Setting Page
    Given I am on Shop Product Index Page
    When I input "2nd Product for Checkout" to search field
    Then 1st product of products list should contain '2nd Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Taishin" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    When I fill name to cardholder name field
    And I fill card number to card number field
    And I fill expiry date to expiry date field
    And I fill cvc to cvc field
    And I click on agree terms checkbox
    And I click on place order button
    Then I should see error alert
    Given I am on Orders Page
    Then I should see row of order links
    When I click on additional filters button
    Then I should see additional filters section
    And I select filter dropdown option included "Payment Status" of filter dropdown
    And I select payment status filter dropdown option included "Failed" of payment status filter dropdown
    Then I should not see loading icon
    Then 1st search label should contain "Payment Status is Failed"
    Then I should see row of order links
    Then 1st row of payment status should equal to "Failed"
    And ---ROLL BACK---
    Given I am on Payment Setting Page
    Then I click on 1st delete button of payment method list
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain '(dirty data) Taishin'

  @C8251 @C8251-3 @fixture-expired-order
  Scenario: Add payment filter
    Given I am on Orders Page
    Then I should see row of order links
    When I click on additional filters button
    Then I should see additional filters section
    And I select filter dropdown option included "Payment Status" of filter dropdown
    And I select payment status filter dropdown option included "Expired" of payment status filter dropdown
    Then I should see search label
    Then I should not see loading icon
    Then 1st search label should contain "Payment Status is Expired"
    Then I should see row of order links
    Then 1st row of payment status should equal to "Expired"

  @C8251 @C8251-4
  Scenario: Add payment filter
    Given I am on Shop Product Index Page
    When I input "2nd Product for Checkout" to search field
    Then 1st product of products list should contain '2nd Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    And I select Paid of payment status dropdown
    Then I should see confirm popover
    And I click on YES button
    Then payment status should equal to "Paid"
    Given I am on Orders Page
    Then I should see row of order links
    When I click on additional filters button
    Then I should see additional filters section
    And I select filter dropdown option included "Payment Status" of filter dropdown
    And I select payment status filter dropdown option included "Paid" of payment status filter dropdown
    Then I should not see loading icon
    Then 1st search label should contain "Payment Status is Paid"
    Then I should see row of order links
    Then 1st row of payment status should equal to "Paid"

  @C8251 @C8251-5
  Scenario: Add payment filter
    Given I am on Shop Product Index Page
    When I input "2nd Product for Checkout" to search field
    Then 1st product of products list should contain '2nd Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    And I select Refunded of payment status dropdown
    Then I should see confirm popover
    And I click on YES button
    Then payment status should equal to "Refunded"
    Given I am on Orders Page
    Then I should see row of order links
    When I click on additional filters button
    Then I should see additional filters section
    And I select filter dropdown option included "Payment Status" of filter dropdown
    And I select payment status filter dropdown option included "Refunded" of payment status filter dropdown
    Then I should not see loading icon
    Then 1st search label should contain "Payment Status is Refunded"
    Then I should see row of order links
    Then 1st row of payment status should equal to "Refunded"