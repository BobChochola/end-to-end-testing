@PostTest @PreTest @BaseCase @Admin @BasicSetting @shopNameUpdate
Feature: Shop Name Update Feature
  As a merchant
  I want to update the shop name
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

  @C2100 @C2100-5
  Scenario: Update the shop name
    Given I am on Basic Setting Page
    And I fill shop name to shop name field
    When I click on basic info update button
    Then I should be redirected to Setup Guide Page
    And I wait for 15 seconds for loading
    And I click on side menu items included "Settings"
    And I click on side submenu items included "Basic Settings"
    And I should be redirected to Basic Setting Page
    Then shop name field should equal to shop name