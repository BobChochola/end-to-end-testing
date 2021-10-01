@BaseCase @Admin @Job @CRM @CustomerImport @importNewCustomer @EAT-611
Feature: import customers with membership tier, store credit, gender and birthday
  As a merchant
  I want view my customer list
  So that I can upload customers form xlsx

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    Then I should see successful login
    When I check and click no thanks button
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button

  @EAT-611-1 @fixture-new-customer-file
  Scenario: import customers with membership tier, store credit, gender and birthday
    Given I am on Customer List Page
    When I select import report dropdown option included 'Import Report' of import report dropdown
    Then I should be redirected to Customer Bulk Import Update Page
    When I pick new customer bulk upload file to file upload selector
    Then I should see row of customer preview list
    Then 1st row of name should contain 'DDD'
    Then 1st row of email should contain 'testuser+444@shoplineapp.com'
    Then 1st row of gender should contain 'female'
    Then 1st row of birthday should contain '1993/03/16'
    Then 1st row of language should contain 'English'
    Then 1st row of is a member should contain 'Y'
    Then 1st row of accepts marketing Y should contain 'Y'
    Then 1st row of membership tier should contain 'VVVIP discount'
    Then 1st row of store credit should contain '20'
    Then 1st row of reason for credit should contain 'buik update'
    Then 1st row of expiry date of credit should contain '2025/01/01'
    Then 1st row of phone numbers should contain '0944444444'
    Then 1st row of delivery addresses should contain 'DDD'
    Then 1st row of delivery addresses should contain 'Somewhere St'
    Then 1st row of delivery addresses should contain 'Taipie'
    Then 1st row of delivery addresses should contain '123'
    Then 1st row of delivery addresses should contain 'TW'
    When I click on import customer button
    Then I should see popover
    When I click on ok button
    Then I should see row of upload list
    Then 1st row of updated time should contain date
    Then I wait for 30 seconds for uploading
    Then I Refresh
    And 1st row of status should equal to "Done"
    Then 1st row of detail should contain "Total : 1"
    And 1st row of detail should contain "Successful / Failed : 1 / 0"
    And I wait for 30 seconds for loading
    Given I am on Customer List Page
    Then 1st customer row should contain "DDD"
    Then 1st customer row should contain "testuser+444@shoplineapp.com"
    Then 1st customer row should contain "20"
    When I click on 1st view button
    Then I should be redirected to Customer Detail Page
    Then customer name should contain 'DDD'
    Then customer email should contain 'testuser+444@shoplineapp.com'
    Then customer phone numbers should contain '0944444444'
    Then customer gender should contain 'Female'
    Then customer birthday should contain 'Mar 16, 1993'
    Then customer delivery addresses should contain 'DDD'
    Then customer delivery addresses should contain 'Somewhere St'
    Then customer delivery addresses should contain 'Taipie'
    Then customer delivery addresses should contain '123'
    Then customer delivery addresses should contain 'Taiwan'
    When I scroll down to is a member
    Then I should see member v icon
    Then membership tier settings label should contain "VVVIP discount"
    Then 1st row of credit list should contain 'buik update'
    Then 1st row of credit list should contain '2025-01-01'
    Then 1st row of credit list should contain '+ 20'
    And ---ROLL BACK---
    Given I am on Customer List Page
    And I click on 1st customer checkbox
    Then I select delete selected of bulk action dropdown
    And I should see popover
    When I click on ok button
    And I Refresh
    Then customer row should not contain "DDD"

  @EAT-611-2 @fixture-new-mobile-customer-file
  Scenario: import customers (mobile_signup) with membership tier, store credit, gender and birthday
    Given I am on Customer List Page
    When I select import report dropdown option included 'Import Report' of import report dropdown
    Then I should be redirected to Customer Bulk Import Update Page
    When I pick new mobile signup customer bulk upload file to file upload selector
    Then I should see row of customer preview list
    Then 1st row of name should contain 'DDD'
    Then 1st row of email should contain 'testuser+444@shoplineapp.com'
    Then 1st row of gender should contain 'female'
    Then 1st row of birthday should contain '1993/03/16'
    Then 1st row of contry code should contain '886'
    Then 1st row of mobile number should contain '0944444444'
    Then 1st row of language should contain 'English'
    Then 1st row of is a member should contain 'Y'
    Then 1st row of accepts marketing Y should contain 'Y'
    Then 1st row of membership tier should contain 'VVVIP discount'
    Then 1st row of store credit should contain '20'
    Then 1st row of reason for credit should contain 'buik update'
    Then 1st row of expiry date of credit should contain '2025/01/01'
    Then 1st row of phone numbers should contain '0944444444'
    Then 1st row of delivery addresses should contain 'DDD'
    Then 1st row of delivery addresses should contain 'Somewhere St'
    Then 1st row of delivery addresses should contain 'Taipie'
    Then 1st row of delivery addresses should contain '123'
    Then 1st row of delivery addresses should contain 'TW'
    When I click on import customer button
    Then I should see popover
    When I click on ok button
    Then I should see row of upload list
    Then 1st row of updated time should contain date
    Then I wait for 30 seconds for uploading
    Then I Refresh
    And 1st row of status should equal to "Done"
    Then 1st row of detail should contain "Total : 1"
    And 1st row of detail should contain "Successful / Failed : 1 / 0"
    And I wait for 30 seconds for loading

    Given I am on Customer List Page
    Then 1st customer row should contain "DDD"
    Then 1st customer row should contain "testuser+444@shoplineapp.com"
    Then 1st customer row should contain "20"
    When I click on 1st view button
    Then I should be redirected to Customer Detail Page
    Then customer name should contain 'DDD'
    Then customer email should contain 'testuser+444@shoplineapp.com'
    Then customer mobile numbers should contain '0944444444'
    Then mobile verify status should contain 'Not verified yet'
    Then customer phone numbers should contain '0944444444'
    Then customer gender should contain 'Female'
    Then customer birthday should contain 'Mar 16, 1993'
    Then customer delivery addresses should contain 'DDD'
    Then customer delivery addresses should contain 'Somewhere St'
    Then customer delivery addresses should contain 'Taipie'
    Then customer delivery addresses should contain '123'
    Then customer delivery addresses should contain 'Taiwan'
    When I scroll down to is a member
    Then I should see member v icon
    Then membership tier settings label should contain "VVVIP discount"
    Then 1st row of credit list should contain 'buik update'
    Then 1st row of credit list should contain '2025-01-01'
    Then 1st row of credit list should contain '+ 20'
    And ---ROLL BACK---
    Given I am on Customer List Page
    And I click on 1st customer checkbox
    Then I select delete selected of bulk action dropdown
    And I should see popover
    When I click on ok button
    And I Refresh
    Then customer row should not contain "DDD"