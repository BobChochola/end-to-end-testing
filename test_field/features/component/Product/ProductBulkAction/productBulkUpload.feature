@BaseCase @Admin @Storefront @Product @Job @ProductBulkAction @productBulkUpload @fixture-shop
Feature: Bulk upload products
  As a user of Shopline
  I want to bulk uplaod products

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

    Given I am on Product Index Page
    When I select bulk import selected of import actions dropdown
    Then I should be redirected to Product Bulk Import Update Page
    When I pick product bulk upload file to file upload selector
    Then I should be redirected to Product Bulk Import Update Preview Page
    # And I click on import product button
    # Then I should see confirm popover
    # And I click on ok button
    Then upload finished info should contain "Thanks for uploading!"

  @C3753 @C3753-1 @EAT-1006
  Scenario: Check product in admin, shop and shop product URL whether matches the product name is correct
    Then I wait for 20 seconds for product upload
    When I click on go to products page link
    Then I should be redirected to Product Index Page
    And I wait for 5 seconds for loading
    And I Refresh
    Then product list should contain "Product Test 3"
    Then product list should contain "NT$3,000"
    Then product list should contain "NT$2,000"
    Then product list should contain "30"
    Then product list should contain "Product Test 2"
    Then product list should contain "NT$2,000"
    Then product list should contain "NT$1,500"
    Then product list should contain "20"
    Then product list should contain "Product Test 1"
    Then product list should contain "NT$1,000"
    Then product list should contain "NT$800"
    Then product list should contain "10"
    And I click row of publish button for the same order of row of product list included "Product Test 3"
    Then row of product list included "Product Test 3" and same order of row of publish button should also contain "Unpublish"
    Given I am on Shop Product Index Page
    Then product of products list should contain 'Product Test 3'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then 'product-test-3' should be part of current URL
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I click on 1st row of product checkbox
    When I click on 2nd row of product checkbox
    When I click on 3rd row of product checkbox
    And I select delete selected of bulk actions dropdown
    Then I should see delete confirmation popover
    When I click on delete checkbox
    And I click on confirm bulk button
    Then product list should not contain 'Product Test'

  @C3753 @C3753-2
  Scenario: Check bulk import log info success
    When I click on go to import log link
    Then I should be redirected to Bulk Import Export Progress Page
    Then 1st report list should contain "Product"
    # Then 1st row of Status list should contain 'Pending'
    Then report list should contain "Bulk Import Product"
    Then report list should contain Export date
    Then I wait for 30 seconds for uploading
    Then I Refresh
    Then report list should contain "Total : 3"
    Then report list should contain "Successful / Failed : 3 / 0"
    Then 1st row of Status list should equal to "Done"
    When I select type dropdown option included 'Product' of Type dropdown
    Then report list should contain "Product"
    Then report list should contain "Total : 3"
    Then report list should contain "Successful / Failed : 3 / 0"
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I click on 1st row of product checkbox
    When I click on 2nd row of product checkbox
    When I click on 3rd row of product checkbox
    And I select delete selected of bulk actions dropdown
    Then I should see delete confirmation popover
    When I click on delete checkbox
    And I click on confirm bulk button
    Then product list should not contain 'Product Test'