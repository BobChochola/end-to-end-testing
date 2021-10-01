@BaseCase @Admin @Product @Setting @productSettingUpdate
Feature: Order Setting Update Feature
  As a merchant
  I want to change setting for order
  So that I can modify order settings on order settings page

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

  @C3742
  Scenario: Product Inventory Reminder
    Given I am on Product Setting Page
    Then I should see inventory reminder toggle
    When I check and click inventory reminder toggle off
    And I click on update button
    Then I should see alert
    Then inventory reminder toggle should be checked
    And ---ROLL BACK---
    Given I am on Product Setting Page
    Then I should see inventory reminder toggle
    When I click on inventory reminder toggle
    And I click on update button
    Then I should see alert