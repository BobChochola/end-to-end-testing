@BaseCase @Storefront @Admin @Order @Search @orderCheckFiltersCancelledFailedUnfulfilled
@fixture-shop @fixture-payment @fixture-delivery @fixture-product @premiumFeature
Feature: Check order filters
  As a merchant
  I can see orders when adding different fillters

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
    And I fill no space card number to card number field
    And I fill expiry date to expiry date field
    And I fill cvc to cvc field
    And I click on agree terms checkbox
    And I click on place order button
    Then I should see error alert

  @C7219 @C7219-2
  Scenario: Add date filter and status filter with canceled order status, fail payment status and unfulfilled delivery status
    Given I am on Orders Page
    Then I should see row of order links
    When I click on additional filters button
    Then I should see additional filters section
    When I click on filter date start
    And I click on pick today button
    Then I should see additional filters section
    And I click on filter date end
    And I click on pick today button
    Then I should see additional filters section
    Then search label should contain date
    And I select filter dropdown option included "Order Status" of filter dropdown
    And I select order status filter dropdown option included "Cancelled" of order status filter dropdown
    Then 1st search label should contain "Order status is Cancelled"
    Then I should see row of order links
    Then I should not see loading icon
    Then 1st row of order status should equal to "Cancelled"
    When I select filter dropdown option included "Payment Status" of filter dropdown
    And I select payment status filter dropdown option included "Failed" of payment status filter dropdown
    Then 2nd search label should contain "Payment Status is Failed"
    Then I should see row of order links
    Then I should not see loading icon
    Then 1st row of payment status should equal to "Failed"
    When I select filter dropdown option included "Delivery Status" of filter dropdown
    And I select delivery status filter dropdown option included "Unfulfilled" of delivery status filter dropdown
    Then 3rd search label should contain "Delivery Status is Unfulfilled"
    Then I should see row of order links
    Then I should not see loading icon
    Then 1st row of delivery status should equal to "Unfulfilled"
    And ---ROLL BACK---
    Given I am on Payment Setting Page
    Then I click on 1st delete button of payment method list
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    And 1st row of payment method list should not contain "Taishin"