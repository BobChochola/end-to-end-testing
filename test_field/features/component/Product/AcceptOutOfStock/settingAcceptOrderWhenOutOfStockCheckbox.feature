@BaseCase @Admin @Product @One @AcceptOutOfStock @settingAcceptOrderWhenOutOfStockCheckbox @fixture-out-of-stock @fixture-integration-one @fixture-shop @fixture-payment @fixture-delivery
Feature: Setting Accept Order When Out Of Stock checkbox
  As a Merchant
  I want to turn on Accept Order When Out Of Stock checkbox to let custom checkout when out of stock

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

  @EAT-1304 @EAT-1304-1
  Scenario: settig Accept Order When Out Of Stock checkbox on exit product
    Given I am on Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st row of product list should contain "1st Product for Checkout"
    Then I should be redirected to Product Index Page
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on quantity and pricing tab
    And I should see accept orders when out of stock label
    And accept orders when out of stock label should contain 'Accept orders when out of stock'
    And accept orders when out of stock checkbox should not be checked
    When I click on accept orders when out of stock question mark
    Then I should see accept orders when out of stock hint
    And accept orders when out of stock hint should contain 'Customers can still purchase the product when stock ≤0, and the stock deduction continues when orders are placed.'
    When I click on unlimited quantity checkbox
    Then I should not see accept orders when out of stock label
    When I click on update button
    Then I should be redirected to Product Index Page
    When I input "1st Product for Checkout" to search field
    Then I should be redirected to Product Index Page
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on quantity and pricing tab
    Then quantity area should not contain 'Accept orders when out of stock'
    And unlimited quantity checkbox should be checked
    When I click on unlimited quantity checkbox
    Then I should see accept orders when out of stock checkbox
    When I click on accept orders when out of stock checkbox
    Then accept orders when out of stock checkbox should be checked
    When I click on update button
    Then I should be redirected to Product Index Page

    When I input "6th Product for Checkout" to search field
    Then I should be redirected to Product Index Page
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on variations tab
    And I should see accept orders when out of stock label
    And accept orders when out of stock label should contain 'Accept orders when out of stock'
    And accept orders when out of stock checkbox should not be checked
    When I click on accept orders when out of stock question mark
    Then I should see accept orders when out of stock hint
    And accept orders when out of stock hint should contain 'Customers can still purchase the product when stock ≤0, and the stock deduction continues when orders are placed.'
    When I click on unlimited quantity checkbox
    Then I should not see accept orders when out of stock label
    When I click on update button
    Then I should be redirected to Product Index Page
    When I input "6th Product for Checkout" to search field
    Then I should be redirected to Product Index Page
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on variations tab
    Then quantity area should not contain 'Accept orders when out of stock'
    And unlimited quantity checkbox should be checked
    When I click on unlimited quantity checkbox
    Then I should see accept orders when out of stock checkbox
    When I click on accept orders when out of stock checkbox
    Then accept orders when out of stock checkbox should be checked
    When I click on update button
    Then I should be redirected to Product Index Page

    And ---ROLL BACK---
    When I input "1st Product for Checkout" to search field
    Then I should be redirected to Product Index Page
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on quantity and pricing tab
    When I click on accept orders when out of stock checkbox
    Then accept orders when out of stock checkbox should not be checked
    When I click on update button
    Then I should be redirected to Product Index Page
    When I input "6th Product for Checkout" to search field
    Then I should be redirected to Product Index Page
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on variations tab
    When I click on accept orders when out of stock checkbox
    Then accept orders when out of stock checkbox should not be checked
    When I click on update button
    Then I should be redirected to Product Index Page

  @EAT-1304 @EAT-1304-2
  Scenario: settig Accept Order When Out Of Stock checkbox on new product
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) EAT-1304-2" to english name field
    And I click on quantity and pricing tab
    When I fill '10' to regular price field
    And I should see accept orders when out of stock label
    And accept orders when out of stock label should contain 'Accept orders when out of stock'
    And accept orders when out of stock checkbox should not be checked
    When I click on accept orders when out of stock question mark
    Then I should see accept orders when out of stock hint
    And accept orders when out of stock hint should contain 'Customers can still purchase the product when stock ≤0, and the stock deduction continues when orders are placed.'
    When I click on accept orders when out of stock checkbox
    Then accept orders when out of stock checkbox should be checked
    Then I scroll down to id
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    And I click on quantity and pricing tab
    When I click on accept orders when out of stock checkbox
    Then accept orders when out of stock checkbox should not be checked
    When I scroll down to accept orders when out of stock checkbox
    Then out of stock warning alert should contain 'If the setting is canceled while stock ≤0, the product will show out of stock at storefront and customers cannot place orders.'
    When I click on accept orders when out of stock checkbox
    When I click on unlimited quantity checkbox
    Then quantity area should not contain 'Accept orders when out of stock'
    Then I scroll down to id
    And I check and click add button
    And I check and click add button
    Then I should be redirected to Product Index Page

    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) EAT-1304-2" to english name field
    And I click on variations tab
    When I click on variations toggle
    And I input "R" to add options field
    And I click on variations same price checkbox
    And I fill "50" to 1st row of variation price field
    And I should see accept orders when out of stock label
    And accept orders when out of stock label should contain 'Accept orders when out of stock'
    And accept orders when out of stock checkbox should not be checked
    When I click on accept orders when out of stock question mark
    Then I should see accept orders when out of stock hint
    And accept orders when out of stock hint should contain 'Customers can still purchase the product when stock ≤0, and the stock deduction continues when orders are placed.'
    When I click on accept orders when out of stock checkbox
    Then accept orders when out of stock checkbox should be checked
    Then I scroll down to id
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    When I click on variations tab
    When I click on accept orders when out of stock checkbox
    Then accept orders when out of stock checkbox should not be checked
    When I scroll down to accept orders when out of stock checkbox
    Then out of stock warning alert should contain 'If the setting is canceled while stock ≤0, the product will show out of stock at storefront and customers cannot place orders.'
    When I click on accept orders when out of stock checkbox
    When I click on unlimited quantity checkbox
    Then quantity area should not contain 'Accept orders when out of stock'
    Then I scroll down to id
    And I check and click add button
    And I check and click add button
    Then I should be redirected to Product Index Page

    And ---ROLL BACK---
    When I input 'dirty data' to search field
    Then I should see row of product list
    Then I click on select all button
    When I select delete selected of bulk actions dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm bulk button
    Then product list should not contain 'dirty data'