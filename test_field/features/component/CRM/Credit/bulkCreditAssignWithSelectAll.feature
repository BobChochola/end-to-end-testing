@BaseCase @Admin @CRM @Credit @bulkCreditAssignWithSelectAll @fixture-mobile-signup-p2-with-newAccunt @EAT-925
Feature: Bulk assign credit with select all should send notification
  As a merchant
  I want to assign credits to the customer by using select all

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

    Given I am on Customer List Page
    When I select import report dropdown option included 'Import Report' of import report dropdown
    Then I should be redirected to Customer Bulk Import Update Page
    When I pick customer select all bulk upload file to file upload selector
    And I should see import customer button
    And I click on import customer button
    And I should see popover
    Then I click on ok button
    Then I wait for 25 seconds for update
    Then I should be redirected to Bulk Import Export Progress Page
    When I Refresh
    Then I should see report list
    Then report list should contain 'Bulk Import Customer'
    Then report list should contain 'Customer'
    Then report list should contain Export date
    Then report list should contain 'Total : 76'
    Then report list should contain 'Successful / Failed : 76 / 0'
    Then 1st row of Status list should equal to 'Done'

  @EAT-925-1
  Scenario: Select a part of customer
    Given I am on Customer List Page
    When I input 'testuser+0001' to search field
    Then 1st customer row should contain 'testuser+0001'
    And I should see row of select checkbox list
    When I click on all row of select checkbox

    And I select add credits selected of bulk action dropdown
    Then I should see add credits popover
    When I fill '10' to amount of credit field
    And I click on never expired checkbox
    And I fill 'Select a part of customer' to reason field
    And I click on send sms checkbox
    Then send sms checkbox should be checked
    When I click on add credits save button

    When I click on view button
    Then I should be redirected to Customer Detail Page
    Then I should see row of credit list
    And row of credit list should contain 'Select a part of customer'
    When I click on view credit log button
    Then I should be redirected to Store Credit Logs Page
    And I should see row of credit log
    And row of credit log should contain 'Select a part of customer'

    Given I am on Every8d Page
    Then I check and click close intercom button
    When I fill every8d account to account field
    And I input every8d password to password field
    And I modify attribute value and click login button
    And I click on search sms button
    Then I should see phone search field
    When I fill '0911111111' to phone search field
    Then I should see phone search checkbox
    And I click on phone search checkbox
    And I click on search button
    Then I should see row of mail content
    Then 1st row of mail content should contain 'Congratulations! You have been given 10 credits at'

    Given I am on Google Mail Page
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    Then I should see search mail list
    When I click on row of mail list included "You have been given credits"
    Then mail detail should contain "10 credits"
    And I should see info box button
    When I click on info box button
    Then row of info box list should not contain 'bcc'

    And ---ROLL BACK---
    Given I am on Customer List Page
    When I click on all row of select checkbox
    When I check and click select all button
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button
    Then I should see back to customer list button
    When I click on back to customer list button
    And I wait for 10 seconds for sync
    Then I Refresh
    Then I should see no customers found

  @EAT-925-2
  Scenario: Select all customer
    Given I am on Customer List Page
    When I click on all row of select checkbox
    Then I should see select all button
    Then select all button should contain 'Select all 76 items'
    When I click on select all button
    And I select add credits selected of bulk action dropdown
    Then I should see add credits popover
    When I fill '10' to amount of credit field
    And I click on never expired checkbox
    And I fill 'Select all customer' to reason field
    And I click on send sms checkbox
    Then send sms checkbox should be checked
    When I click on add credits save button
    Then I should see back to customer list button
    When I click on back to customer list button
    Then I should be redirected to Customer List Page
    And I wait for 3 seconds for loading

    When I click on next page button
    And I should see row of select checkbox list
    When I click on view button
    Then I should be redirected to Customer Detail Page
    Then I should see row of credit list
    And row of credit list should contain 'Select all customer'
    And row of credit list should contain '10'
    When I click on view credit log button
    Then I should be redirected to Store Credit Logs Page
    And I should see row of credit log
    And row of credit log should contain 'Select all customer'

    Given I am on Customer List Page
    When I input 'testuser+0001' to search field
    Then 1st customer row should contain 'testuser+0001'
    And I should see row of select checkbox list
    When I click on view button
    Then I should be redirected to Customer Detail Page
    Then I should see row of credit list
    And row of credit list should contain 'Select all customer'
    And row of credit list should contain '10'
    When I click on view credit log button
    Then I should be redirected to Store Credit Logs Page
    And I should see row of credit log
    And row of credit log should contain 'Select all customer'

    Given I am on Every8d Page
    Then I check and click close intercom button
    When I fill every8d account to account field
    And I input every8d password to password field
    And I modify attribute value and click login button
    And I click on search sms button
    Then I should see phone search field
    When I fill '0911111111' to phone search field
    Then I should see phone search checkbox
    And I click on phone search checkbox
    And I click on search button
    Then I should see row of mail content
    Then 1st row of mail content should contain 'Congratulations! You have been given 10 credits at'

    Given I am on Google Mail Page
    Then I should see account field
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    Then I should see search mail list
    When I click on row of mail list included "You have been given credits"
    Then mail detail should contain "10 credits"
    And I should see info box button
    When I click on info box button
    Then row of info box list should not contain 'bcc'

    And ---ROLL BACK---
    Given I am on Customer List Page
    When I click on all row of select checkbox
    When I check and click select all button
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button
    Then I should see back to customer list button
    When I click on back to customer list button
    And I wait for 10 seconds for sync
    Then I Refresh
    Then I should see no customers found

  @EAT-925-3
  Scenario: Select all customer after advanced filter and keyword searching
    Given I am on Customer List Page
    When I click on filter dropdown
    And I select filter type dropdown option included 'Gender' of filter type dropdown
    And I select filter condition dropdown option included 'Male' of filter condition dropdown
    And I click on add filter button
    Then I should see apply filter label
    Then apply filter label should contain 'Gender: Male'

    When I input 'testuser' to search field
    And I should see row of select checkbox list
    When I click on all row of select checkbox
    And I click on select all button
    And I select add credits selected of bulk action dropdown
    Then I should see add credits popover
    When I fill '10' to amount of credit field
    And I click on never expired checkbox
    And I fill 'Select all customer after advanced filter' to reason field
    And I click on send sms checkbox
    Then send sms checkbox should be checked
    When I click on add credits save button

    Given I am on Customer List Page
    When I input 'testuser+0001' to search field
    Then 1st customer row should contain 'testuser+0001'
    And I should see row of select checkbox list
    When I click on view button
    Then I should be redirected to Customer Detail Page
    Then I should see row of credit list
    And row of credit list should contain 'Select all customer after advanced filter'
    When I click on view credit log button
    Then I should be redirected to Store Credit Logs Page
    And I should see row of credit log
    And row of credit log should contain 'Select all customer after advanced filter'

    Given I am on Every8d Page
    Then I check and click close intercom button
    When I fill every8d account to account field
    And I input every8d password to password field
    And I modify attribute value and click login button
    And I click on search sms button
    Then I should see phone search field
    When I fill '0911111111' to phone search field
    Then I should see phone search checkbox
    And I click on phone search checkbox
    And I click on search button
    Then I should see row of mail content
    Then 1st row of mail content should contain 'Congratulations! You have been given 10 credits at'

    Given I am on Google Mail Page
    And I should see account field
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    Then I should see search mail list
    When I click on row of mail list included "You have been given credits"
    Then mail detail should contain "10 credits"
    And I should see info box button
    When I click on info box button
    Then row of info box list should not contain 'bcc'

    And ---ROLL BACK---
    Given I am on Customer List Page
    When I click on all row of select checkbox
    When I check and click select all button
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button
    Then I should see back to customer list button
    When I click on back to customer list button
    And I wait for 10 seconds for sync
    Then I Refresh
    Then I should see no customers found