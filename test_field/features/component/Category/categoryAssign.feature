@BaseCase @Admin @Category @categoryAssign
Feature: Category and product assign
  As a merchant
  I can assign product to diff categories

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

    Given I am on Category Create Page
    And I fill "(dirty data) First Category" to category name field
    And I click on add button
    Then I should be redirected to Category List Page
    And I click on 1st subcategory button of categories list
    Then 1st row of subcategories list should contain 'First Category'
    Given I am on Category Create Page
    And I fill "(dirty data) Second Category" to category name field
    And I click on add button
    Then I should be redirected to Category List Page
    Then 3rd row of categories list should contain "Second Category"

  @C3999 @fixture-product
  Scenario: Assign product to two diff categories
    Given I am on Product Index Page
    When I input "Product for Checkout" to search field
    Then I should be redirected to Product Index Page
    Then I should see row of product checkbox
    When I click row of product checkbox for the same order of row of product name included "20th Product for Checkout"
    When I click row of product checkbox for the same order of row of product name included "19th Product for Checkout"
    And I select assign to categories of bulk actions dropdown
    And I click on 2nd categories checkbox
    And I click on assign button
    And I should see confirmation popover
    And I click on confirm bulk button
    Then I should see alert
    Given I am on Category List Page
    When I click view products button of categories list for the same order of row of categories list included "(dirty data) First Category"
    Then I should be redirected to Category View Products Page
    Then selected products should contain "19th Product for Checkout"
    Then selected products should contain "20th Product for Checkout"
    Given I am on Product Index Page
    When I input "Product for Checkout" to search field
    Then I should see row of product checkbox
    When I click row of product checkbox for the same order of row of product name included "20th Product for Checkout"
    When I click row of product checkbox for the same order of row of product name included "19th Product for Checkout"
    When I click row of product checkbox for the same order of row of product name included "17th Product for Checkout"
    And I select assign to categories of bulk actions dropdown
    And I click on 3nd categories checkbox
    And I click on assign button
    And I should see confirmation popover
    And I click on confirm bulk button
    Then I should see alert
    Given I am on Category List Page
    When I click view products button of categories list for the same order of row of categories list included "(dirty data) Second Category"
    Then I should be redirected to Category View Products Page
    Then selected products should contain "17th Product for Checkout"
    Then selected products should contain "19th Product for Checkout"
    Then selected products should contain "20th Product for Checkout"
    And ---ROLL BACK---
    Given I am on Category List Page
    When I click delete button of categories list for the same order of row of categories list included "(dirty data) First Category"
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    When I click delete button of categories list for the same order of row of categories list included "(dirty data) Second Category"
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see 1 delete button of categories list