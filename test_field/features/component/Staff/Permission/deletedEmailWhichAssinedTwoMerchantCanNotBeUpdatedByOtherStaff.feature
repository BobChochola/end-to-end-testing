@BaseCase @Admin @Staff @Permission @SSO @deletedEmailWhichAssinedTwoMerchantCanNotBeUpdatedByOtherStaff
Feature: Deleted Email Which Assigned Above Two Merchant Can Not Be Updated By Other Staff
  As a staff who assigned more than two handle,
  My email can not be assign to other staff

  Background:
    Given I am on Admin Login Page
    And I fill correct admin email to email field
    And I fill correct admin password to password field
    When I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click no thanks button
    Given I am on Setup Guide Page

    When I open new tab and redirect to admin staff setting add page
    Then I should be redirected to Staff Setting Add Page
    When I fill 'testuser+2handlestaff@shoplineapp.com' to email field
    And I click on add button
    Then I should be redirected to Edit Staff Permissions Page
    When I click on 1st checkbox group
    And I click on update button
    Then I should be redirected to Staff Setting Page
    Then 1st staff of row should contain 'testuser+2handlestaff@shoplineapp.com'

  @EAT-1200 @EAT-1200-2 @EAT-1200-2-1
  Scenario: Deleted Email Can Not Be Updated By merchant owner
    Then I switch to 1 of tabs
    Then I should be on Setup Guide Page
    When I select Logout of User Menu
    Then I should be redirected to Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    When I click on login button
    And I should see successful login
    Given I am on Setup Guide Page
    When I select My Profile of User Menu
    When I switch to 3 of tabs
    Then I should be redirected to Admin Profile Page
    When I input 'testuser+2handlestaff@shoplineapp.com' to email field
    And error message should contain 'Email is already taken'
    Given I am on Staff Setting Page
    And store owner email should contain correct account email
    And ---ROLL BACK---
    When I select Logout of User Menu
    Then I should be redirected to Admin Login Page
    And I fill correct admin email to email field
    And I fill correct admin password to password field
    When I click on login button
    And I should see successful login
    Then I should be redirected to Setup Guide Page
    When I open new tab and redirect to admin staff setting add page
    Then I should be redirected to Staff Setting Add Page
    When I click on cancel button
    Then I should be redirected to Staff Setting Page
    Then row of name included 'testuser+2handlestaff' and same order of row of email should also contain 'testuser+2handlestaff@shoplineapp.com'
    When I click delete button for the same order of row of email included 'testuser+2handlestaff@shoplineapp.com'
    Then I should see popover
    And I click on delete checkbox
    And I click on ok button

  @EAT-1200 @EAT-1200-2 @EAT-1200-2-2
  Scenario: Deleted Email Can Be Updated By Other Staff
    Then I switch to 1 of tabs
    Given I am on Staff Setting Add Page
    When I fill 'testuser+2temp@shoplineapp.com' to email field
    And I click on add button
    Then I should be redirected to Edit Staff Permissions Page
    When I click on unchecked give full access checkbox
    And I click on update button
    Then I should be redirected to Staff Setting Page
    When I select Logout of User Menu
    Then I should be redirected to Admin Login Page
    And I fill 'testuser+2temp@shoplineapp.com' to email field
    And I fill '12345678' to password field
    And I click on login button
    And I should see successful login
    Given I am on Setup Guide Page
    When I select My Profile of User Menu
    When I switch to 3 of tabs
    Then I should be redirected to Admin Profile Page
    When I select language dropdown option included 'English' of language dropdown
    Then language dropdown should contain 'Language'
    When I input 'testuser+2handlestaff@shoplineapp.com' to email field
    And error message should contain 'Email is already taken'
    Given I am on Staff Setting Page
    Then row of email included 'testuser+2temp@shoplineapp.com' and same order of row of name should also contain 'temp'
    Then ---I NEED TO ROLLBACK Be sure testuser temp is staff in hanle testuser ---
    And ---ROLL BACK---
    When I click delete button for the same order of row of email included 'testuser+2temp@shoplineapp.com'
    Then I should see popover
    And I click on delete checkbox
    And I click on ok button

    When I switch to 2 of tabs
    Then I should be on Staff Setting Page
    When I select Logout of User Menu
    Then I should be redirected to Admin Login Page
    And I fill correct admin email to email field
    And I fill correct admin password to password field
    When I click on login button
    And I should see successful login
    Given I am on Setup Guide Page
    When I open new tab and redirect to admin staff setting add page
    Then I should be redirected to Staff Setting Add Page
    When I click on cancel button
    Then I should be redirected to Staff Setting Page
    Then row of email included 'testuser+2handlestaff@shoplineapp.com' and same order of row of name should also contain 'testuser+2handlestaff'
    When I click delete button for the same order of row of email included 'testuser+2handlestaff@shoplineapp.com'
    Then I should see popover
    And I click on delete checkbox
    And I click on ok button