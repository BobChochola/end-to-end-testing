@BaseCase @Admin @Product @Setting @addProductSettings
Feature: Add Product Settings into Admin Setting
  As a merchant
  I want to go to Product Setting Page
  So that I can see Product Settings in side submenu

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

  @addProductSettings-1
  Scenario: Product Settings
    Given I am on Setup Guide Page
    And I click on side menu items included "Settings"
    And I click on side submenu items included "Product Settings"
    Then I should be redirected to Product Setting Page
    Then setting items should contain "Product Inventory Reminder"
    Then 3rd setting items should contain "Out-Of-Stock Reminder"
    Then 4th setting items should contain "Location ID Setting"
    Then 5th setting items should contain "sold out"

  @addProductSettings-2
  Scenario: Checking the new functions will not show in original page
    Given I am on Order Setting Page
    Then setting form should not contain "Product Inventory Reminder"
    Then setting form should not contain "Out-Of-Stock Reminder"
    Then setting form should not contain "Location ID Setting"
    Given I am on Inventory Page
    Then setting items should not contain "Show sold out message in product listing page"

  @addProductSettings-3
  Scenario: Toggles are able to turn on/off
    Given I am on Product Setting Page
    Then I should see inventory reminder toggle
    When I check and click inventory reminder toggle off
    When I check and click inventory reminder toggle off
    When I check and click out of stock reminder toggle off
    When I check and click out of stock reminder toggle off
    When I check and click location id setting toggle off
    When I check and click location id setting toggle off
    When I check and click sold out toggle off
    When I check and click sold out toggle off
    Then I should see update button
    And I click on update button
    Then I should see alert
    Then inventory reminder toggle should be checked
    Then out of stock reminder toggle should be checked
    Then location id setting toggle should be checked
    Then sold out toggle should be checked
    And ---ROLL BACK---
    Given I am on Product Setting Page
    When I click on inventory reminder toggle
    And I click on out of stock reminder toggle
    And I click on location id setting toggle
    And I click on sold out toggle
    And I click on update button
    Then I should see alert