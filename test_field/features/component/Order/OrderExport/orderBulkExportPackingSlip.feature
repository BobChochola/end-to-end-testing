@BaseCase @Admin @Order @OrderExport @Job @orderBulkExportPackingSlip
@fixture-shop @fixture-delivery @fixture-payment
Feature: Bulk export Packing Slip - current page
  As a merchant
  I want to bulk export Packing Slip

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

  @C3764 @C3764-7
  Scenario: Bulk export packing slip by filtering date
    Given I am on Basic Setting Page
    When I mark the value of shop name field as variable shop name
    Given I am on Orders Page
    When I select export dropdown option included "Packing Slip" of export dropdown
    Then I should see export popover
    When I click on export orders by date checkbox
    And I fill date to start date field
    And I fill date to end date field
    And I should see export button
    And I click on export button
    Then I should see export alert
    Then I wait for 100 seconds for mail sent
    Given I am on Google Mail Page
    Then I should see account field
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    And I should see search field
    When I input shop name to search field
    Then I should see search mail list
    Then search mail list should contain "Download Packing Slip"

  @C3764 @C3764-11
  Scenario: Bulk export packing slip from selected orders
    Given I am on Basic Setting Page
    When I mark the value of shop name field as variable shop name
    Given I am on Orders Page
    When I click on 1st row of order checkbox
    And I select export dropdown option included "Packing Slip" of export dropdown
    Then I should see export popover
    When I click on selected orders checkbox
    And I should see export button
    And I click on export button
    Then I should see export alert
    Then I wait for 180 seconds for mail sent
    Given I am on Google Mail Page
    Then I should see account field
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    And I should see search field
    When I input shop name to search field
    Then I should see search mail list
    Then search mail list should contain "Download Packing Slip"