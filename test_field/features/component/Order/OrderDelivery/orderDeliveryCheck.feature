@BaseCase @Admin @Storefront @Order @OrderDelivery @orderDeliveryCheck
@fixture-payment @fixture-delivery @fixture-product @fixture-shop
Feature: Order edit delivery method
  As a merchant
  I want to edit delivery details of a local delivery order
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

  Scenario: I can edit delivery method and search on orders page
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
    And I select delivery dropdown option included "Local Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button

    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I fill address to delivery address field
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order checkbox
    And I select Update Status of bulk actions dropdown
    And I select status dropdown option included 'Delivery Status' of status type dropdown
    When I select status dropdown option included 'Arrived' of status item dropdown
    Then I should see update button
    And I click on update button
    Then I should see confirm popover
    When I click on send notification checkbox
    And I click on OK button
    Then I should see additional filters button
    When I click on additional filters button
    Then I should see additional filters section
    And I select filter dropdown option included 'Delivery Status' of filter dropdown
    When I select delivery status filter dropdown option included 'Arrived' of delivery status filter dropdown
    Then 1st row of delivery status should contain 'Arrived'
    Then 1st row of order links should contain order number
    And I click on remove filter condition button
    And I mark the value of row of order links as variable order number
    When I click on 1st row of order checkbox
    And I select Update Status of bulk actions dropdown
    And I select status dropdown option included 'Delivery Status' of status type dropdown
    When I select status dropdown option included 'Unfulfilled' of status item dropdown
    Then I should see update button
    And I click on update button
    Then I should see confirm popover
    When I click on send notification checkbox
    And I click on OK button
    Then I should see additional filters button
    When I click on additional filters button
    Then I should see additional filters section
    And I select filter dropdown option included 'Delivery Status' of filter dropdown
    When I select delivery status filter dropdown option included 'Unfulfilled' of delivery status filter dropdown
    Then 1st row of delivery status should contain 'Unfulfilled'
    Then 1st row of order links should contain order number
    And I click on remove filter condition button
    And I mark the value of row of order links as variable order number
    When I click on 1st row of order checkbox
    And I select Update Status of bulk actions dropdown
    And I select status dropdown option included 'Delivery Status' of status type dropdown
    When I select status dropdown option included 'Shipping' of status item dropdown
    Then I should see update button
    And I click on update button
    Then I should see confirm popover
    When I click on send notification checkbox
    And I click on OK button
    Then I should see additional filters button
    When I click on additional filters button
    Then I should see additional filters section
    And I select filter dropdown option included 'Delivery Status' of filter dropdown
    When I select delivery status filter dropdown option included 'Shipping' of delivery status filter dropdown
    Then 1st row of delivery status should contain 'Shipping'
    Then 1st row of order links should contain order number
    And I click on remove filter condition button
    And I mark the value of row of order links as variable order number
    When I click on 1st row of order checkbox
    And I select Update Status of bulk actions dropdown
    And I select status dropdown option included 'Delivery Status' of status type dropdown
    When I select status dropdown option included 'Shipped' of status item dropdown
    Then I should see update button
    And I click on update button
    Then I should see confirm popover
    When I click on send notification checkbox
    And I click on OK button
    Then I should see additional filters button
    When I click on additional filters button
    Then I should see additional filters section
    And I select filter dropdown option included 'Delivery Status' of filter dropdown
    When I select delivery status filter dropdown option included 'Shipped' of delivery status filter dropdown
    Then 1st row of delivery status should contain 'Shipped'
    Then 1st row of order links should contain order number
    And I click on remove filter condition button
    And I mark the value of row of order links as variable order number
    When I click on 1st row of order checkbox
    And I select Update Status of bulk actions dropdown
    And I select status dropdown option included 'Delivery Status' of status type dropdown
    When I select status dropdown option included 'Collected' of status item dropdown
    Then I should see update button
    And I click on update button
    Then I should see confirm popover
    When I click on send notification checkbox
    And I click on OK button
    Then I should see additional filters button
    When I click on additional filters button
    Then I should see additional filters section
    And I select filter dropdown option included 'Delivery Status' of filter dropdown
    When I select delivery status filter dropdown option included 'Collected' of delivery status filter dropdown
    Then 1st row of delivery status should contain 'Collected'
    Then 1st row of order links should contain order number
    And I click on remove filter condition button
    And I mark the value of row of order links as variable order number
    When I click on 1st row of order checkbox
    And I select Update Status of bulk actions dropdown
    And I select status dropdown option included 'Delivery Status' of status type dropdown
    When I select status dropdown option included 'Returned' of status item dropdown
    Then I should see update button
    And I click on update button
    Then I should see confirm popover
    When I click on send notification checkbox
    And I click on OK button
    Then I should see additional filters button
    When I click on additional filters button
    Then I should see additional filters section
    And I select filter dropdown option included 'Delivery Status' of filter dropdown
    When I select delivery status filter dropdown option included 'Returned' of delivery status filter dropdown
    Then 1st row of delivery status should contain 'Returned'
    Then 1st row of order links should contain order number
    And I click on remove filter condition button
    And I mark the value of row of order links as variable order number
    When I click on 1st row of order checkbox
    And I select Update Status of bulk actions dropdown
    And I select status dropdown option included 'Delivery Status' of status type dropdown
    When I select status dropdown option included 'Returning' of status item dropdown
    Then I should see update button
    And I click on update button
    Then I should see confirm popover
    When I click on send notification checkbox
    And I click on OK button
    Then I should see additional filters button
    When I click on additional filters button
    Then I should see additional filters section
    And I select filter dropdown option included 'Delivery Status' of filter dropdown
    When I select delivery status filter dropdown option included 'Returning' of delivery status filter dropdown
    Then 1st row of delivery status should contain 'Returning'