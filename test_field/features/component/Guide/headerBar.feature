@BaseCase @Admin @Guide @headerBar
Feature: Admin Panel Header Bar
  As a user of Shopline
  I want to use the header bar to navigate to corresponding pages

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

  @headerBar-1
  Scenario: I want to change language to ZH
    Given I am on Setup Guide Page
    When I click on side menu items included 'Dashboard'
    Then I should be redirected to Dashboard Page
    Then I should see Language
    When I click on Language
    And I click on ZH
    Then Language should contain "中文(繁)"

  @headerBar-2
  Scenario: I want to change language to English
    Given I am on Setup Guide Page
    When I click on side menu items included 'Dashboard'
    Then I should be redirected to Dashboard Page
    Then I should see Language
    When I click on Language
    When I click on English
    Then Language should contain "English"

  @headerBar-3
  Scenario: I want to go to academy
    Given I am on Setup Guide Page
    When I click on side menu items included 'Dashboard'
    Then I should be redirected to Dashboard Page
    Then I should see Help
    When I click on Help
    When I click on Academy
    When I switch to 2 of tabs
    Then I should be redirected to Academy Page

  @headerBar-4
  Scenario: I want to go to FAQ
    Given I am on Setup Guide Page
    When I click on side menu items included 'Dashboard'
    Then I should be redirected to Dashboard Page
    Then I should see Help
    When I click on Help
    When I click on FAQ
    When I switch to 2 of tabs
    Then I should be redirected to Faq Page

  @headerBar-5
  Scenario: I want to view my shop
    Given I am on Setup Guide Page
    When I click on side menu items included 'Dashboard'
    Then I should be redirected to Dashboard Page
    When I click on View my shop button
    When I switch to 2 of tabs
    Then I should be redirected to Shop Home Page

  @headerBar-6
  Scenario: I want to go inside my profile page
    Given I am on Setup Guide Page
    When I click on side menu items included 'Dashboard'
    Then I should be redirected to Dashboard Page
    Then I should see User Menu
    When I click on User Menu
    When I click on My Profile
    When I switch to 2 of tabs
    Then I should be redirected to Admin Profile Page

  @headerBar-7
  Scenario: I want to change my password
    Given I am on Setup Guide Page
    When I click on side menu items included 'Dashboard'
    Then I should be redirected to Dashboard Page
    Then I should see User Menu
    When I click on User Menu
    When I click on Change Password
    And I should be redirected to Admin Change Password Page
    When I fill current password to current password field
    And I fill new password to password field
    And I fill new password to password confirmation field
    And I click on Update button
    And ---ROLL BACK---
    Then I should be redirected to Setup Guide Page
    When I click on side menu items included 'Dashboard'
    Then I should be redirected to Dashboard Page
    When I click on User Menu
    When I click on Change Password
    And I should be redirected to Admin Change Password Page
    When I fill new password to current password field
    And I fill current password to password field
    And I fill current password to password confirmation field
    And I click on Update button
    Then I should be redirected to Setup Guide Page

  @headerBar-8 @C3782 @fixture-basket-plan
  Scenario: My plan and billing page
    Given I am on Setup Guide Page
    When I click on User Menu
    And I click on My Plan And Billing
    Then I should be redirected to My Plan And Billing Page
    And I switch to plan frame frame
    Then I should see subscription information
    Then I should see billing information
  
  @headerBar-9
  Scenario: I want to logout
    Given I am on Setup Guide Page
    When I click on side menu items included 'Dashboard'
    Then I should be redirected to Dashboard Page
    Then I should see User Menu
    When I click on User Menu
    When I click on Logout
    Then I should be redirected to Admin Login Page