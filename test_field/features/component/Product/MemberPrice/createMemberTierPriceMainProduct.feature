@BaseCase @ImageService @Admin @Setting @Product @MemberPrice @createMemberTierPriceMainProduct @EAT-976
Feature: Creat member tier price product main product
  As a user of Shopline
  I want to create member tier products
  So that my customer can see member tier price

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

    Given I am on Membership Tier Setting Page
    When I click on add button
    Then I should be redirected to Membership Tier New Page
    When I fill "(dirty data) member tier level 1" to membership tier name field
    And I select membership upgrade condition option included "Single purchase" of membership upgrade condition select button
    And I fill "0" to membership upgrade rules field
    And I fill "20" to member offer field
    And I click on submit button
    Then I should be redirected to Membership Tier Setting Page
    Then I should see row of membership list

    Given I am on Membership Tier Setting Page
    When I click on add button
    Then I should be redirected to Membership Tier New Page
    When I fill "(dirty data) member tier level 2" to membership tier name field
    And I select membership upgrade condition option included "Single purchase" of membership upgrade condition select button
    And I fill "20" to membership upgrade rules field
    And I fill "30" to member offer field
    And I click on submit button
    Then I should be redirected to Membership Tier Setting Page
    Then I should see row of membership list

  @EAT-976-1
  Scenario: member tier price product main product
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    When I click on info tab
    And I fill "(dirty data) main product for member tier price" to english name field
    And I click on quantity and pricing tab
    Then I should see 2 member tier price field
    When I fill "100" to regular price field
    And I fill '80' to member price field
    And I fill '60' to 1st member tier price field
    And I fill '50' to 2nd member tier price field
    And I click on unlimited quantity checkbox
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    Then I should see row of product photo list
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain "main product for member tier price"
    Then 1st row of regular price list should contain "NT$100"
    Then 1st row of quantity list should contain "∞"
    When I select product operations dropdown option included 'Activity Logs' of product operations dropdown
    Then I should be redirected to Product Edit Page
    Then I should see 2 row of logs
    Then 2nd row of logs should contain 'Regular Price NT$100Member Price NT$80(dirty data) member tier level 1 Price NT$60(dirty data) member tier level 2 Price NT$50'
    When I click on tab included 'Quantity & Pricing'
    And I fill '50' to 1st member tier price field
    And I fill '40' to 2nd member tier price field
    When I click on update button
    Then I should see alert
    Then I should be redirected to Product Index Page
    When I select product operations dropdown option included 'Activity Logs' of product operations dropdown
    Then I should be redirected to Product Edit Page
    Then I should see 3 row of logs
    Then 1st row of logs should contain 'Product Updated'
    And ---ROLL BACK---
    Given I am on Product Index Page
    Then 1st row of product list should contain "main product for member tier price"
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain 'main product for member tier price'
    Given I am on Membership Tier Setting Page
    When I select dropdown option included "Delete" of dropdown button
    And I should see confirmation popup window
    And I click on delete button
    And I Refresh
    Then I should see row of membership list
    When I select dropdown option included "Delete" of dropdown button
    And I should see confirmation popup window
    And I click on delete button
    And I wait for 5 seconds for loading
    When I click on logs button
    And I should see row of logs
    Then 1st row of logs should contain "Membership tier settings is deleted"
    Then 2nd row of logs should contain "Membership tier settings is deleted"