@BaseCase @Admin @Job @CRM @CustomerImport @customerMobileImport @fixture-mobile-signup-p2 @EAT-633
Feature: import mobile customers
  As a merchant
  I want view my customer list and mobile number
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

  @EAT-633-3
  Scenario: I want to import customers mobile-signup-p2 with rollout key
    Given I am on Customer List Page
    When I select language dropdown option included 'English' of language dropdown
    When I select import report dropdown option included 'Import Report' of import report dropdown
    Then I should be redirected to Customer Bulk Import Update Page
    When I pick customer mobile country code bulk upload file to file upload selector
    Then I should see row of customer preview list
    Then 1st row of name should contain "Kil'jaeden"
    Then 1st row of email should contain "kil'jaeden@shoplineapp.com"
    Then 1st row of contry code should contain '886'
    Then 1st row of mobile number should contain '0912345677'
    Then 1st row of language should contain 'English'
    Then 1st row of is a member should contain 'Y'
    Then 1st row of accepts marketing Y should contain 'Y'
    Then 1st row of delivery addresses should contain "Kil'jaeden"
    Then 1st row of delivery addresses should contain 'Somewhere St'
    Then 1st row of delivery addresses should contain 'Taipie'
    Then 1st row of delivery addresses should contain '123'
    Then 1st row of delivery addresses should contain 'TW'
    Then 2nd row of name should contain 'King Llane Wrynn'
    Then 2nd row of email should contain 'king.llane.wrynn@shoplineapp.com'
    Then 2nd row of contry code should contain '886'
    Then 2nd row of mobile number should contain '0912345679'
    Then 2nd row of language should contain 'English'
    Then 2nd row of is a member should contain 'Y'
    Then 2nd row of accepts marketing Y should contain 'Y'
    Then 2nd row of delivery addresses should contain 'King Llane Wrynn'
    Then 2nd row of delivery addresses should contain 'Somewhere St'
    Then 2nd row of delivery addresses should contain 'Taipie'
    Then 2nd row of delivery addresses should contain '123'
    Then 2nd row of delivery addresses should contain 'TW'
    Then 3rd row of name should contain 'Uther the Lightbringer'
    Then 3rd row of email should contain 'uther-the-lightbringer@shoplineapp.com'
    Then 3rd row of contry code should contain '886'
    Then 3rd row of mobile number should contain '0912345680'
    Then 3rd row of language should contain 'English'
    Then 3rd row of is a member should contain 'Y'
    Then 3rd row of accepts marketing Y should contain 'Y'
    Then 3rd row of delivery addresses should contain 'Uther the Lightbringer'
    Then 3rd row of delivery addresses should contain 'Somewhere St'
    Then 3rd row of delivery addresses should contain 'Taipie'
    Then 3rd row of delivery addresses should contain '123'
    Then 3rd row of delivery addresses should contain 'TW'
    Then 4th row of name should contain 'Orgrim Doomhammer'
    Then 4th row of email should contain 'orgrim doomhammer@shoplineapp.com'
    Then 4th row of contry code should contain '852'
    Then 1st user import red error should contain '852'
    Then 4th row of mobile number should contain '912345682'
    Then 2nd user import red error should contain '912345682'

    Then 4th row of language should contain 'English'
    Then 4th row of is a member should contain 'Y'
    Then 4th row of accepts marketing Y should contain 'Y'
    Then 4th row of delivery addresses should contain 'Orgrim Doomhammer'
    Then 4th row of delivery addresses should contain 'Somewhere St'
    Then 4th row of delivery addresses should contain 'Taipie'
    Then 4th row of delivery addresses should contain '123'
    Then 4th row of delivery addresses should contain 'TW'


    Then error message field should contain error message
    Then error message field should contain '4 - Email Address is invalid - Mobile Number is invalid'
    And I click on import customer button
    And I should see popover
    Then I click on ok button
    Then I should be redirected to Bulk Import Export Progress Page
    Then I wait for 5 seconds for uploading
    Then I Refresh
    # Due to import status issue
    # Then 1st row of Status list should contain 'Done'
    Then report list should contain "Successful / Failed : 3 / 1"

    Given I am on Customer List Page
    And I input "Uther the Lightbringer" to search field
    And customer list info should contain 'Uther the Lightbringer'
    And customer list info should contain '0912345680'
    When I input "Uther the Lightbringer" to search field
    And 1st customer row should contain 'Uther the Lightbringer'
    When I click on 1st view button

    Then I should be redirected to Customer Detail Page
    Then customer name should contain 'Uther the Lightbringer'
    Then customer email should contain 'uther-the-lightbringer@shoplineapp.com'
    Then mobile verify status should contain 'Not verified yet'
    Then customer mobile numbers should contain '0912345680'
    When I scroll down to customer delivery addresses
    Then customer delivery addresses should contain 'Uther the Lightbringer'
    Then customer delivery addresses should contain 'Somewhere St'
    Then customer delivery addresses should contain 'Taipie'
    Then customer delivery addresses should contain '123'
    Then customer delivery addresses should contain 'Taiwan'
    When I scroll down to is a member
    Then I should see member v icon

    Given I am on Customer List Page
    And I input "King Llane Wrynn" to search field
    And customer list info should contain 'King Llane Wrynn'
    And customer list info should contain '0912345679'
    When I input "King Llane Wrynn" to search field
    And 1st customer row should contain 'King Llane Wrynn'
    When I click on 1st view button
    Then I should be redirected to Customer Detail Page
    Then customer name should contain 'King Llane Wrynn'
    Then customer email should contain 'king.llane.wrynn@shoplineapp.com'
    Then mobile verify status should contain 'Not verified yet'
    Then customer mobile numbers should contain '0912345679'
    When I scroll down to customer delivery addresses
    Then customer delivery addresses should contain 'King Llane Wrynn'
    Then customer delivery addresses should contain 'Somewhere St'
    Then customer delivery addresses should contain 'Taipie'
    Then customer delivery addresses should contain '123'
    Then customer delivery addresses should contain 'Taiwan'
    When I scroll down to is a member
    Then I should see member v icon

    Given I am on Customer List Page
    And I input "Kil'jaeden" to search field
    And customer list info should contain "Kil'jaeden"
    And customer list info should contain '0912345677'
    When I input "Kil'jaeden" to search field
    And 1st customer row should contain "Kil'jaeden"
    When I click on 1st view button
    Then I should be redirected to Customer Detail Page
    Then customer name should contain "Kil'jaeden"
    Then customer email should contain "kil'jaeden@shoplineapp.com"
    Then mobile verify status should contain 'Not verified yet'
    Then customer mobile numbers should contain '0912345677'
    When I scroll down to customer delivery addresses
    Then customer delivery addresses should contain "Kil'jaeden"
    Then customer delivery addresses should contain 'Somewhere St'
    Then customer delivery addresses should contain 'Taipie'
    Then customer delivery addresses should contain '123'
    Then customer delivery addresses should contain 'Taiwan'
    When I scroll down to is a member
    Then I should see member v icon

    Given I am on Customer List Page
    And I input "Orgrim Doomhammer" to search field
    And customer list info should not contain 'Orgrim Doomhammer'
    And ---ROLL BACK---
    Given I am on Customer List Page
    And I click on 1st customer checkbox
    And I click on 2nd customer checkbox
    And I click on 3rd customer checkbox
    Then I select delete selected of bulk action dropdown
    And I should see popover
    When I click on ok button
    And I Refresh
    Then customer list info should not contain "Kil'jaeden"
    And customer list info should not contain 'King Llane Wrynn'
    And customer list info should not contain 'Uther the Lightbringer'
    And customer list info should not contain "Kael'thas Sunstrider"
    And customer list info should not contain 'Orgrim Doomhammer'
