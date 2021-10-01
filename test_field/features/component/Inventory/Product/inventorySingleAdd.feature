@PostTest @PreTest @BaseCase @Admin @Product @Inventory @inventorySingleAdd
Feature: update quantity on product edit page and check on inventory page
  As a user of Shopline
  I want to update product's inventory
  So that I can keep inventory of those product in correct quantity

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

  @C3758 @C3758-5 @C3758-5-1
  Scenario: Single product - Add quantity
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    When I click on info tab
    And I fill "(dirty data) Add Inventory" to english name field
    And I click on quantity and pricing tab
    And I fill "20" to regular price field
    And I fill "0" to quantity field
    And I scroll down to id
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Inventory Page
    And I fill "10" to 1st row of quantity field
    And I scroll down to tab
    And I click on 1st save button
    Then I should not see save button
    Then 1st row of product list should contain "10"
    Given I am on Product Index Page
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on quantity and pricing tab
    Then quantity field should equal to "10"
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain 'Add Inventory'