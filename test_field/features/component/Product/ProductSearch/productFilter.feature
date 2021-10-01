@BaseCase @Admin @Product @ProductSearch @Search @productFilter @fixture-product
Feature: Product filter
  As a user of Shopline
  I want to filter products
  So that I can find that product more fast

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

  @C8240
  Scenario: filter product - published product
    Given I am on Product Index Page
    Then I should see row of product list
    When I select filter dropdown option included "Published" of filter dropdown
    Then I should see row of product list
    Then 1st row of product list should contain "Unpublish"

  @C8241
  Scenario: filter product - unpublished product
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) Product Filter" to english name field
    And I click on quantity and pricing tab
    And I fill "20" to regular price field
    And I click on unlimited quantity checkbox
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    When I input "Product Filter" to search field
    Then I should see row of product list
    Then 1st row of product list should contain 'Product Filter'
    Then I click on 1st row of publish button
    And I wait for 5 seconds for loading
    When I select filter dropdown option included "Unpublished" of filter dropdown
    Then I should see row of product list
    Then 1st row of product list should contain "Publish"
    And ---ROLL BACK---
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain '(dirty data) Product Filter'

  @C8242
  Scenario: filter product - category
    Given I am on Category Create Page
    And I fill "(dirty data) Filter Category" to category name field
    And I click on add button
    Then I should be redirected to Category List Page
    Then 2nd row of categories list should contain "Filter Category"
    Given I am on Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st row of product list should contain '1st Product for Checkout'
    When I click on 1st row of product checkbox
    And I select assign to categories of bulk actions dropdown
    And I click on 2nd categories checkbox
    And I click on assign button
    And I should see confirmation popover
    And I click on confirm bulk button
    Then I should see alert
    And I wait for 3 seconds for product sync
    When I select filter dropdown option included "Category" of filter dropdown
    When I click on filter dropdown option included "Filter Category"
    Then I should see row of product list
    Then 1st row of product list should contain "1st Product for Checkout"
    And ---ROLL BACK---
    Given I am on Category List Page
    When I click delete button of categories list for the same order of row of categories list included "(dirty data) Filter Category"
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see 1 delete button of categories list