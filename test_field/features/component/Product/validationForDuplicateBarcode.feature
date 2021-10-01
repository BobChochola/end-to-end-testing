@BaseCase @Admin @Product @validationForDuplicateBarcode
Feature: Validation For Duplicate Barcode
  As a user of Shopline
  I can't set same barcode in any product

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click no thanks button

  @EAT-1261 @EAT-1261-1
  Scenario: set same barcode to diff variant/new product/copy product and should see error message
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) product with barcode" to english name field
    And I click on quantity and pricing tab
    And I fill "20" to regular price field
    And I click on unlimited quantity checkbox
    And I click on variations tab
    And I click on variations toggle
    And I input "R" to add options field
    And I input "G" to add options field
    And I click on tab included 'Product Feed Data'
    And I fill 'duplicate barcode' to barcode field with variations
    And I fill 'duplicate barcode' to 2nd barcode field with variations
    And I click on add button
    Then 1st error msg should contain 'Barcode is already associated with another product'
    Then 2nd error msg should contain 'Barcode is already associated with another product'
    When I fill '' to barcode field with variations
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    And I click on tab included 'Product Feed Data'
    And I fill 'duplicate barcode' to barcode field with variations
    When I click on update button
    Then error msg should contain 'Barcode is already associated with another product'

    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) product with barcode" to english name field
    And I click on quantity and pricing tab
    And I fill "20" to regular price field
    And I click on unlimited quantity checkbox
    And I click on tab included 'Product Feed Data'
    And I fill 'duplicate barcode' to barcode field
    When I click on add button
    Then error msg should contain 'Barcode is already associated with another product'
    Given I am on Product Index Page
    And I select product operations dropdown option included 'Copy' of product operations dropdown
    And I should be redirected to Product Edit Page
    And I click on tab included 'Product Feed Data'
    And 2nd barcode field with variations should not contain 'duplicate barcode'
    And I fill 'duplicate barcode' to 2nd barcode field with variations
    When I click on update button
    Then error msg should contain 'Barcode is already associated with another product'

    And ---ROLL BACK---
    Given I am on Product Index Page
    When I fill '(dirty data)' to search field
    And I should see row of product list
    And I click on select all button
    And I select delete selected of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm bulk button
    Then I should see product list
    Then product list should not contain '(dirty data)'

  @EAT-1261 @EAT-1261-2
  Scenario: edit no-layer barcode product to two layer and save same barcode to new product >> should see error message
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) product with barcode" to english name field
    And I click on quantity and pricing tab
    And I fill "20" to regular price field
    And I click on unlimited quantity checkbox
    And I click on tab included 'Product Feed Data'
    And I fill 'duplicate barcode' to barcode field
    And I click on add button
    Then I should be redirected to Product Edit Page
    And I click on variations tab
    And I click on variations toggle
    And I input "R" to add options field
    And I input "G" to add options field
    And I click on tab included 'Product Feed Data'
    And I fill 'duplicate barcode' to barcode field with variations
    And I click on update button
    Then I should be redirected to Product Index Page

    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) product with barcode 2" to english name field
    And I click on quantity and pricing tab
    And I fill "20" to regular price field
    And I click on unlimited quantity checkbox
    And I click on tab included 'Product Feed Data'
    And I fill 'duplicate barcode' to barcode field
    When I click on add button
    Then error msg should contain 'Barcode is already associated with another product'
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I fill '(dirty data)' to search field
    And I should see row of product list
    And I click on select all button
    And I select delete selected of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm bulk button
    Then I should see product list
    Then product list should not contain '(dirty data)'