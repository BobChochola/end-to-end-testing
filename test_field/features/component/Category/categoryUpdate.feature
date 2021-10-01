@PostTest @PreTest @BaseCase @Admin @Category @categoryUpdate
Feature: Category Update Feature
  As a merchant
  I can update the content of category

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

  @C3757-2 @fixture-product
  Scenario: view category's products
    Given I am on Category List Page
    When I click view products button of categories list for the same order of row of categories list included "Featured (Show on homepage)"
    Then I should be redirected to Category View Products Page
    Then I should see row of selected product list

  @C3757-3
  Scenario: Edit category name
    Given I am on Category Create Page
    And I fill "(dirty data) New Category" to category name field
    And I click on add button
    Then I should be redirected to Category List Page
    Then 2nd row of categories list should contain "New Category"
    And I click on 2nd edit button of categories list
    Then I should be redirected to Category Edit Page
    When I input "(dirty data) Edited Category" to category name field
    And I click on update button
    Then I should be redirected to Category List Page
    Then 2nd row of categories list should contain "(dirty data) Edited Category"
    And ---ROLL BACK---
    When I click delete button of categories list for the same order of row of categories list included "(dirty data) Edited Category"
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see 1 delete button of categories list

  @C3757-4
  Scenario: Set category to be SubCategory / ParentCategory
    Given I am on Category Create Page
    And I fill "(dirty data) New Category" to category name field
    And I click on add button
    Then I should be redirected to Category List Page
    Then 2nd row of categories list should contain "New Category"
    Given I am on Category Create Page
    And I fill "(dirty data) Subcategory" to category name field
    And I click on add button
    Then I should be redirected to Category List Page
    And I click on 2nd subcategory button of categories list
    Then 1st row of subcategories list should contain "Subcategory"
    And I click on 1st parentcategory button of categories list
    Then 3rd row of categories list should contain "Subcategory"
    And ---ROLL BACK---
    When I click delete button of categories list for the same order of row of categories list included "(dirty data) New Category"
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    When I click delete button of categories list for the same order of row of categories list included "(dirty data) Subcategory"
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see 1 delete button of categories list