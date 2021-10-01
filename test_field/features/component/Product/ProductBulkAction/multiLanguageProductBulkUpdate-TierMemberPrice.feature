@BaseCase @Admin @Storefront @Product @ProductBulkAction @multiLanguageProductBulkUpdate-TierMemberPrice @fixture-product @fixture-bulk-update-dynamic-fields @fixture-multi-lang-vi @fixture-o2o-plan
Feature: Users are Able to Export Bulk Update File with Product Dynamic Field - membertier price and Vietnamese 
  As a user of Shopline
  I want to bulk uplaod products included membertier price and Vietnamese in v2
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

    Given I am on Membership Tier Setting Page
    When I click on add button
    Then I should be redirected to Membership Tier New Page
    When I fill "(dirty data) VIP4 discount" to membership tier name field
    And I select membership upgrade condition option included "Single purchase" of membership upgrade condition select button
    And I fill "0" to membership upgrade rules field
    And I fill "10" to member offer field
    And I scroll down to id
    And I click on submit button
    Then I should be redirected to Membership Tier Setting Page
    Then I should see row of membership list

    Given I am on Membership Tier Setting Page
    When I click on add button
    Then I should be redirected to Membership Tier New Page
    When I fill "(dirty data) VIP3 discount" to membership tier name field
    And I select membership upgrade condition option included "Single purchase" of membership upgrade condition select button
    And I fill "0" to membership upgrade rules field
    And I fill "20" to member offer field
    And I scroll down to id
    And I click on submit button
    Then I should be redirected to Membership Tier Setting Page
    Then I should see row of membership list

    Given I am on Membership Tier Setting Page
    When I click on add button
    Then I should be redirected to Membership Tier New Page
    When I fill "(dirty data) VIP2 discount" to membership tier name field
    And I select membership upgrade condition option included "Single purchase" of membership upgrade condition select button
    And I fill "0" to membership upgrade rules field
    And I fill "30" to member offer field
    And I scroll down to id
    And I click on submit button
    Then I should be redirected to Membership Tier Setting Page
    Then I should see row of membership list

    Given I am on Membership Tier Setting Page
    When I click on add button
    Then I should be redirected to Membership Tier New Page
    When I fill "(dirty data) VIP1 discount" to membership tier name field
    And I select membership upgrade condition option included "Single purchase" of membership upgrade condition select button
    And I fill "0" to membership upgrade rules field
    And I fill "40" to member offer field
    And I scroll down to id
    And I click on submit button
    Then I should be redirected to Membership Tier Setting Page
    Then I should see row of membership list

    Given I am on Membership Tier Setting Page
    When I click on add button
    Then I should be redirected to Membership Tier New Page
    When I fill "(dirty data) VIP0 discount" to membership tier name field
    And I select membership upgrade condition option included "Single purchase" of membership upgrade condition select button
    And I fill "0" to membership upgrade rules field
    And I fill "50" to member offer field
    And I scroll down to id
    And I click on submit button
    Then I should be redirected to Membership Tier Setting Page
    Then I should see row of membership list

    Given I am on Product Index Page
    When I select bulk import selected of import actions dropdown
    Then I should be redirected to Product Bulk Import Update Page
    Then I should see export product bulk update file button
    And I click on export product bulk update file button
    And I wait for 5 seconds for loading
    Then I should be redirected to Bulk Import Export Progress Page

  @EAT-1188 @EAT-1188-3
  Scenario: Users are Able to Export Bulk Update File with Product Dynamic Field - membertier price and Vietnamese 
    Then I wait for 20 seconds for product upload
    Then I Refresh
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
    Then I should see row of mail list
    Then I wait for 5 seconds for loading
    When I click on row of mail list included "Download Product Bulk Update Form"
    Then I should see mail detail
    Then I wait for 10 seconds for mail sent
    Then downloaded file from download button should contain "Product Name Vietnamese"
    Then downloaded file from download button should contain "Product Name English"
    Then downloaded file from download button should contain "Product Name Traditional Chinese"

    Then downloaded file from download button should contain "SEO Title Vietnamese"
    Then downloaded file from download button should contain "SEO Title English"
    Then downloaded file from download button should contain "SEO Title Traditional Chinese"

    Then downloaded file from download button should contain "SEO Description Vietnamese"
    Then downloaded file from download button should contain "SEO Description English"
    Then downloaded file from download button should contain "SEO Description Traditional Chinese"

    Then downloaded file from download button should contain "Preorder Note Vietnamese"
    Then downloaded file from download button should contain "Preorder Note Traditional Chinese"
    Then downloaded file from download button should contain "Preorder Note English"

    Then downloaded file from download button should contain "Variant Vietnamese"
    Then downloaded file from download button should contain "Variant English"
    Then downloaded file from download button should contain "Variant Traditional Chinese"

    Then downloaded file from download button should contain 'VIP0 discount Price'
    Then downloaded file from download button should contain 'VIP1 discount Price'
    Then downloaded file from download button should contain 'VIP2 discount Price'
    Then downloaded file from download button should contain 'VIP3 discount Price'
    Then downloaded file from download button should contain 'VIP4 discount Price'

    Then downloaded file from download button should contain "Variant dirty data VIP0 discount Price"
    Then downloaded file from download button should contain "Variant dirty data VIP1 discount Price"
    Then downloaded file from download button should contain "Variant dirty data VIP2 discount Price"
    Then downloaded file from download button should contain "Variant dirty data VIP3 discount Price"
    Then downloaded file from download button should contain "Variant dirty data VIP4 discount Price"
    Then ---ROLL BACK---
    Given I am on Membership Tier Setting Page
    Then I should see dropdown button
    When I click on dropdown button
    And I click on dropdown option included "Delete"
    And I should see confirmation popup window
    And I click on delete button
    Then I should see 4 row of membership list

    When I click on dropdown button
    And I click on dropdown option included "Delete"
    And I should see confirmation popup window
    And I click on delete button
    Then I should see 3 row of membership list
    
    When I click on dropdown button
    And I click on dropdown option included "Delete"
    And I should see confirmation popup window
    And I click on delete button
    Then I should see 2 row of membership list

    When I click on dropdown button
    And I click on dropdown option included "Delete"
    And I should see confirmation popup window
    And I click on delete button
    Then I should see 1 row of membership list
    
    When I click on dropdown button
    And I click on dropdown option included "Delete"
    And I should see confirmation popup window
    And I click on delete button
    Then membership table should contain "No membership tiers"