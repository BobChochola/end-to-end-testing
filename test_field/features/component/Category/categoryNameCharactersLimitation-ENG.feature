@BaseCase @Storefront @Admin @Category @categoryNameCharactersLimitation-ENG @fixture-product @fixture-shop
Feature: Category Name Characters Limitation - ENG
  As a merchant
  I want to create a new category with the name more than 40 characters

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

  Scenario: Category name in ENG
    Given I am on Category Create Page
    Then I should see 4 countdown
    Then 1st countdown should contain "40"
    # input 43 char into field
    And I fill 'dirty-dataabcdefghijabcdefghijabcdefghijabc' to category name field
    Then 1st countdown should contain "0"
    # should be 40 char in the field
    Then category name field should equal to 'dirty-dataabcdefghijabcdefghijabcdefghij'
    Then title field should equal to 'dirty-dataabcdefghijabcdefghijabcdefghij'
    Then url field should equal to 'dirty-dataabcdefghijabcdefghijabcdefghij'
    And I click on add button
    Then I should be redirected to Category List Page
    Then 2nd row of categories list should contain 'dirty-dataabcdefghijabcdefghijabcdefghij'
    Given I am on Product Index Page
    Then I click on 1st row of product checkbox
    And I select assign to categories of bulk actions dropdown
    Then I should see assign button
    And I click on 2nd categories checkbox
    And I click on assign button
    And I should see confirmation popover
    And I click on confirm bulk button
    Then I should see alert
    Given I am on Shop Product Index Page
    # category name fist char should be upercase
    Then 2nd row of categories should contain 'Dirty-dataabcdefghijabcdefghijabcdefghij'
    And I click on 2nd row of categories
    Then title should equal to 'dirty-dataabcdefghijabcdefghijabcdefghij'
    And ---ROLL BACK---
    Given I am on Category List Page
    When I click delete button of categories list for the same order of row of categories list included "dirty-dataabcdefghijabcdefghijabcdefghij"
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see 1 delete button of categories list