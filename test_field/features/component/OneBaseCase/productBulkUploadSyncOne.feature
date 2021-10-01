@OneBaseCase @Admin @Product @productBulkUploadSyncOne @fixture-sl-pos @fixture-sl-pos-admin @fixture-integration-one
Feature: Bulk upload products sync One
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

    Given I am on Basic Setting Page
    And I mark the value of shop name field as variable shop name

  @EAT-797
  Scenario: Bulk upload products and check One basic UI
    Given I am on Product Index Page
    When I select bulk import selected of import actions dropdown
    Then I should be redirected to Product Bulk Import Update Page
    When I pick product bulk upload file to file upload selector
    Then I should be redirected to Product Bulk Import Update Preview Page
    # And I click on import product button
    # Then I should see confirm popover
    # And I click on ok button
    Then upload finished info should contain "Thanks for uploading!"
    Then I wait for 30 seconds for product upload
    When I click on go to products page link
    Then I should be redirected to Product Index Page
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

    Then I wait for 30 seconds for product sync
    Given I am on One Product Index Page
    When I input 'Product Test 3' to search field
    Then product list included 'Product Test 3' and same order of variants quantity should also equal to '0'
    Then product list included 'Product Test 3' and same order of stock quantity should also contain '30'
    Then product list included 'Product Test 3' and same order of pend to deliver quantity should also equal to '0'
    Then product list included 'Product Test 3' and same order of available quantity should also contain '30'
    Then I click manage button for the same order of product list included 'Product Test 3'
    Then I should be redirected to One Product Manage Page
    Then sales channel should contain shop name
    Then country should contain "Taiwan"
    Then product name should contain "Product Test 3"
    Then I should see 1 product type
    Then I should see 1 unpublish status
    Then sales channel warehouse should contain "Primary"
    Then sales channel available quantity should contain "30"

    When I click on inventory tab
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "30"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "30"

    Given I am on One Product Index Page
    When I input 'Product Test 2' to search field
    Then product list included 'Product Test 2' and same order of variants quantity should also equal to '0'
    Then product list included 'Product Test 2' and same order of stock quantity should also contain '20'
    Then product list included 'Product Test 2' and same order of pend to deliver quantity should also equal to '0'
    Then product list included 'Product Test 2' and same order of available quantity should also contain '20'
    Then I click manage button for the same order of product list included 'Product Test 2'

    Then I should be redirected to One Product Manage Page
    Then sales channel should contain shop name
    Then country should contain "Taiwan"
    Then product name should contain "Product Test 2"
    Then I should see 1 product type
    Then I should see 1 unpublish status
    Then sales channel warehouse should contain "Primary"
    Then sales channel available quantity should contain "20"
    When I click on inventory tab
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "20"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "20"

    Given I am on One Product Index Page
    When I input 'Product Test 1' to search field
    Then product list included 'Product Test 1' and same order of variants quantity should also equal to '0'
    Then product list included 'Product Test 1' and same order of stock quantity should also contain '10'
    Then product list included 'Product Test 1' and same order of pend to deliver quantity should also equal to '0'
    Then product list included 'Product Test 1' and same order of available quantity should also contain '10'
    Then I click manage button for the same order of product list included 'Product Test 1'

    Then I should be redirected to One Product Manage Page
    Then sales channel should contain shop name
    Then country should contain "Taiwan"
    Then product name should contain "Product Test 1"
    Then I should see 1 product type
    Then I should see 1 unpublish status
    Then sales channel warehouse should contain "Primary"
    Then sales channel available quantity should contain "10"
    When I click on inventory tab
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "10"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "10"
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
