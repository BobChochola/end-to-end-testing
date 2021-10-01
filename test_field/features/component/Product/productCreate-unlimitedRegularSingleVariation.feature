@PostTest @PreTest @BaseCase @ImageService @Admin @Product @productCreate-unlimitedRegularSingleVariation
Feature: create 1 layer unlimited product
  As a user of Shopline
  I want to create multiple products
  So that my customer can see those products after created

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

  @C3748 @C3748-2
  Scenario: add product - regular price, single variation, unlimited quantity
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) 單規格同價格無限庫存商品" to english name field
    And I click on quantity and pricing tab
    And I fill "20" to regular price field
    And I click on unlimited quantity checkbox
    And I click on variations tab
    And I click on variations toggle
    And I input "R" to add options field
    And I input "G" to add options field
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    Then I should be redirected to Product Index Page
    Then I should see row of product photo list
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain "單規格同價格無限庫存商品"
    Then 1st row of regular price list should contain "20"
    Then 1st row of quantity list should contain "∞"
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain '(dirty data) 單規格同價格無限庫存商品'