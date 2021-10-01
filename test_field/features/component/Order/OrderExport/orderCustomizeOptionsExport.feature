@BaseCase @Admin @Order @OrderExport @Search @Job @orderCustomizeOptionsExport
@fixture-shop @fixture-delivery @fixture-payment @fixture-product
Feature: Customize export order report
  As a merchant
  I want to export my order report as excel

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

  @C4122
  Scenario: Choose options to Customize export order report
    Given I am on Orders Page
    When I select export dropdown option included "Order Report" of export dropdown
    And I should see export popover
    And I click on reset button
    When I click on 1st Option bar
    Then I should see Option hidden bar
    When I click on Option checkbox included " All"
    Then The Last Fields selected should contain "Address - All"
    When I click on reset button
    Then The Last Fields selected should contain "Product Type"
    When I click on Option checkbox included "Tracking"
    And I click on Option checkbox included "Customer"
    And I click on Option checkbox included "mail"
    And I click on Option checkbox included "Gender"
    And I click on Option checkbox included "Birthday"
    Then The Last Fields selected should contain "Birthday"
    And I should see export button
    And I click on export button
    And I hover over close alert button
    And I click on close alert button
    And I wait for 200 seconds for loading
    Given I am on Bulk Import Export Progress Page
    Then 1st status should contain "Done"
    And I click on User Menu
    And I click on Logout
    Then I should be redirected to Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button    
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button
    Given I am on Orders Page
    When I select export dropdown option included "Order Report" of export dropdown
    And I should see export popover
    And The Last Fields selected should contain "Birthday"
    And I click on cancel button
    And I click on User Menu
    And I click on Logout
    Then I should be redirected to Admin Login Page
    When I fill correct admin email to email field
    And I fill correct admin password to password field
    And I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button    
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button
    Given I am on Orders Page
    When I select export dropdown option included "Order Report" of export dropdown
    And I should see export popover
    And The Last Fields selected should not contain "Birthday"