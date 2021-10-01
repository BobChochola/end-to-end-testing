@BaseCase @Admin @Storefront @Order @Search @ReturnOrder @returnOrderFilters @fixture-shop @fixture-product @fixture-payment @fixture-delivery
Feature: Return Order Show Page Check Filtering
  As a merchant
   I want to see return-orders when adding different fillters

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
    Then I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom" of delivery method dropdown
    Then I wait for 5 seconds for loading
    And I select payment dropdown option included "Bank" of payment method dropdown
    Then I wait for 5 seconds for loading
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
    Then I mark the value of order confirm info as variable order info

    Given I am on Orders Page
    Then 1st row of order links should contain order number
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
    Then I should see OK button
    And I click on OK button
    Then I should be redirected to Return Orders Show Page
    Then I should see return order number label
    Then I mark the value of return order number label as variable return order info

  @C8253 @C8253-1
  Scenario: Add filters return status > Confirmed
    Given I am on Return Orders Page
    When I input return order number to search field
    And I wait for 5 seconds for loading
    Then 1st row of order links should contain return order number
    When I select return status of filter type dropdown
    Then I should see filter value dropdown
    When I select return confirmed of filter value dropdown
    Then I should see search label
    Then search label should contain "Return Status is Confirmed"
    And 1st row of return status should contain "Confirmed"
    Then 1st row of order links should contain return order number

  @C8253 @C8253-2
  Scenario: Add filters return status > Completed
    Given I am on Return Orders Page
    When I input return order number to search field
    And I wait for 5 seconds for loading
    Then 1st row of order links should contain return order number
    When I click on 1st row of order links
    Then I should be redirected to Return Orders Show Page
    And I should see return status dropdown
    When I select completed return of return status dropdown
    Then I should see popover
    And I click on yes button
    Then I should see return status
    And return status should equal to "Completed"
    Given I am on Return Orders Page
    When I select return status of filter type dropdown
    Then I should see filter value dropdown
    When I select return completed of filter value dropdown
    Then I should see search label
    Then search label should contain "Return Status is Completed"
    And 1st row of return status should contain "Completed"
    Then 1st row of order links should contain return order number

  @C8253 @C8253-3
  Scenario: Add filters return status > Cancelled
    Given I am on Return Orders Page
    When I input return order number to search field
    And I wait for 5 seconds for loading
    Then 1st row of order links should contain return order number
    When I click on 1st row of order links
    Then I should be redirected to Return Orders Show Page
    And I should see return status dropdown
    When I select cancelled return of return status dropdown
    Then I should see popover
    And I click on yes button
    Then I should see return status
    And return status should equal to "Cancelled"
    Given I am on Return Orders Page
    When I select return status of filter type dropdown
    Then I should see filter value dropdown
    When I select return cancelled of filter value dropdown
    Then I should see search label
    Then search label should contain "Return Status is Cancelled"
    And 1st row of return status should contain "Cancelled"
    Then 1st row of order links should contain return order number

  @C8254 @C8254-1
  Scenario: Add filters refund status > Pending
    Given I am on Return Orders Page
    When I input return order number to search field
    And I wait for 5 seconds for loading
    Then 1st row of order links should contain return order number
    When I select refund status of filter type dropdown
    Then I should see filter value dropdown
    When I select refund pending of filter value dropdown
    Then I should see search label
    Then search label should contain "Refund Status is Pending"
    And 1st row of refund status should contain "Pending"
    Then 1st row of order links should contain return order number

  @C8254 @C8254-2
  Scenario: Add filters refund status > Refunded
    Given I am on Return Orders Page
    When I input return order number to search field
    And I wait for 5 seconds for loading
    Then 1st row of order links should contain return order number
    When I click on 1st row of order links
    Then I should be redirected to Return Orders Show Page
    And I should see refund status dropdown
    When I input '1' to refund amount field
    And I select refunded refund of refund status dropdown
    Then I should see popover
    And I click on yes button
    Then I should see return status
    Then refund status should equal to "Refunded"
    Given I am on Return Orders Page
    When I select refund status of filter type dropdown
    Then I should see filter value dropdown
    When I select refund refunded of filter value dropdown
    Then I should see search label
    Then search label should contain "Refund Status is Refunded"
    And 1st row of refund status should contain "Refunded"
    Then 1st row of order links should contain return order number