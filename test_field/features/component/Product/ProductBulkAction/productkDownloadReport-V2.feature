@BaseCase @Admin @Storefront @Product @Job @ProductBulkAction @productkDownloadReport-V2 @fixture-product @fixture-bulk-update-new-fields
Feature: Users are Able to Export Bulk Update File with Product Dynamic Field - V2
  As a user of Shopline
  I want to bulk uplaod products in v2
  then check updated report in google mail download

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

    Given I am on Basic Setting Page
    And I mark the value of shop name field as variable shop name

    Given I am on Product Index Page
    When I select bulk import selected of import actions dropdown
    Then I should be redirected to Product Bulk Import Update Page
    Then I should see export product bulk update file button
    And I click on export product bulk update file button
    And I wait for 5 seconds for loading
    Then I should be redirected to Bulk Import Export Progress Page

  @EAT-1188 @EAT-1188-1
  Scenario: Users are Able to Export Bulk Update File with Product Dynamic Field - V2
    Then I wait for 20 seconds for product upload
    When I Refresh
    Then report list should contain "Bulk Update Product Form V2"
    Then report list should contain "Product"
    Then report list should contain Export date
    Then report list should contain "Total : 1"
    Then report list should contain "Successful / Failed : 1 / 0"
    Then 1st row of Status list should equal to "Done"
    Then I wait for 10 seconds for mail sent

    Given I am on Google Mail Page
    Then I should see account field
    When I fill merchant email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    Then I wait for 5 seconds for loading
    Then I should see row of mail list
    When I click on row of mail list included "Download Product Bulk Update Form"
    Then I should see mail detail
     And I wait for 10 seconds for loading
    Then downloaded file from download button should contain "Product Name Traditional Chinese"
    Then downloaded file from download button should contain "Product Name English"
    
    Then downloaded file from download button should contain "SEO Title Traditional Chinese"
    Then downloaded file from download button should contain "SEO Title English"
    
    Then downloaded file from download button should contain "SEO Description Traditional Chinese"
    Then downloaded file from download button should contain "SEO Description English"
    
    Then downloaded file from download button should contain "SEO Keywords"
    Then downloaded file from download button should contain "Preorder Product"
    
    Then downloaded file from download button should contain "Preorder Note Traditional Chinese"
    Then downloaded file from download button should contain "Preorder Note English"

    Then downloaded file from download button should contain "Member Price"

    Then downloaded file from download button should contain "WeightKG"

    Then downloaded file from download button should contain "Tags"

    Then downloaded file from download button should contain "Variant Sale Price"
    Then downloaded file from download button should contain "Variant Cost"
    Then downloaded file from download button should contain "Variant WeightKG"