@PostTest @PreTest @BaseCase @Admin @BasicSetting @countryUpdate @premiumFeature
Feature: Country Update Feature
  As a merchant
  I want to update the country
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

  @C2100 @C2100-1
  Scenario: Update the country
    Given I am on Basic Setting Page
    And I select Hong Kong of base country dropdown
    Then I should see popover
    When I click on confirm button
    When I click on basic info update button
    Then I should be redirected to Setup Guide Page
    And I wait for 15 seconds for loading
    And I click on side menu items included "Settings"
    And I click on side submenu items included "Basic Settings"
    And I should be redirected to Basic Setting Page
    Then base country dropdown should equal to "Hong Kong"
    And ---ROLL BACK---
    And I select Taiwan of base country dropdown
    When I click on basic info update button
    Then I should be redirected to Setup Guide Page