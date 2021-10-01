@BaseCase @Admin @Product @decimalPriceProduct @baseLocation-HK
Feature: decimal price product create
  As a user of Shopline
  I want to create product have decimal price

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

  @C3787
  Scenario: add product - decimal price
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) decimal price product" to english name field
    And I click on quantity and pricing tab
    And I fill "1.99" to regular price field
    And I click on unlimited quantity checkbox
    Then I scroll down to id
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    Then 1st row of product list should contain "decimal price product"
    Then 1st row of regular price list should contain "1.99"
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain '(dirty data) decimal price product'
