@BaseCase @Admin @Job @CRM @CustomerImport @customerImport @EAT-633
Feature: import customers
  As a merchant
  I want view my customer list
  So that I can upload customers form xlsx

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

  @C3880 @EAT-633-1
  Scenario: I want to import customers completed without mobile-signup-p2 rolloutkey
    Given I am on Customer List Page
    And I select language dropdown option included 'English' of language dropdown
    When I select import report dropdown option included 'Import Report' of import report dropdown
    Then I should be redirected to Customer Bulk Import Update Page
    When I pick customer bulk upload file to file upload selector
    Then I should see row of customer preview list
    Then 1st row of name should contain 'AAA'
    Then 1st row of email should contain 'testuser+111@shoplineapp.com'
    Then 1st row of language should contain 'English'
    Then 1st row of is a member should contain 'N'
    Then 1st row of accepts marketing Y should contain 'Y'
    Then 1st row of phone numbers should contain '0911111111'
    Then 1st row of delivery addresses should contain 'AAA'
    Then 1st row of delivery addresses should contain 'Somewhere St'
    Then 1st row of delivery addresses should contain 'Taipie'
    Then 1st row of delivery addresses should contain '123'
    Then 1st row of delivery addresses should contain 'TW'
    Then 2nd row of name should contain 'BBB'
    Then 2nd row of email should contain 'testuser+222@shoplineapp.com'
    Then 2nd row of language should contain 'English'
    Then 2nd row of is a member should contain 'N'
    Then 2nd row of accepts marketing Y should contain 'Y'
    Then 2nd row of phone numbers should contain '0922222222'
    Then 2nd row of delivery addresses should contain 'BBB'
    Then 2nd row of delivery addresses should contain 'Somewhere St'
    Then 2nd row of delivery addresses should contain 'Taipie'
    Then 2nd row of delivery addresses should contain '123'
    Then 2nd row of delivery addresses should contain 'TW'
    Then 3rd row of name should contain 'CCC'
    Then 3rd row of email should contain 'testuser+333@shoplineapp.com'
    Then 3rd row of language should contain 'English'
    Then 3rd row of is a member should contain 'N'
    Then 3rd row of accepts marketing Y should contain 'Y'
    Then 3rd row of phone numbers should contain '0933333333'
    Then 3rd row of delivery addresses should contain 'CCC'
    Then 3rd row of delivery addresses should contain 'Somewhere St'
    Then 3rd row of delivery addresses should contain 'Taipie'
    Then 3rd row of delivery addresses should contain '123'
    Then 3rd row of delivery addresses should contain 'TW'

    And I click on import customer button
    And I should see popover
    Then I click on ok button
    Then I should be redirected to Bulk Import Export Progress Page
    Then I wait for 30 seconds for uploading
    Then I Refresh
    Then I should see report list
    Then report list should contain "Bulk Import Customer"
    Then report list should contain "Customer"
    Then report list should contain Export date
    Then report list should contain "Total : 3"
    Then report list should contain "Successful / Failed : 3 / 0"
    Then 1st row of Status list should equal to "Done"
    When I click on Tab included "Done"
    Then report list should contain "Total : 3"
    Then report list should contain "Successful / Failed : 3 / 0"
    Given I am on Customer List Page
    When I input 'CCC' to search field
    Then 1st customer row should contain "CCC"
    When I click on 1st view button
    Then I should be redirected to Customer Detail Page
    Then customer name should contain 'CCC'
    Then customer email should contain 'testuser+333@shoplineapp.com'
    Then customer phone numbers should not contain 'Not verified yet'
    Then customer phone numbers should contain '0933333333'
    Then customer delivery addresses should contain 'CCC'
    Then customer delivery addresses should contain 'Somewhere St'
    Then customer delivery addresses should contain 'Taipie'
    Then customer delivery addresses should contain '123'
    Then customer delivery addresses should contain 'Taiwan'
    When I scroll down to is a member
    Then I should see member x icon

    Given I am on Customer List Page
    When I input 'BBB' to search field
    And 1st customer row should contain "BBB"
    When I click on 1st view button
    Then I should be redirected to Customer Detail Page
    Then customer name should contain 'BBB'
    Then customer email should contain 'testuser+222@shoplineapp.com'
    Then customer phone numbers should not contain 'Not verified yet'
    Then customer phone numbers should contain '0922222222'
    Then customer delivery addresses should contain 'BBB'
    Then customer delivery addresses should contain 'Somewhere St'
    Then customer delivery addresses should contain 'Taipie'
    Then customer delivery addresses should contain '123'
    Then customer delivery addresses should contain 'Taiwan'
    When I scroll down to is a member
    Then I should see member x icon

    Given I am on Customer List Page
    When I input 'AAA' to search field
    And 1st customer row should contain "AAA"
    When I click on 1st view button
    Then I should be redirected to Customer Detail Page
    Then customer name should contain 'AAA'
    Then customer email should contain 'testuser+111@shoplineapp.com'
    Then customer phone numbers should not contain 'Not verified yet'
    Then customer phone numbers should contain '0911111111'
    Then customer delivery addresses should contain 'AAA'
    Then customer delivery addresses should contain 'Somewhere St'
    Then customer delivery addresses should contain 'Taipie'
    Then customer delivery addresses should contain '123'
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

  @EAT-633-2
  Scenario: I want to import customers failed without mobile-signup-p2 rolloutkey
    Given I am on Customer List Page
    And I select language dropdown option included 'English' of language dropdown
    When I select import report dropdown option included 'Import Report' of import report dropdown
    Then I should be redirected to Customer Bulk Import Update Page
    When I pick failed customer bulk upload file to file upload selector
    Then I should see row of customer preview list
    Then 1st row of name should contain '會員1'
    Then 1st row of email should contain 'testuser+111@shoplineapp.com'
    Then 1st row of language should contain 'English'
    Then 1st row of is a member should contain 'N'
    Then 1st row of accepts marketing N should contain 'N'
    Then 1st row of phone numbers should contain '091111111'
    Then 1st row of delivery addresses should contain 'EMPTY'
    Then 1st user import delivery red error should contain 'EMPTY'
    Then 1st row of delivery addresses should contain '台北市松山區1號'
    Then 1st row of delivery addresses should contain 'Somewhere St'
    Then 1st row of delivery addresses should contain '台北市'
    Then 1st row of delivery addresses should contain '123'
    Then 1st row of delivery addresses should contain 'JP'
    Then 2nd row of name should contain '會員2'
    Then 2nd row of email should contain 'testuser+222@shoplineapp.com'
    Then 2nd row of language should contain 'English'
    Then 2nd row of is a member should contain 'N'
    Then 2nd row of accepts marketing N should contain 'N'
    Then 2nd row of phone numbers should contain '091111111'
    Then 2nd row of delivery addresses should contain 'EMPTY'
    Then 2nd user import delivery red error should contain 'EMPTY'
    Then 2nd row of delivery addresses should contain '台北市松山區2號'
    Then 2nd row of delivery addresses should contain 'Somewhere St'
    Then 2nd row of delivery addresses should contain '台北市'
    Then 2nd row of delivery addresses should contain '123'
    Then 2nd row of delivery addresses should contain 'HK'
    Then 3rd row of name should contain '會員3'
    Then 3rd row of email should contain 'testuser+333@shoplineapp.com'
    Then 3rd row of language should contain 'English'
    Then 3rd row of is a member should contain 'N'
    Then 3rd row of accepts marketing N should contain 'N'
    Then 3rd row of phone numbers should contain '091111111'
    Then 3rd row of delivery addresses should contain 'EMPTY'
    Then 3rd user import delivery red error should contain 'EMPTY'
    Then 3rd row of delivery addresses should contain '台北市松山區3號'
    Then 3rd row of delivery addresses should contain 'Somewhere St'
    Then 3rd row of delivery addresses should contain '台北市'
    Then 3rd row of delivery addresses should contain '123'
    Then 3rd row of delivery addresses should contain 'CH'

    Then error message field should contain error message
    And I click on import customer button
    And I should see popover
    Then I click on ok button
    Then I should be redirected to Bulk Import Export Progress Page
    Then I wait for 5 seconds for uploading
    Then I Refresh
    # Due to import status issue
    # Then row of Status list should contain 'Done'
    Given I am on Customer List Page
    Then customer list info should not contain "會員1"
    And customer list info should not contain "會員2"
    And customer list info should not contain "會員3"