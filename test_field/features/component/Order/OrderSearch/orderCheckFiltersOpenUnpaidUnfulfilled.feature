@BaseCase @Storefront @Admin @Order @Search @orderCheckFiltersOpenUnpaidUnfulfilled
@fixture-shop @fixture-product @fixture-payment @fixture-delivery
Feature: Check order filters
  As a merchant
  I can see orders when adding different fillters

  @C7219 @C7219-1
  Scenario: Add date filter and status filter
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
    Given I am on Orders Page
    Then I should see row of order links
    When I click on additional filters button
    Then I should see additional filters section
    When I click on filter date start
    And I click on pick today button
    Then I should see additional filters section
    When I click on filter date end
    And I click on pick today button
    Then I should see additional filters section
    Then search label should contain date
    When I select filter dropdown option included "Order Status" of filter dropdown
    And I select order status filter dropdown option included "Open" of order status filter dropdown
    Then 1st search label should contain "Order status is Open"
    Then I should see row of order links
    Then I should not see loading icon
    Then 1st row of order status should equal to "Open"

    When I select filter dropdown option included "Payment Status" of filter dropdown
    And I select payment status filter dropdown option included "Unpaid" of payment status filter dropdown
    Then 2nd search label should contain "Payment Status is Unpaid"
    Then I should see row of order links
    Then I should not see loading icon
    Then 1st row of payment status should equal to "Unpaid"

    When I select filter dropdown option included "Delivery Status" of filter dropdown
    And I select delivery status filter dropdown option included "Unfulfilled" of delivery status filter dropdown
    Then 3rd search label should contain "Delivery Status is Unfulfilled"
    Then I should see row of order links
    Then I should not see loading icon
    Then 1st row of delivery status should equal to "Unfulfilled"