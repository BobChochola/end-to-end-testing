@OneBaseCase @OneQuickTest @Admin @Product @createProductSyncOne @fixture-sl-pos @fixture-sl-pos-admin @fixture-integration-one
Feature: Create product and check One basic UI
  As a user of Shopline
  I want to check create product sync One

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

    Given I am on Basic Setting Page
    And I mark the value of shop name field as variable shop name

  @EAT-795 @EAT-795-1
  Scenario: Create product and check One basic UI
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) 1st product for One" to english name field
    And I click on quantity and pricing tab
    And I fill "20" to regular price field
    And I fill "15" to sale price field
    And I fill "10" to quantity field
    And I fill "A001" to product sku field
    Then I should see quantity of retail store reminder
    Then quantity of retail store reminder should contain retail store reminder
    And I scroll down to breadcrumb
    And I click on add button
    
    Then I should be redirected to Product Index Page
    Then popup title should contain "1st product for One"
    Then 1st popup panel should contain "Create Purchase Order"
    Then 2nd popup panel should contain "Directly Edit Inventory of Each Warehouse"
    Then 3rd popup panel should contain "Add Another Product"
    And I click on back to my products panel
    Then row of product list should contain "1st product for One"
    Then row of regular price list should contain "NT$20"
    Then row of sale price list should contain "NT$15"
    Then row of quantity list should contain "10"
    Then I wait for 30 seconds for products sync

    Given I am on One Product Index Page
    When I input "1st product for One" to search field
    Then product list included '1st product for One' and same order of stock quantity should also equal to "10"
    Then product list included '1st product for One' and same order of variants quantity should also equal to "0"
    Then product list included '1st product for One' and same order of pend to deliver quantity should also equal to "0"
    Then product list included '1st product for One' and same order of available quantity should also equal to "10"
    Then I click manage button for the same order of product list included '1st product for One'

    Then I should be redirected to One Product Manage Page
    Then 1st sales channel should contain shop name
    Then 1st country should contain "Taiwan"
    Then 1st product name should contain "1st product for One" 
    Then I should see 1 product type
    Then I should see 1 publish status
    Then 1st sku should contain "A001"
    Then 1st sales channel warehouse should contain "Primary"
    Then 1st sales channel available quantity should equal to "10"
    
    When I click on inventory tab
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "10"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "10"
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain '(dirty data)'

  @EAT-795 @EAT-795-2
  Scenario: Create product unlimited and check One basic UI
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "unlimited product for One" to english name field
    And I click on quantity and pricing tab
    And I fill "20" to regular price field
    And I fill "15" to sale price field
    And I click on unlimited quantity checkbox
    And I fill "A001" to product sku field
    And I click on add button

    Then I should be redirected to Product Index Page
    Then popup title should contain "unlimited product for One"
    Then 1st popup panel should contain "Create Purchase Order"
    Then 2nd popup panel should contain "Directly Edit Inventory of Each Warehouse"
    Then 3rd popup panel should contain "Add Another Product"
    And I click on back to my products panel
    Then row of product list should contain "unlimited product for One"
    Then row of regular price list should contain "NT$20"
    Then row of sale price list should contain "NT$15"
    Then row of quantity list should contain "∞"
    And I wait for 30 seconds for syncone

    Given I am on One Product Index Page
    When I input "unlimited product for One" to search field
    Then product list included 'unlimited product for One' and same order of stock quantity should also equal to "0"
    Then product list included 'unlimited product for One' and same order of variants quantity should also equal to "0"
    Then product list included 'unlimited product for One' and same order of pend to deliver quantity should also equal to "0"
    Then product list included 'unlimited product for One' and same order of available quantity should also equal to "0"
    Then I click manage button for the same order of product list included 'unlimited product for One'

    Then I should be redirected to One Product Manage Page
    Then 1st sales channel should contain shop name
    Then 1st country should contain "Taiwan"
    Then 1st product name should contain "unlimited product for One"
    Then I should see 1 product type
    Then I should see 1 publish status
    Then 1st sku should contain "A001"
    Then 1st sales channel warehouse should contain "Primary"
    Then 1st sales channel available quantity should contain "∞"

    When I click on inventory tab
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "0"
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain '(dirty data)'
