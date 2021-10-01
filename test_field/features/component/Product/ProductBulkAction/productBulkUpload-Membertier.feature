@BaseCase @Admin @Storefront @Product @Job @ProductBulkAction @productBulkUpload-Membertier @fixture-dynamic-bulk-update-product @fixture-multi-lang-ja @fixture-product-info @fixture-o2o-plan
Feature: check correct product after bulk update products via excel - membertier and japanese
  As a user of Shopline
  I want to bulk uplaod products included japanese and member tier
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
    When I pick member tier product bulk update files to file revised selector
    Then I should be redirected to Bulk Import Export Progress Page
    Then I wait for 20 seconds for product upload
    Then I Refresh
    Then 1st report list should contain "Total : 21"
    Then 1st report list should contain "Successful / Failed : 21 / 0"
    And I wait for 10 seconds for uploading

  @EAT-1188 @EAT-1188-5
  Scenario: check correct product after bulk update products via excel - membertier and japanese
    Given I am on Product Index Page
    When I input 'Out Of Stock' to search field
    Then 1st row of product list should contain 'Out Of Stock'
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on settings tab
    Then tag text should contain "test"

    Given I am on Product Index Page
    When I input '2nd Product for Checkout' to search field
    Then 1st row of product list should contain '2nd Product for Checkout'
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on quantity and pricing tab
    Then hide price toggle should be disabled

    Given I am on Product Index Page
    When I input '20th Product for Checkout' to search field
    Then 1st row of product list should contain '20th Product for Checkout'
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on quantity and pricing tab
    Then hide price toggle should be disabled
    And I click on hide price toggle
    Then regular price field should not contain "10"
    Then sale price field should not contain "10"
    Then member price field should not contain "10"

    Given I am on Product Index Page
    When I input '6th Product for Checkout' to search field
    Then 1st row of product list should contain '6th Product for Checkout'
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on variations tab
    Then variations same price checkbox should be checked
    Then regular price field should contain "59"

    Given I am on Product Index Page
    When I input '1st Product for Checkout' to search field
    Then 1st row of product list should contain '1st Product for Checkout'
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on quantity and pricing tab
    Then I should see 5 member tier price field
    Then 1st member tier price field should equal to "50"
    Then 2nd member tier price field should equal to "40"
    Then 3rd member tier price field should equal to "30"
    Then 4th member tier price field should equal to "20"
    Then 5th member tier price field should equal to "10"
    And I click on update button
    Then I should be redirected to Product Index Page

    Given I am on Product Index Page
    When I input '8th Product for Checkout' to search field
    Then 1st row of product list should contain '8th Product for Checkout'
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on variations tab
    Then I should see 10 row of variation member tier price field
    Then 1st row of variation member tier price field should equal to ""
    Then 2nd row of variation member tier price field should equal to ""
    Then 3rd row of variation member tier price field should equal to ""
    Then 4th row of variation member tier price field should equal to ""
    Then 5th row of variation member tier price field should equal to ""
    Then 6th row of variation member tier price field should equal to ""
    Then 7th row of variation member tier price field should equal to ""
    Then 8th row of variation member tier price field should equal to ""
    Then 9th row of variation member tier price field should equal to ""
    Then 10th row of variation member tier price field should equal to ""
    Then 1st row of variation same price field should equal to "10"
    And I click on update button
    Then I should be redirected to Product Index Page

    And ---ROLL BACK---
    Given I am on Product Index Page
    When I input 'Out Of Stock' to search field
    Then 1st row of product list should contain 'Out Of Stock'
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on settings tab
    And I click on remove tag button
    And I click on update button
    Then I should be redirected to Product Index Page

    Given I am on Product Index Page
    When I input '2nd Product for Checkout' to search field
    Then 1st row of product list should contain '2nd Product for Checkout'
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on quantity and pricing tab
    And I click on hide price toggle
    And I click on update button
    Then I should be redirected to Product Index Page    

    Given I am on Product Index Page
    When I input '20th Product for Checkout' to search field
    Then 1st row of product list should contain '20th Product for Checkout'
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on quantity and pricing tab
    Then I click on hide price toggle
    Then I fill '' to regular price field
    Then I fill '' to sale price field
    Then I click on hide price toggle
    And I click on update button
    Then I should be redirected to Product Index Page

    Given I am on Product Index Page
    When I input '6th Product for Checkout' to search field
    Then 1st row of product list should contain '6th Product for Checkout'
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on variations tab
    And I click on variations same price checkbox
    And I click on update button
    Then I should be redirected to Product Index Page

    Given I am on Product Index Page
    When I input '1st Product for Checkout' to search field
    Then 1st row of product list should contain '1st Product for Checkout'
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on quantity and pricing tab
    Then I should see 5 member tier price field
    And I fill '' to 1st member tier price field
    And I fill '' to 2nd member tier price field
    And I fill '' to 3rd member tier price field
    And I fill '' to 4th member tier price field
    And I fill '' to 5th member tier price field
    And I click on update button
    Then I should be redirected to Product Index Page

    Given I am on Product Index Page
    When I input '8th Product for Checkout' to search field
    Then 1st row of product list should contain '8th Product for Checkout'
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on quantity and pricing tab
    And I fill '' to regular price field 
    And I click on variations tab
    And I click on variations same price checkbox
    And I click on update button
    Then I should be redirected to Product Index Page

    Given I am on Membership Tier Setting Page
    Then I should see dropdown button
    When I click on dropdown button
    And I click on dropdown option included "Delete"
    And I should see confirmation popup window
    And I click on delete button
    Then I Refresh
    Then I should see dropdown button
    When I click on dropdown button
    And I click on dropdown option included "Delete"
    And I should see confirmation popup window
    And I click on delete button
    Then I Refresh
    Then I should see dropdown button
    When I click on dropdown button
    And I click on dropdown option included "Delete"
    And I should see confirmation popup window
    And I click on delete button
    Then I Refresh
    Then I should see dropdown button
    When I click on dropdown button
    And I click on dropdown option included "Delete"
    And I should see confirmation popup window
    And I click on delete button
    Then I Refresh
    Then I should see dropdown button
    When I click on dropdown button
    And I click on dropdown option included "Delete"
    And I should see confirmation popup window
    And I click on delete button
    Then membership table should contain "No membership tiers"