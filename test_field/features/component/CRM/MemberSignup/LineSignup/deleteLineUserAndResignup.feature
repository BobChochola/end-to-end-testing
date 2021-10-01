@BaseCase @Admin @Admin @Storefront @CRM @MemberSignup @LineSignup @deleteLineUserAndResignup @fixture-line-connect @EAT-738
Feature: LINE Login connection should be deleted when user is deleted
  As a Shopline user
  I want to deletethe user which sign up with LINE account
  So that the user should not be able to enter their OLD account
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

  Scenario: deleting a LINE login user and create a new user with the same LINE id
    Given I am on Shop Sign Up Page
    When I click on line login button
    Then I should be redirected to Line Login Page
    When I fill qa line email to email field
    And I input line password to password field
    And I check and click allow button
    And I check and click back button
    Then I should be redirected to Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    Then email field should contain qa line email
    And I wait for 5 seconds for admin loading
    When I switch to 2 of tabs
    Given I am on Customer List Page
    Then 1st row of user email should contain qa line email
    When I click on 1st row of select checkbox
    Then I should see bulk action dropdown
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button
    Then I switch to 1 of tabs
    Then I Refresh
    Then I should be redirected to Shop User Removed Page
    Then remind message should contain 'This account does not exist.'
    When I click on relogin button
    Then I should be redirected to Shop Login Page
    When I click on line login button included 'Log in with LINE'
    Then I should be redirected to Line Login Page
    When I click on sign in button
    And I check and click allow button
    And I check and click back button
    Then I should be redirected to Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    Then email field should contain qa line email
    And I wait for 5 seconds for admin loading
    Then ---ROLL BACK---
    Given I am on Customer List Page
    Then 1st row of user email should contain qa line email
    When I click on 1st row of select checkbox
    Then I should see bulk action dropdown
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button