@PostTest @PreTest @BaseCase @Admin @Category @categoryCreate
Feature: Category Create Feature
  As a merchant
  I wanna create mutilple category for separated different product to different categories

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

  @C3756
  Scenario: Create Category
    Given I am on Category Create Page
    And I fill "(dirty data) New Category" to category name field
    And I click on add button
    Then I should be redirected to Category List Page
    Then 2nd row of categories list should contain "New Category"
    And ---ROLL BACK---
    When I click delete button of categories list for the same order of row of categories list included "(dirty data) New Category"
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see 1 delete button of categories list