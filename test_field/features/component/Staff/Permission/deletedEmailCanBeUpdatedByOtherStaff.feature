@BaseCase @Admin @Staff @SSO @Permission @deletedEmailCanBeUpdatedByOtherStaff
Feature: Deleted Email Can Be Updated By Other Staff
  As a staff of merchant
  My email can be assign to other staff

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    When I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click no thanks button

  @EAT-1200 @EAT-1200-1 @EAT-1200-1-1
  Scenario: Deleted Email Can Be Updated By merchant owner
    Then I should be on Setup Guide Page
    When I select My Profile of User Menu
    When I switch to 2 of tabs
    Then I should be redirected to Admin Profile Page
    When I input 'testuser+deletedstaff@shoplineapp.com' to email field
    Then whole page should not contain 'Email is already taken'
    Given I am on Staff Setting Page
    And store owner email should contain 'testuser+deletedstaff@shoplineapp.com'
    And ---ROLL BACK---
    When I select My Profile of User Menu
    When I switch to 3 of tabs
    Then I should be redirected to Admin Profile Page
    When I input correct account email to email field
    Then I should be redirected to Setup Guide Page
    Given I am on Staff Setting Page
    And store owner email should contain correct account email
 
  @EAT-1200 @EAT-1200-1 @EAT-1200-1-2
  Scenario: Deleted Email Can Be Updated By Other Staff
    Given I am on Staff Setting Add Page
    When I fill 'testuser+temp@shoplineapp.com' to email field
    And I click on add button
    Then I should be redirected to Edit Staff Permissions Page
    When I click on unchecked give full access checkbox
    And I click on update button
    Then I should be redirected to Staff Setting Page
    When I select Logout of User Menu
    Then I should be redirected to Admin Login Page
    
    And I fill 'testuser+temp@shoplineapp.com' to email field
    And I fill correct account password to password field
    And I click on login button
    And I should see successful login
    Then I should be redirected to Setup Guide Page
    When I select My Profile of User Menu
    When I switch to 2 of tabs
    Then I should be redirected to Admin Profile Page
    When I input 'testuser+deletedstaff@shoplineapp.com' to email field
    Then whole page should not contain 'Email is already taken'
    Given I am on Staff Setting Page
    Then row of email included 'testuser+deletedstaff@shoplineapp.com' and same order of row of name should also contain 'testuser+temp'
    Then ---I NEED TO ROLLBACK Be sure testuser temp is staff in hanle testuser ---
    And ---ROLL BACK---
    When I select My Profile of User Menu
    When I switch to 3 of tabs
    Then I should be redirected to Admin Profile Page
    When I input 'testuser+temp@shoplineapp.com' to email field
    Then I should be redirected to Dashboard Page
    Given I am on Staff Setting Page
    Then row of email included 'testuser+temp@shoplineapp.com' and same order of row of name should also contain 'testuser+temp'
    When I click delete button for the same order of row of email included 'testuser+temp@shoplineapp.com'
    Then I should see popover
    And I click on delete checkbox
    And I click on ok button