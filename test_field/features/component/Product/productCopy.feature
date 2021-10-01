@PostTest @PreTest @BaseCase @Admin @Product @productCopy
Feature: Update products - copy product
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

  @C3751 @C3751-2 @fixture-product
  Scenario: Copy product
    Given I am on Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st row of product list should contain '1st Product for Checkout'
    Then I should be redirected to Product Index Page
    When I select product operations dropdown option included 'Copy' of product operations dropdown
    Then I should be redirected to Product Create Page
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    When I input "1st Product for Checkout" to search field
    Then I should be redirected to Product Index Page
    Then I should see row of product list
    Then 1st row of product list should contain "1st Product for Checkout"
    Then 2nd row of product list should contain "1st Product for Checkout"
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
