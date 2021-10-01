@BaseCase @Admin @CRM @Credit @birthdayCreditAssign
Feature: Birthday Credit Assign
  As a merchant
  I want to set the Birthday Credit for customers
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

  Scenario: assign birthday credit to members
    Given I am on Store Credit Page
    And I click on birthday setting button
    Then I should be redirected to Customer Settings Page
    And I click on birthday checkout include
    And I click on birthday signup include
    And I click on birthday profile include
    And I click on update button
    Then I should be redirected to Customer Settings Page
    Given I am on Store Credit Page
    And I click on birthday credit toggle
    Then I should see birthday credit amount field
    And I fill "10" to birthday credit amount field
    And I fill "10" to birthday credit validity period field
    And I click on update button
    Then I should see alert
    Then birthday credit toggle should be checked
    Then birthday credit amount field should contain "10"
    Then birthday credit validity period field should contain "10"
    When I click on birthday credit never expires checkbox
    And I click on update button
    Then I should see alert
    Given I am on Store Credit Page
    Then I should see birthday credit disabled validity period field

    And ---ROLL BACK---
    And I fill "0" to birthday credit amount field
    And I click on birthday credit never expires checkbox
    And I click on birthday credit toggle
    And I click on update button
    Then I should see alert
    Given I am on Store Credit Page
    Then birthday credit toggle should not be checked
    Given I am on Customer Settings Page
    When I click on birthday checkout include
    And I click on birthday signup include
    And I click on birthday profile include
    And I click on update button
    Then I should be redirected to Customer Settings Page