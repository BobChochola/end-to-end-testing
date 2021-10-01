@BaseCase @Admin @CRM @Credit @storeCreditSettingUpdate
Feature: Store Credit Setting Settings Update
  As a merchant
  I want to set the Store Credit for customers
  So that I can set the settings in Store Credits Page

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

  @C3870
  Scenario: Update Store Credit Settings
    Given I am on Store Credit Page
    And I select credit amount rule dropdown option included 'Fixed Amount' of credit amount rule dropdown
    And I fill "20" to credit amount field
    And I select credit amount rule dropdown option included 'Unlimited' of credit amount rule dropdown
    Then I should see disabled maximum amount field