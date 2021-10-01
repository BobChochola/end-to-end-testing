@PostTest @PreTest @BaseCase @Admin @BasicSetting @shopStatusUpdate
Feature: Shop Status Update Feature
  As a merchant
  I want to update the shop status
  So that I can declare where my shop is based in

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

  @C2100 @C2100-6
  Scenario: Update the shop status
    Given I am on Basic Setting Page
    And I select Closed of shop status dropdown
    Then I should see basic info update button
    When I click on basic info update button
    Then I should be redirected to Setup Guide Page
    And I wait for 15 seconds for loading
    And I click on side menu items included "Settings"
    And I click on side submenu items included "Basic Settings"
    And I should be redirected to Basic Setting Page
    Then shop status dropdown should equal to "Closed"
    And ---ROLL BACK---
    And I select Open of shop status dropdown
    Then I should see basic info update button
    When I click on basic info update button
    Then I should be redirected to Setup Guide Page
