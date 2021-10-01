@BaseCase @Admin @CRM @MemberTier @membershipTierSettingLogCheckStatus
Feature: Membership Tier Settings Log Check Status
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
    Then 1st row of membership list should contain 'VIP discount'
    Given I am on Membership Tier Setting Page
    When I click on logs button
    And I should see row of logs
    Then 1st row of logs should contain "Membership tier is created"
    Then 1st row of logs should contain 'Membership Tier Name: (dirty data) VIP discount'
    Then 1st row of logs should contain 'Upgrade Condition: Single Purchase 0'
    Then 1st row of logs should contain 'Valid Period: Never expires'
    Then 1st row of logs should contain 'Member Offer: 20%'

  Scenario: Purchase within specific period / Set valid period
    Given I am on Membership Tier Setting Page
    When I click on add button
    Then I should be redirected to Membership Tier New Page
    When I fill "(dirty data) VVVIP" to membership tier name field
    And I select membership upgrade condition option included "Purchase within specific period" of membership upgrade condition select button
    And I fill "6" to membership upgrade period field
    And I fill "100" to membership upgrade rules field
    And I click on set valid period radio checkbox
    And I fill "6" to membership valid period field
    And I select membership upgrade condition option included "Purchase within specific period" of membership extension condition select button
    Then specific period within field should contain "6"
    And I fill "100" to membership extension total spend field
    And I fill "30" to member offer field
    And I scroll down to breadcrumb
    And I click on submit button
    Then I should be redirected to Membership Tier Setting Page
    Then I should see row of membership list
    Then 2nd row of membership list should contain 'VVVIP'
    Given I am on Membership Tier Setting Page
    When I click on logs button
    And I should see row of logs
    Then 1st row of logs should contain "Membership tier is created"
    Then 1st row of logs should contain 'Membership Tier Name: (dirty data) VVVIP'
    Then 1st row of logs should contain 'Upgrade Condition: in 6 months Purchase 100'
    Then 1st row of logs should contain 'Valid Period: 6 months'
    Then 1st row of logs should contain 'Extension Condition: in 6 months Purchase 100'
    Then 1st row of logs should contain 'Member Offer: 30%'

    Given I am on Membership Tier Setting Page
    When I click on 2nd dropdown button
    And I click on dropdown option included "Edit"
    Then I should see membership extension total spend field
    And I scroll down to membership extension total spend field
    And I select membership upgrade condition option included "Single purchase" of membership extension condition select button
    Then I should not see specific period within field
    And I scroll down to breadcrumb
    And I click on submit button
    Then I should be redirected to Membership Tier Setting Page
    Then I should see row of membership list
    Given I am on Membership Tier Setting Page
    When I click on logs button
    And I should see row of logs
    Then 1st row of logs should contain "Membership tier settings is updated"
    Then 1st row of logs should contain 'Extension Condition: Single Purchase 100'

    Given I am on Membership Tier Setting Page
    Then 1st row of membership list should contain 'VIP discount'
    Then 2nd row of membership list should contain 'VVVIP'
    When I click on 1st row of swap tier button
    Then I should see popup
    When I click on popup confirm button
    Then 1st row of membership list should contain 'VVVIP'
    Then 2nd row of membership list should contain 'VIP discount'
    And I click on logs button
    And I should see row of logs
    Then 1st row of logs should contain "Membership tier settings priority is changed"
    Then 1st row of logs should contain "Membership Tier Name: (dirty data) VIP discount"
    Then 1st row of logs should contain "Level: 1 -> 2"

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
    And I should not see row of membership list
    When I click on logs button
    And I should see row of logs
    Then 1st row of logs should contain "Membership tier settings is deleted"
    Then 1st row of logs should contain "Membership Tier Name: (dirty data) VIP discount"
    Then 2nd row of logs should contain "Membership tier settings is deleted"
    Then 2nd row of logs should contain "Membership Tier Name: (dirty data) VVVIP"