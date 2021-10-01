@BaseCase @Admin @Storefront @Order @ReturnOrder @returnOrderSwitchTab @fixture-shop @fixture-product @fixture-payment @fixture-delivery
Feature: I want to go to Return Order Show Page
  As a merchant
  I want to select one of return orders in Return Order Show Page

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

  @C3767 @C3767-2
  Scenario: Switch to multiple status tab
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Bank" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
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
    And I should see view return button
    Then I click on view return button
    Then I should be redirected to Place Return Order Page
    When I click on row of product checkbox
    And I select return delivery dropdown option included '7-11 Return Only (C2B)' of return delivery dropdown
    And I fill name to recipient name field
    And I fill phone to recipient phone field
    And I select return payment dropdown option included 'No Pay on 7-11 Return (C2B)' of return payment dropdown
    And I click on place return button
    Then I should see popover
    And I click on OK button
    Then I should not see popover
    Then I should be redirected to Return Orders Show Page
    Then I should see return order number label
    Then I mark the value of return order number label as variable return order info

    Given I am on Return Orders Page
    When I click on tab included 'Confirmed Return' 
    When I input return order number to search field
    Then 1st row of order links should contain return order number
    Then I should see search label
    Then search label should contain "Confirmed"
    And 1st row of return status should contain "Confirmed"
    When I click on tab included 'Refund is Pending' 
    When I input return order number to search field
    Then 1st row of order links should contain return order number
    Then I should see search label
    Then search label should contain "is Pending"
    And 1st row of refund status should contain "Pending"
    When I click on tab included 'Delivery is Returning' 
    When I input return order number to search field
    Then 1st row of order links should contain return order number
    Then I should see search label
    Then search label should contain "is Returning"
    And 1st row of return delivery status should contain "Returning"