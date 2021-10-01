@PostTest @PreTest @BaseCase @Admin @Product @ProductLog @productLogs
Feature: Update products and view log
  As a user of Shopline
  I want to update products

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

  @C3751 @C3751-3 @fixture-product
  Scenario: View product logs
    Given I am on Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st row of product name should contain '1st Product for Checkout'
    When I select product operations dropdown option included 'Activity Logs' of product operations dropdown
    Then I should be redirected to Product Edit Page
    Then I should see row of logs