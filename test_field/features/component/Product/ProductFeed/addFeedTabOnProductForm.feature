@BaseCase @Admin @Product @ProductFeed @addFeedTabOnProductForm @fixture-product-info
Feature: Add feed tab on product form
  As a user of Shopline
  I want to add gtin/mpn/brand with the product
  So that I can see the fields in the Product Feed Data tab on product form

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

  Scenario: Product without variation
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) Product without variation" to english name field
    And I click on tab included "Quantity & Pricing"
    And I fill "10" to regular price field
    And I click on unlimited quantity checkbox
    And I click on tab included "Product Feed Data"
    And I fill "test" to brand field
    And I fill "111" to mpn field
    And I fill "222" to barcode field
    And I scroll down to id
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    And I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on tab included "Product Feed Data"
    Then brand field should contain "test"
    Then mpn field should contain "111"
    Then barcode field should contain "222"

    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown 
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then row of product list should not contain "Product without variation"

  Scenario: Product with variation
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) Product with variation" to english name field
    And I click on tab included "Quantity & Pricing"
    And I fill "10" to regular price field
    And I click on variations tab
    And I click on variations toggle
    And I input "R" to add options field
    And I input "G" to add options field
    And I click on unlimited quantity checkbox
    And I click on tab included "Product Feed Data"
    And I fill "test" to brand field
    And I fill "111" to 1st mpn field with variations
    And I fill "1111" to 2nd mpn field with variations
    And I fill "222" to 1st barcode field with variations
    And I fill "2222" to 2nd barcode field with variations
    And I scroll down to id
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    And I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on tab included "Quantity & Pricing"
    Then I should not see brand field
    Then I should not see mpn field
    Then I should not see barcode field
    And I click on tab included "Product Feed Data"
    Then brand field should contain "test"
    Then 1st mpn field with variations should contain "111"
    Then 2nd mpn field with variations should contain "1111"
    Then 1st barcode field with variations should contain "222"
    Then 2nd barcode field with variations should contain "2222"

    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown 
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then row of product list should not contain "Product with variation"