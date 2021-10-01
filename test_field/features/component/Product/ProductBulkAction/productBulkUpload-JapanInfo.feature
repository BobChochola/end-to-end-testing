@BaseCase @Admin @Storefront @Product @Job @ProductBulkAction @productBulkUpload-JapanInfo @fixture-product @fixture-dynamic-bulk-update-product @fixture-multi-lang-ja @fixture-product-info @fixture-japan-lang-bulk-update
Feature: check correct product after bulk upload products via excel - muilt language (Japanese)
  As a user of Shopline
  I want to bulk uplaod products included japanese
  then check correct product after bulk upload products

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

  @EAT-1188 @EAT-1188-4
  Scenario: check correct product after bulk upload products via excel - muilt language (Japanese)
    Given I am on Product Index Page
    When I select bulk import selected of import actions dropdown
    Then I should be redirected to Product Bulk Import Update Page
    When I pick dynamic product bulk update files to file revised selector
    Then I should be redirected to Bulk Import Export Progress Page
    Then I Refresh
    And I wait for 30 seconds for uploading
    Given I am on Product Index Page
    When I input '1st Product for Checkout' to search field
    Then 1st row of product list should contain '1st Product for Checkout'
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on info tab
    Then I should see japanese field
    Then japanese field should contain "Japan"
    And I click on SEO tab
    And I click on SEO info tab included "Japanese"
    Then SEO title field should contain "Japan title"
    Then SEO description field should contain "Japan description"
    Then SEO friendly url field should contain "1st-product-for-checkout"
    And I click on settings tab
    And I click on preorder product toggle
    Then 3rd preorder note field should contain "Preorder Note Japanese"
    And ---ROLL BACK---
    And I click on settings tab
    Then I fill '' to 3rd preorder note field
    And I click on info tab
    Then I should see japanese field
    Then I fill '' to japanese field
    And I click on SEO tab
    And I click on SEO info tab included "Japanese"
    And I fill '' to SEO title field
    And I fill '' to SEO description field
    And I fill '' to SEO friendly url field
    And I click on update button
    Then I should be redirected to Product Index Page