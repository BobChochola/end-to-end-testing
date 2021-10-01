@BaseCase @Admin @Design @AdvancedSetting @checkBuyItNowButton
Feature: Buy now button Admin setting
  As a Shopline
  when I turn on buy now button rollout key
  I will see buy it now setting, and check related
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

  @EAT-1195
  Scenario: Buy now button Admin setting
    Given I am on Design Page
    And I click on advanced setting tab
    Then I should see buy it now checkbox
    Then I click on preference checkbox included "Activate the \"Buy Now Button\" feature to the store"
    Then I should see buy it now color setting panel
    Then I should see color setting field
    And I fill '55555' to color setting field
    Then color setting error message should contain 'Please input 6-digit HEX color codes'
    And I fill '12312g' to color setting field
    Then I should see color setting error message
    Then color setting error message should contain 'Please input 6-digit HEX color codes'
    And I fill 'aabbcc' to color setting field
    And I click on submit button included "Save"
    And I click on submit button included "Publish"
    And ---ROLL BACK---
    Given I am on Design Page
    And I click on advanced setting tab
    And I fill 'fb7813' to color setting field
    And I click on preference checkbox included "Activate the \"Buy Now Button\" feature to the store"
    And I click on submit button included "Save"
    And I click on submit button included "Publish"
    Then I should see 1 submit button