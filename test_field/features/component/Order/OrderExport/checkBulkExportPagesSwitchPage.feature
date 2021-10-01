@BaseCase @Admin @Job @Order @OrderExport @checkBulkExportPagesSwitchPage @fixture-shop @fixture-delivery @fixture-payment @fixture-product
Feature: Check the Bulk ImportExport Pages Switching and Downloading
  Check the the Bulk Import/Export page can switch the pages correctly
  Check the report of Result can be downloaded correctly

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

  @C7179 @C7179-1
  Scenario: Switch the page
    Given I am on Orders Page
    When I click on 1st row of order checkbox
    And I select export dropdown option included "Order Invoice" of export dropdown
    Then I should see export popover
    When I click on selected orders checkbox
    And I should see export button
    And I click on export button
    Then I should see export alert
    When I hover over close alert button
    And I click on close alert button
    And I select export dropdown option included "Order Invoice" of export dropdown
    Then I should see export popover
    When I click on selected orders checkbox
    And I should see export button
    And I click on export button
    Then I should see export alert
    When I hover over close alert button
    And I click on close alert button
    And I select export dropdown option included "Order Invoice" of export dropdown
    Then I should see export popover
    When I click on selected orders checkbox
    And I should see export button
    And I click on export button
    Then I should see export alert
    When I hover over close alert button
    And I click on close alert button
    And I select export dropdown option included "Order Invoice" of export dropdown
    Then I should see export popover
    When I click on selected orders checkbox
    And I should see export button
    And I click on export button
    Then I should see export alert
    When I hover over close alert button
    And I click on close alert button
    And I select export dropdown option included "Order Invoice" of export dropdown
    Then I should see export popover
    When I click on selected orders checkbox
    And I should see export button
    And I click on export button
    Then I should see export alert
    When I hover over close alert button
    And I click on close alert button
    And I select export dropdown option included "Order Invoice" of export dropdown
    Then I should see export popover
    When I click on selected orders checkbox
    And I should see export button
    And I click on export button
    Then I should see export alert
    When I hover over close alert button
    And I click on close alert button
    And I select export dropdown option included "Order Invoice" of export dropdown
    Then I should see export popover
    When I click on selected orders checkbox
    And I should see export button
    And I click on export button
    Then I should see export alert
    When I hover over close alert button
    And I click on close alert button
    And I select export dropdown option included "Order Invoice" of export dropdown
    Then I should see export popover
    When I click on selected orders checkbox
    And I should see export button
    And I click on export button
    Then I should see export alert
    When I hover over close alert button
    And I click on close alert button
    And I select export dropdown option included "Order Invoice" of export dropdown
    Then I should see export popover
    When I click on selected orders checkbox
    And I should see export button
    And I click on export button
    Then I should see export alert
    When I hover over close alert button
    And I click on close alert button
    And I select export dropdown option included "Order Invoice" of export dropdown
    Then I should see export popover
    When I click on selected orders checkbox
    And I should see export button
    And I click on export button
    Then I should see export alert
    When I hover over close alert button
    And I click on close alert button
    And I select export dropdown option included "Order Invoice" of export dropdown
    Then I should see export popover
    When I click on selected orders checkbox
    And I should see export button
    And I click on export button
    Then I should see export alert
    When I hover over close alert button
    And I click on close alert button
    And I select export dropdown option included "Order Invoice" of export dropdown
    Then I should see export popover
    When I click on selected orders checkbox
    And I should see export button
    And I click on export button
    Then I should see export alert
    When I hover over close alert button
    And I click on close alert button
    And I select export dropdown option included "Order Invoice" of export dropdown
    Then I should see export popover
    When I click on selected orders checkbox
    And I should see export button
    And I click on export button
    Then I should see export alert
    When I hover over close alert button
    And I click on close alert button
    And I select export dropdown option included "Order Invoice" of export dropdown
    Then I should see export popover
    When I click on selected orders checkbox
    And I should see export button
    And I click on export button
    Then I should see export alert
    When I hover over close alert button
    And I click on close alert button
    And I select export dropdown option included "Order Invoice" of export dropdown
    Then I should see export popover
    When I click on selected orders checkbox
    And I should see export button
    And I click on export button
    Then I should see export alert
    When I hover over close alert button
    And I click on close alert button
    And I select export dropdown option included "Order Invoice" of export dropdown
    Then I should see export popover
    When I click on selected orders checkbox
    And I should see export button
    And I click on export button
    Then I should see export alert
    When I hover over close alert button
    And I click on close alert button
    And I select export dropdown option included "Order Invoice" of export dropdown
    Then I should see export popover
    When I click on selected orders checkbox
    And I should see export button
    And I click on export button
    Then I should see export alert
    When I hover over close alert button
    And I click on close alert button
    And I select export dropdown option included "Order Invoice" of export dropdown
    Then I should see export popover
    When I click on selected orders checkbox
    And I should see export button
    And I click on export button
    Then I should see export alert
    When I hover over close alert button
    And I click on close alert button
    And I select export dropdown option included "Order Invoice" of export dropdown
    Then I should see export popover
    When I click on selected orders checkbox
    And I should see export button
    And I click on export button
    Then I should see export alert
    When I hover over close alert button
    And I click on close alert button
    And I select export dropdown option included "Order Invoice" of export dropdown
    Then I should see export popover
    When I click on selected orders checkbox
    And I should see export button
    And I click on export button
    Then I should see export alert
    When I hover over close alert button
    And I click on close alert button
    And I select export dropdown option included "Order Invoice" of export dropdown
    Then I should see export popover
    When I click on selected orders checkbox
    And I should see export button
    And I click on export button
    Given I am on Bulk Import Export Progress Page
    When I click on next page button
    Then I should see report list
    And I scroll down to next page button
    Then current page number button should contain "2"