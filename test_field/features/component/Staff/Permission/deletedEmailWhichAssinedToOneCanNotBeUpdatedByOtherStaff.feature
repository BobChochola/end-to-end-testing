@BaseCase @Admin @Staff @Permission @SSO @deletedEmailWhichAssinedToOneCanNotBeUpdatedByOtherStaff @fixture-integration-one
Feature: Deleted Email Which Assigned Above Two Merchant Can Not Be Updated By Other Staff
  As a staff who assigned more than two handle,
  My email can not be assign to other staff

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

    Given I am on One Add Staff Setting Page
    When I fill 'testuser+onestaff@shoplineapp.com' to email field
    And I click on create button
    # Then I should be redirected to One Edit Staff Permissions Page
    # When I click on full access checkbox
    # And I click on update button
    # Then I should be redirected to One Permission Setting Page
    Given I am on One Permission Setting Page
    Then staff table should contain 'testuser+onestaff@shoplineapp.com'

  @EAT-1200 @EAT-1200-3 @EAT-1200-3-1
  Scenario: Deleted Email Can Not Be Updated By merchant owner
    Given I am on Dashboard Page
    When I select My Profile of User Menu
    When I switch to 2 of tabs
    Then I should be redirected to Admin Profile Page
    When I input 'testuser+onestaff@shoplineapp.com' to email field
    And error message should contain 'Email is already taken'
    Given I am on Staff Setting Page
    And store owner email should contain correct account email
    Then ---I NEED TO ROLLBACK Be sure testuser onestaff is staff in hanle testuser ---
    And ---ROLL BACK---
    Given I am on One Permission Setting Page
    Then row of staff included 'testuser+onestaff' and same order of row of staff should also contain 'testuser+onestaff@shoplineapp.com'
    Then last row of staff should contain 'testuser+onestaff'
    When I click on last delete button
    Then I should see popover
    And I click on delete checkbox
    And I click on ok button

  @EAT-1200 @EAT-1200-3 @EAT-1200-3-2
  Scenario: Deleted Email Can Be Updated By Other Staff
    Given I am on Staff Setting Add Page
    When I fill 'testuser+3temp@shoplineapp.com' to email field
    And I click on add button
    Then I should be redirected to Edit Staff Permissions Page
    When I click on unchecked give full access checkbox
    And I click on update button
    Then I should be redirected to Staff Setting Page
    And I wait for 3 seconds for data sync
    When I select Logout of User Menu
    Then I should be redirected to Admin Login Page
    And I fill 'testuser+3temp@shoplineapp.com' to email field
    And I fill '12345678' to password field
    And I click on login button
    And I should see successful login
    Then I should be redirected to Dashboard Page
    When I select My Profile of User Menu
    When I switch to 2 of tabs
    Then I should be redirected to Admin Profile Page
    When I select language dropdown option included 'English' of language dropdown
    Then language dropdown should contain 'Language'
    When I input 'testuser+onestaff@shoplineapp.com' to email field
    And error message should contain 'Email is already taken'
    Given I am on Staff Setting Page
    Then row of email included 'testuser+3temp@shoplineapp.com' and same order of row of name should also contain 'temp'
    And ---ROLL BACK---
    When I click delete button for the same order of row of email included 'testuser+3temp@shoplineapp.com'
    Then I should see popover
    And I click on delete checkbox
    And I click on ok button

    Given I am on One Permission Setting Page
    Then row of staff included 'testuser+onestaff' and same order of row of staff should also contain 'testuser+onestaff@shoplineapp.com'
    Then last row of staff should contain 'testuser+onestaff'
    When I click on last delete button
    Then I should see popover
    And I click on delete checkbox
    And I click on ok button