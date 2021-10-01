@BaseCase @Admin @Storefront @CRM @CustomerSearch @Search @customerAdvancedFilterWithSelectAll @EAT-820 @fixture-shop @fixture-import-customer
Feature: Can use customer select all if has advanced filter
  As a merchant
  I want to select all customer after using advaned filter

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

    Given I am on Customer List Page
    When I select language dropdown option included 'English' of language dropdown
    Then I should see search field
    When I click on all row of select checkbox
    When I check and click select all button
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button
    And I wait for 15 seconds for deleting
    Given I am on Customer List Page
    Then I should not see row of select checkbox list

    When I select import report dropdown option included 'Import Report' of import report dropdown
    Then I should be redirected to Customer Bulk Import Update Page
    When I pick customer select all bulk upload file to file upload selector
    And I click on import customer button
    And I should see popover
    Then I click on ok button
    Then I wait for 15 seconds for update
    Then I should be redirected to Bulk Import Export Progress Page
    When I Refresh
    Then I should see report list
    Then report list should contain 'Bulk Import Customer'
    Then report list should contain 'Customer'
    Then report list should contain Export date
    Then report list should contain 'Total : 76'
    Then report list should contain 'Successful / Failed : 76 / 0'
    Then 1st row of Status list should equal to 'Done'

  @EAT-820-1
  Scenario: Test with each filter condition applied(Birthday + Is_a_Member + User_Credit_Blance + Membership_Tier + Accepts_Marketing)
    Given I am on Membership Tier Setting Page
    When I click on add button
    Then I should be redirected to Membership Tier New Page
    When I fill '(dirty data) VIP discount' to membership tier name field
    And I select membership upgrade condition option included 'Single purchase' of membership upgrade condition select button
    And I fill '0' to membership upgrade rules field
    And I fill '20' to member offer field
    And I click on submit button
    Then I should be redirected to Membership Tier Setting Page
    Then I should see row of membership list

    Given I am on Customer List Page
    When I click on filter dropdown
    And I select filter type dropdown option included 'Birthday' of filter type dropdown
    And I select filter condition dropdown option included 'by month' of filter condition dropdown
    And I select filter value dropdown option included 'January' of filter value dropdown
    And I click on add filter button
    Then I should see apply filter label
    Then apply filter label should contain 'Birthday by month: January'

    When I click on all row of select checkbox
    Then I should see select all button
    Then select all button should contain 'Select all 25 items'
    When I click on select all button
    Then clear all button should contain 'Clear selection'
    And I select change membership tier selected of bulk action dropdown
    And I select update attribute dropdown option included 'VIP' of update attribute dropdown
    Then I should see popover
    When I click on ok button
    Then I should see back to customer list button
    When I click on back to customer list button
    Then I should be redirected to Customer List Page
    
    Given I am on Customer List Page
    When I click on filter dropdown
    And I select filter type dropdown option included 'Membership tier' of filter type dropdown
    And I select filter condition dropdown option included 'VIP' of filter condition dropdown
    And I click on add filter button
    Then I should see apply filter label
    Then apply filter label should contain 'Membership tier is: (dirty data) VIP discount'

    When I click on all row of select checkbox
    Then I should see select all button
    Then select all button should contain 'Select all 25 items'
    When I click on select all button
    Then clear all button should contain 'Clear selection'
    And I select add credits selected of bulk action dropdown
    Then I should see add credits popover
    When I fill '10' to amount of credit field
    And I click on never expired checkbox
    And I fill 'customer select all' to reason field
    When I click on add credits save button

    Given I am on Customer List Page
    When I click on filter dropdown
    And I select filter type dropdown option included 'User Credit Balance' of filter type dropdown
    And I select filter condition dropdown option included 'Equal to' of filter condition dropdown
    Then I should see filter value field
    When I fill '10' to filter value field
    And I click on add filter button
    Then I should see apply filter label
    Then apply filter label should contain 'User Credit Balance: Equal to 10'

    When I click on all row of select checkbox
    Then I should see select all button
    Then select all button should contain 'Select all 25 items'
    When I click on select all button
    Then clear all button should contain 'Clear selection'
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button
    Then I should see back to customer list button
    When I click on back to customer list button
    Then I should be redirected to Customer List Page

    Given I am on Customer List Page
    When I click on filter dropdown
    And I select filter type dropdown option included 'Is a Member' of filter type dropdown
    And I select filter condition dropdown option included 'No' of filter condition dropdown
    And I click on add filter button
    Then I should see apply filter label
    Then apply filter label should contain 'User Is a Member: No'

    When I click on all row of select checkbox
    Then I should see select all button
    Then select all button should contain 'Select all 25 items'
    When I click on select all button
    Then clear all button should contain 'Clear selection'
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button
    Then I should see back to customer list button
    When I click on back to customer list button
    Then I should be redirected to Customer List Page

    Given I am on Customer List Page
    When I click on filter dropdown
    And I select filter type dropdown option included 'Accepts Marketing' of filter type dropdown
    And I select filter condition dropdown option included 'Yes' of filter condition dropdown
    And I click on add filter button
    Then I should see apply filter label
    Then apply filter label should contain 'User accepts marketing: Yes'

    When I click on all row of select checkbox
    Then I should see select all button
    Then select all button should contain 'Select all 25 items'
    When I click on select all button
    Then clear all button should contain 'Clear selection'
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button
    Then I should see back to customer list button
    When I click on back to customer list button
    Then I should be redirected to Customer List Page
    And I wait for 5 seconds for loading

    Given I am on Customer List Page
    Then I should see 1 row of select checkbox list

    And ---ROLL BACK---
    Given I am on Membership Tier Setting Page
    When I select dropdown option included "Delete" of dropdown button
    And I should see confirmation popup window
    And I click on delete button
    And I wait for 5 seconds for deleting
    When I click on logs button
    And I should see row of logs
    Then 1st row of logs should contain "Membership tier settings is deleted"

    Given I am on Customer List Page
    Then 1st customer row should contain 'testuser+0076'
    When I click on customer checkbox
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button
    And I wait for 15 seconds for deleting
    Given I am on Customer List Page
    Then I should not see row of select checkbox list

    Given I am on Shop Home Page
    And I click on sign in button
    Then I should be redirected to Shop Login Page
    And I click on switch to signup tab button
    Then I should be redirected to Shop Sign Up Page
    When I fill line email to email field
    And I fill '1234567890' to password field
    And I fill '陳小明' to name field
    And I click on send via mail and sms checkbox
    And I click on agree terms checkbox
    And I click on submit button
    Then I should be redirected to Shop Home Page
    Then I wait for 10 seconds for mail sent

    Given I am on Customer List Page
    When I input email to search field
    Then customer row should contain 'testuser@shoplineapp.com'

  @EAT-820-2
  Scenario: Test with multiple filter conditions applied(Gender + Created_Time+ Registered_Time)
    Given I am on Customer List Page
    When I click on filter dropdown
    And I select filter type dropdown option included 'Gender' of filter type dropdown
    And I select filter condition dropdown option included 'Male' of filter condition dropdown
    And I click on add filter button
    Then I should see apply filter label
    Then apply filter label should contain 'Gender: Male'

    When I click on filter dropdown
    And I select filter type dropdown option included 'Created Time' of filter type dropdown
    And I select filter condition dropdown option included 'in the last week' of filter condition dropdown
    And I click on add filter button
    Then I should see apply filter label
    Then apply filter label should contain 'Created Time:'

    When I click on filter dropdown
    And I select filter type dropdown option included 'Registered Time' of filter type dropdown
    And I select filter condition dropdown option included 'in the last week' of filter condition dropdown
    And I click on add filter button
    Then I should see apply filter label
    Then apply filter label should contain 'Registered Time:'

    When I click on all row of select checkbox
    Then I should see select all button
    Then select all button should contain 'Select all 25 items'
    When I click on select all button
    Then clear all button should contain 'Clear selection'
    And I select delete selected of bulk action dropdown
    Then I should see popover
    And I click on ok button
    Then I should see back to customer list button
    When I click on back to customer list button
    Then I should be redirected to Customer List Page
    And I wait for 10 seconds for deleting

    Given I am on Customer List Page
    When I click on all row of select checkbox
    Then I should see select all button
    Then select all button should contain 'Select all 51 items'


    And ---ROLL BACK---
    Given I am on Customer List Page
    When I click on all row of select checkbox
    When I check and click select all button
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button
    And I wait for 15 seconds for deleting
    Given I am on Customer List Page
    Then I should not see row of select checkbox list

    Given I am on Shop Home Page
    And I click on sign in button
    Then I should be redirected to Shop Login Page
    And I click on switch to signup tab button
    Then I should be redirected to Shop Sign Up Page
    When I fill line email to email field
    And I fill '1234567890' to password field
    And I fill '陳小明' to name field
    And I click on send via mail and sms checkbox
    And I click on agree terms checkbox
    And I click on submit button
    Then I should be redirected to Shop Home Page
    Then I wait for 10 seconds for mail sent

    Given I am on Customer List Page
    When I input email to search field
    Then customer row should contain 'testuser@shoplineapp.com'

  @EAT-820-3
  Scenario: Test with both filter condition and keyword applied(Is_Blacklisted + Tag)
    Given I am on Customer List Page
    When I input 'testuser+0001' to search field
    And I should see row of select checkbox list
    When I click view button for the same order of customer row included 'testuser+0001@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    And I click on blacklist button
    And I click on popover confirm button
    Then blacklist button should contain "Remove from blacklist"

    When I input 'blacklist' to add tag field
    And I click on tag save button
    Then I should see apply tag label
    Then apply tag label should contain 'blacklist'

    Given I am on Customer List Page
    When I click on filter dropdown
    And I select filter type dropdown option included 'Is Blacklisted' of filter type dropdown
    And I select filter condition dropdown option included 'Yes' of filter condition dropdown
    And I click on add filter button
    Then I should see apply filter label
    Then apply filter label should contain 'User is blacklisted: Yes'

    When I click on filter dropdown
    And I select filter type dropdown option included 'Tag' of filter type dropdown
    And I select filter condition dropdown option included 'blacklist' of filter condition dropdown
    And I click on add filter button
    Then I should see apply filter label
    Then apply filter label should contain 'Tag: blacklist'

    When I input 'testuser+0001' to search field
    Then I should see apply filter label
    Then apply filter label should contain 'Includes the term : testuser+0001'
    And I wait for 5 seconds for loading
    And I Refresh
    Then row of user email should contain 'testuser+0001'

    When I click on all row of select checkbox
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button
    And I wait for 5 seconds for deleting
    And I Refresh
    Then I should not see row of select checkbox list

    Given I am on Customer List Page
    When I click on all row of select checkbox
    Then I should see select all button
    Then select all button should contain 'Select all 75 items'

    And ---ROLL BACK---
    Given I am on Customer List Page
    When I click on all row of select checkbox
    When I check and click select all button
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button
    And I wait for 15 seconds for deleting
    Given I am on Customer List Page
    Then I should not see row of select checkbox list

    Given I am on Shop Home Page
    And I click on sign in button
    Then I should be redirected to Shop Login Page
    And I click on switch to signup tab button
    Then I should be redirected to Shop Sign Up Page
    When I fill line email to email field
    And I fill '1234567890' to password field
    And I fill '陳小明' to name field
    And I click on send via mail and sms checkbox
    And I click on agree terms checkbox
    And I click on submit button
    Then I should be redirected to Shop Home Page
    Then I wait for 10 seconds for mail sent

    Given I am on Customer List Page
    When I input email to search field
    Then customer row should contain 'testuser@shoplineapp.com'