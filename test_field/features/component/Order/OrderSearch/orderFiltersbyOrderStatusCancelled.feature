@BaseCase2 @Storefront @Admin @Order @Search @orderFiltersbyOrderStatusCancelled
@fixture-shop @fixture-product @fixture-payment @fixture-delivery
Feature: Check order filters
  As a merchant
  I want to check filter Order status and export stock picking list

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
    Given I am on Basic Setting Page
    And I mark the value of shop name field as variable shop name

  @C8250 @C8250-4
  Scenario: Add date filter and status filter then export the stock picking list
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I select Cancelled of order status dropdown
    Then I should see YES button
    And I click on YES button
    Then I should not see YES button
    Then order status should equal to "Cancelled"
    Given I am on Orders Page
    Then I should see row of order links
    When I click on additional filters button
    Then I should see additional filters section
    And I select filter dropdown option included "Order Status" of filter dropdown
    And I select order status filter dropdown option included "Cancelled" of order status filter dropdown
    Then 1st search label should contain "Order status is Cancelled"
    Then I should see row of order links
    Then I should not see loading icon
    Then 1st row of order status should equal to "Cancelled"
    When I click on 1st row of order checkbox
    Then I select export dropdown option included "Stock Picking List" of export dropdown
    Then I should see export popover
    And I click on selected orders checkbox
    And I should see export button
    When I click on export button
    Then I should see export alert
    Then I wait for 100 seconds for mail sent
    Given I am on Google Mail Page
    Then I should see account field
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    Then I should see search mail list
    Then search mail list should contain "Download Stock Picking List"
    When I click on row of mail list included "Download Stock Picking List"
    Then I should see mail detail
    When I click on download button
    And I switch to 2 of tabs
    And I should be redirected to Report Pdf Page
    Then I should see stock picking list