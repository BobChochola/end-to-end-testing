@PostTest @PreTest @BaseCase @Admin @Promotion @promotionCreate-selectedProductMinimumItems
Feature: Create Promotion - discount selected Product Minimum Items
  As a user of Shopline
  I want to create promotion for my customer
  So that my customer can use that when checkout

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

  @C3871 @C3871-3
  Scenario: Create promotion - Selected products applied mutiple condition
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) Product for Promotion" to english name field
    And I click on quantity and pricing tab
    And I fill "20" to regular price field
    And I click on unlimited quantity checkbox
    And I scroll down to breadcrumb
    And I click on add button
    Then I should be redirected to Product Edit Page
    Given I am on Promotion Create Page
    When I fill "(dirty data) Selected products applied mutiple condition" to name field
    And I click on selected products condition checkbox
    And I select minimum items of condition type dropdown
    And I select discount amount of benefit type dropdown
    And I fill "50" to promotion value field
    And I fill "2" to promotion condition field
    And I click on add tier button
    And I fill "60" to 2nd promotion value field
    And I fill "3" to 2nd promotion condition field
    And I click on add tier button
    And I fill "70" to 3rd promotion value field
    And I fill "4" to 3rd promotion condition field
    And I click on search button
    And I should see checkbox of product list
    And I click on 1st checkbox of product list
    And I click on popup confirm button
    Then I should be redirected to Promotion Create Page
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should equal to "(dirty data) Selected products applied mutiple condition"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain "Never expires"
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Get NT$50 off on Selected Products with purchase of Selected Products over 2 items"
    Then discount summary should contain "Get NT$60 off on Selected Products with purchase of Selected Products over 3 items"
    Then discount summary should contain "Get NT$70 off on Selected Products with purchase of Selected Products over 4 items"
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    And ---ROLL BACK---
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should be redirected to Promotion Index Page
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain '(dirty data) Product for Promotion'