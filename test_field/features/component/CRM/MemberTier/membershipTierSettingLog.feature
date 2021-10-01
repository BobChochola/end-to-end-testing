@BaseCase @Admin @CRM @MemberTier @membershipTierSettingLog
Feature: Membership Tier Settings Log
  As a merchant
  I want to create ,edit, delete and change membership tier
  So that I can see membership tier record in activity logs

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

    Given I am on Membership Tier Setting Page
    When I click on add button
    Then I should be redirected to Membership Tier New Page
    When I fill "(dirty data) VIP discount" to membership tier name field
    And I select membership upgrade condition option included "Single purchase" of membership upgrade condition select button
    And I fill "0" to membership upgrade rules field
    And I fill "20" to member offer field
    And I click on submit button
    Then I should be redirected to Membership Tier Setting Page
    Then I should see row of membership list

  Scenario: Log updated when membership tier created , edited , deleted and changed in priority
    Given I am on Membership Tier Setting Page
    When I click on add button
    Then I should be redirected to Membership Tier New Page
    When I fill "(dirty data) VVIP discount" to membership tier name field
    And I select membership upgrade condition option included "Single purchase" of membership upgrade condition select button
    And I fill "100" to membership upgrade rules field
    And I fill "30" to member offer field
    And I click on submit button
    Then I should be redirected to Membership Tier Setting Page
    Then I should see row of membership list
    Given I am on Membership Tier Setting Page
    When I click on logs button 
    And I wait for 5 seconds for loading
    And I should see row of logs
    Then 1st row of logs should contain "Membership tier is created"

    Given I am on Membership Tier Setting Page
    When I click on 1st dropdown button
    And I click on dropdown option included "Edit"
    And I fill "(dirty data) VIP haha" to membership tier name field
    And I click on submit button
    Then I should be redirected to Membership Tier Setting Page
    Then I should see row of membership list
    Given I am on Membership Tier Setting Page
    When I click on logs button
    And I wait for 5 seconds for loading
    And I should see row of logs
    Then 1st row of logs should contain "Membership tier settings is updated"

    Given I am on Membership Tier Setting Page
    When I click on 1st row of swap tier button
    Then I should see popup
    When I click on popup confirm button
    And I click on logs button
    And I wait for 5 seconds for loading
    And I should see row of logs
    Then 1st row of logs should contain "Membership tier settings priority is changed"

    And ---ROLL BACK---
    Given I am on Membership Tier Setting Page
    When I select dropdown option included "Delete" of dropdown button
    And I should see confirmation popup window
    And I click on delete button
    And I Refresh
    Then I should see row of membership list
    When I select dropdown option included "Delete" of dropdown button
    And I should see confirmation popup window
    And I click on delete button
    When I click on logs button
    And I should see row of logs
    Then 1st row of logs should contain "Membership tier settings is deleted"