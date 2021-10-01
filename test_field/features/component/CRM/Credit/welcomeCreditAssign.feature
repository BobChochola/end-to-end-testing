@BaseCase @Admin @CRM @Credit @welcomeCreditAssign
Feature: Store Credit Setting Update welcome credit setting
  As a merchant
  I want to set the Welcome Credit for customers
  So that I can set it in Store Credits Page

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

  @C3868
  Scenario: Update welcome credit setting
    Given I am on Store Credit Page
    When I click on welcome credit toggle
    Then I wait for 5 seconds for loading
    Then I should see welcome credit amount field
    And I fill "50" to welcome credit amount field
    And I click on welcome credit never expires checkbox
    And I should see welcome credit disabled validity period field
    And I click on welcome credit never expires checkbox
    And I fill "5" to welcome credit validity period field