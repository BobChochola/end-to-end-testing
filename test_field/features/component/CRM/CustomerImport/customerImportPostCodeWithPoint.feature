@BaseCase @Admin @Job @CRM @CustomerImport @customerImportPostCodeWithPoint
Feature: allow using "." in post code field when bulk import customer data
  As a merchant
  I want view my customer list with post code with '.'
  So that I can upload customers form xlsx succefully

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
  @EAT-623
  Scenario: import xlsx which post code included '.'
    Given I am on Customer List Page
    When I select import report dropdown option included 'Import Report' of import report dropdown
    Then I should be redirected to Customer Bulk Import Update Page
    When I pick customer post code bulk upload file to file upload selector
    Then I should see row of customer preview list
    Then 1st row of delivery addresses should contain '111'
    Then 1st row of delivery addresses should not contain '111.123'
    Then 2nd row of delivery addresses should contain '222'
    Then 2nd row of delivery addresses should not contain '222.12'
    Then 3rd row of delivery addresses should contain '333'
    Then 3rd row of delivery addresses should not contain '333.1'
    And I click on import customer button
    And I should see popover
    Then I click on ok button
    And I should see row of upload list
    Then I wait for 30 seconds for uploading
    Then I Refresh
    And I should see row of upload list
    Then 1st row of updated time should contain date
    And 1st row of status should equal to "Done"
    Then 1st row of detail should contain "Total : 3"
    And 1st row of detail should contain "Successful / Failed : 3 / 0"
    Given I am on Customer List Page
    And I input "CCC" to search field
    Then 1st customer row should contain "CCC"
    When I click on 1st view button
    Then I should be redirected to Customer Detail Page
    Then customer name should contain 'CCC'
    Then customer email should contain 'ccc@gmail.com'
    Then customer phone numbers should not contain 'Not verified yet'
    Then customer phone numbers should contain '0933333333'
    Then customer delivery addresses should contain 'CCC'
    Then customer delivery addresses should contain 'Somewhere St'
    Then customer delivery addresses should contain 'Taipie'
    Then customer delivery addresses should not contain '333.1'
    Then customer delivery addresses should contain '333'
    Then customer delivery addresses should contain 'Taiwan'
    When I scroll down to is a member
    Then I should see member x icon

    Given I am on Customer List Page
    And I input "BBB" to search field
    And 1st customer row should contain "BBB"
    When I click on 1st view button
    Then I should be redirected to Customer Detail Page
    Then customer name should contain 'BBB'
    Then customer email should contain 'bbb@gmail.com'
    Then customer phone numbers should not contain 'Not verified yet'
    Then customer phone numbers should contain '0922222222'
    Then customer delivery addresses should contain 'BBB'
    Then customer delivery addresses should contain 'Somewhere St'
    Then customer delivery addresses should contain 'Taipie'
    Then customer delivery addresses should not contain '222.12'
    Then customer delivery addresses should contain '222'
    Then customer delivery addresses should contain 'Taiwan'
    When I scroll down to is a member
    Then I should see member x icon

    Given I am on Customer List Page
    And I input "AAA" to search field
    And 1st customer row should contain "AAA"
    When I click on 1st view button
    Then I should be redirected to Customer Detail Page
    Then customer name should contain 'AAA'
    Then customer email should contain 'aaa@gmail.com'
    Then customer phone numbers should not contain 'Not verified yet'
    Then customer phone numbers should contain '0911111111'
    Then customer delivery addresses should contain 'AAA'
    Then customer delivery addresses should contain 'Somewhere St'
    Then customer delivery addresses should contain 'Taipie'
    Then customer delivery addresses should not contain '111.123'
    Then customer delivery addresses should contain '111'
    Then customer delivery addresses should contain 'Taiwan'
    When I scroll down to is a member
    Then I should see member x icon
    And ---ROLL BACK---
    Given I am on Customer List Page
    And I click on 1st customer checkbox
    And I click on 2nd customer checkbox
    And I click on 3rd customer checkbox
    Then I select delete selected of bulk action dropdown
    And I should see popover
    When I click on ok button