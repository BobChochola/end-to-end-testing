@BaseCase @ImageService @Admin @Product @productCreateWithWeight
Feature: multiple product creation with weight
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

  @C3752 @C3752-1
  Scenario: add product - two variation with different price, limited quantity, diff weight
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) 雙規格 原價不同價格 有限庫存商品 重量10~40" to english name field
    And I click on variations tab
    When I click on variations toggle
    And I input "R" to add options field
    And I input "G" to add options field
    When I click on add variation button
    And I input "S" to 2nd add options field
    And I input "M" to 2nd add options field
    And I click on variations same price checkbox
    And I fill "20" to 1st row of variation price field
    And I fill "10" to 2nd row of variation price field
    And I fill "30" to 3rd row of variation price field
    And I fill "40" to 4th row of variation price field
    And I fill "20" to 1st row of variation quantity field
    And I fill "10" to 2nd row of variation quantity field
    And I fill "30" to 3rd row of variation quantity field
    And I fill "40" to 4th row of variation quantity field
    Then I scroll down to add button
    And I click on settings tab
    And I input "test" to tag field
    Then I scroll down to id
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page

    Given I am on Product Index Page
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on variations tab
    Then I should see row of variation weight field
    And I fill "20" to 1st row of variation weight field
    And I fill "10" to 2nd row of variation weight field
    And I fill "30" to 3rd row of variation weight field
    And I input "40" to 4th row of variation weight field
    Then I should be redirected to Product Index Page
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on variations tab
    Then I should see row of variation weight field
    Then 1st row of variation weight field should contain '20'
    Then 2nd row of variation weight field should contain '10'
    Then 3rd row of variation weight field should contain '30'
    Then 4th row of variation weight field should contain '40'
    Given I am on Product Index Page
    When I select tagged with of search type dropdown
    And I input "test" to search field
    Then I should be redirected to Product Index Page
    Then I should see row of product photo list
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain "雙規格 原價不同價格 有限庫存商品 重量10~40"
    Then 1st row of regular price list should contain "10"
    Then 1st row of quantity list should contain "100"
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain '(dirty data) 雙規格 原價不同價格 有限庫存商品 重量10~40'

  @C3752 @C3752-2
  Scenario: add product - two variation with different price, limited quantity, 0.55kg
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) 雙規格 原價不同價格 有限庫存商品 重量1.25~0.5" to english name field
    And I click on variations tab
    When I click on variations toggle
    And I input "R" to add options field
    And I input "G" to add options field
    When I click on add variation button
    And I input "S" to 2nd add options field
    And I input "M" to 2nd add options field
    And I click on variations same price checkbox
    And I fill "20" to 1st row of variation price field
    And I fill "10" to 2nd row of variation price field
    And I fill "30" to 3rd row of variation price field
    And I fill "40" to 4th row of variation price field
    And I fill "20" to 1st row of variation quantity field
    And I fill "10" to 2nd row of variation quantity field
    And I fill "30" to 3rd row of variation quantity field
    And I fill "40" to 4th row of variation quantity field
    Then I scroll down to add button
    And I click on settings tab
    And I input "test" to tag field
    Then I scroll down to id
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page

    Given I am on Product Index Page
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on variations tab
    Then I should see row of variation weight field
    And I fill "1.25" to 1st row of variation weight field
    And I fill "1" to 2nd row of variation weight field
    And I fill "0.75" to 3rd row of variation weight field
    And I input "0.5" to 4th row of variation weight field
    Then I should be redirected to Product Index Page
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on variations tab
    Then I should see row of variation weight field
    Then 1st row of variation weight field should contain '1.25'
    Then 2nd row of variation weight field should contain '1'
    Then 3rd row of variation weight field should contain '0.75'
    Then 4th row of variation weight field should contain '0.5'
    Given I am on Product Index Page
    When I select tagged with of search type dropdown
    And I input "test" to search field
    Then I should be redirected to Product Index Page
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain "雙規格 原價不同價格 有限庫存商品 重量1.25~0.5"
    Then 1st row of regular price list should contain "10"
    Then 1st row of quantity list should contain "100"
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain '(dirty data) 雙規格 原價不同價格 有限庫存商品 重量1.25~0.5'