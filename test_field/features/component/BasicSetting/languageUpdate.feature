@PostTest @PreTest @BaseCase @Admin @BasicSetting @languageUpdate
Feature: Language Update Feature
  As a merchant
  I want to update the language
  So that I can declare what language my shop is based in

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

  @C2100 @C2100-2
  Scenario: Update the language
    Given I am on Basic Setting Page
    And I select Zh of language dropdown
    When I click on basic info update button
    Then I should be redirected to Setup Guide Page
    And I wait for 15 seconds for loading
    And I click on side menu items included "Settings"
    And I click on side submenu items included "Basic Settings"
    And I should be redirected to Basic Setting Page
    Then language dropdown should equal to "Traditional Chinese"
    And ---ROLL BACK---
    And I select English of language dropdown
    When I click on basic info update button
    Then I should be redirected to Setup Guide Page
    And I wait for 15 seconds for loading