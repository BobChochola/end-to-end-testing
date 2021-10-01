@OneBaseCase @OneQuickTest @Admin @Product @Import @oneImportUpdateProduct @fixture-sl-pos @fixture-sl-pos-admin @fixture-integration-one @fixture-one-bulk-update-product @theme-ultra-chic
Feature: check correct product after bulk update products via excel
  As a merchant
  I can see correct product at one page after uploading update excel file

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

  @EAT-798
  Scenario: check correct product after bulk update products via excel
    Given I am on Inventory Page
    When I input "1st Product for Checkout" to search field
    Then I should see row of product list
    Then 1st row of product list should contain "1st Product for Checkout"
    When I mark the value of 1st row of product variant quantity as variable first quantity

    When I input "10th Product for Checkout" to search field
    Then I should see row of product list
    Then 1st row of product list should contain "10th Product for Checkout"
    When I mark the value of 1st row of product variant quantity as variable all quantity
    When I mark the value of 3th row of product variant quantity as variable second quantity
    When I mark the value of 5th row of product variant quantity as variable third quantity

    When I input "19th Product for Checkout" to search field
    Then I should see row of product list
    Then 1st row of product list should contain "19th Product for Checkout"
    When I mark the value of 1st row of product variant quantity as variable forth quantity
    Given I am on Product Index Page
    When I select bulk import selected of import actions dropdown
    Then I should be redirected to Product Bulk Import Update Page
    When I pick one product bulk update file to file revised selector
    Then I should be redirected to Bulk Import Export Progress Page
    # Then I Refresh
    # Then 1st report list should contain "Total : 3"
    # Then 1st report list should contain "Successful / Failed : 3 / 0"
    And I wait for 30 seconds for uploading

    Given I am on One Product Index Page
    When I input '1st Product for Checkout' to search field
    Then 1st product list included '1st Product for Checkout' and same order of stock quantity should also equal to first updated quantity
    Then 1st product list included '1st Product for Checkout' and same order of variants quantity should also equal to '0'
    Then 1st product list included '1st Product for Checkout' and same order of pend to deliver quantity should also equal to "0"
    Then 1st product list included '1st Product for Checkout' and same order of available quantity should also equal to first updated quantity
    Then I click manage button for the same order of product list included '1st Product for Checkout'

    Then I should be redirected to One Product Manage Page
    Then 1st sku should contain 'AutoTest'
    Then sales channel should contain shop name
    Then I should see 1 unpublish status
    Then I should see 1 product type
    Then sales channel available quantity should equal to first updated quantity

    Given I am on One Product Index Page
    When I input '10th Product for Checkout' to search field
    Then 1st product list included '10th Product for Checkout' and same order of stock quantity should also equal to all updated quantity
    Then 1st product list included '10th Product for Checkout' and same order of variants quantity should also equal to "4"
    Then 1st product list included '10th Product for Checkout' and same order of pend to deliver quantity should also equal to "0"
    Then 1st product list included '10th Product for Checkout' and same order of available quantity should also equal to all updated quantity
    Then I click manage button for the same order of product list included '10th Product for Checkout'

    Then I should be redirected to One Product Manage Page
    Then sales channel should contain shop name
    Then I should see 4 unpublish status
    Then I should see 4 product type
    Then variant included 'Blue, M' and same order of sales channel available quantity should also contain second updated quantity
    Then variant included 'Red, M' and same order of sales channel available quantity should also contain third updated quantity

    Given I am on One Product Index Page
    When I input '19th Product for Checkout' to search field

    Then 1st product list included '19th Product for Checkout' and same order of stock quantity should also equal to forth updated quantity
    Then 1st product list included '19th Product for Checkout' and same order of variants quantity should also equal to "1"
    Then 1st product list included '19th Product for Checkout' and same order of pend to deliver quantity should also equal to "0"
    Then 1st product list included '19th Product for Checkout' and same order of available quantity should also equal to forth updated quantity
    Then I click manage button for the same order of product list included '19th Product for Checkout'

    Then I should be redirected to One Product Manage Page
    Then 1st sku should contain 'AutoTestB'
    Then sales channel should contain shop name
    Then I should see 1 unpublish status
    Then I should see 1 product type
    Then sales channel available quantity should equal to forth updated quantity
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st row of product list should contain "1st Product for Checkout"
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on tab included 'Info'
    Then I should see english name field
    When I fill '1st Product for Checkout' to zh name field
    When I click on tab included 'Quantity'
    Then I should see sku field
    When I fill '' to sku field
    And I click on publish toggle
    And I click on update button
    Then I should be redirected to Product Index Page
    Given I am on Product Index Page
    When I input "10th Product for Checkout" to search field
    Then 1st row of product list should contain "10th Product for Checkout"
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on tab included 'Info'
    Then I should see english name field
    When I fill '10th Product for Checkout' to zh name field
    And I click on publish toggle
    And I click on update button
    Then I should be redirected to Product Index Page
    Given I am on Product Index Page
    When I input "19th Product for Checkout" to search field
    Then 1st row of product list should contain "19th Product for Checkout"
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on tab included 'Info'
    Then I should see english name field
    When I fill '19th Product for Checkout' to zh name field
    When I click on tab included 'Quantity'
    Then I should see sku field
    When I fill '' to sku field
    And I click on publish toggle
    And I click on update button
    Then I should be redirected to Product Index Page