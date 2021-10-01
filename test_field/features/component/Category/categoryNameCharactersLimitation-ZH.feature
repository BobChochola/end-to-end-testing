@Storefront @Admin @Category @categoryNameCharactersLimitation-ZH @fixture-product @fixture-shop
Feature: Category Name Characters Limitation - ZH
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

  Scenario: Category name in ZH
    Given I am on Category Create Page
    Then I should see 4 countdown
    Then 1st countdown should contain "40"
    When I fill 'dirty-data一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三' to category name field
    Then 1st countdown should contain "0"
    Then category name field should equal to 'dirty-data一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十'
    Then title field should equal to 'dirty-data一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十'
    Then url field should equal to 'dirty-data一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十'
    And I click on add button
    Then I should be redirected to Category List Page
    Then 2nd row of categories list should contain 'dirty-data一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十'
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
    Then 2nd row of categories should contain 'Dirty-data一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十'
    And I click on 2nd row of categories
    Then title should equal to 'dirty-data一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十'
    And ---ROLL BACK---
    Given I am on Category List Page
    When I click delete button of categories list for the same order of row of categories list included "dirty-data一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十"
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see 1 delete button of categories list