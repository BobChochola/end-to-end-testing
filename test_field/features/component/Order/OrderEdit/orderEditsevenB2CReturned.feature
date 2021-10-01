@BaseCase @Admin @Order @OrderEdit @orderEditsevenB2CReturned @fixture-seven-order
Feature: Order edit delivery details for recipient information
  As a merchant
  I want to edit delivery details of customer's recipient information
  So that I can edit successful

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

  @C3774 @C3774-4
  Scenario: (Returned)I want to edit delivery details of customer's recipient information
    Given I am on Orders Page
    And I select Seven Eleven B2C Order Management of Orders delivery type dropdown
    Then I should see breadcrumb
    When I click on returned tab
    Then I should see search label
    And search label should contain "Ref. delivery status is Returned"
    Then I should see row of order list
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I Refresh
    And I should see order edit button
    When I click on customer form edit button
    Then I should see name field
    And I fill edited name to name field
    And I fill edited email to email field
    And I fill edited phone to phone field
    And I click on customer save button
    Then I should see alert
    Then name field should contain edited name
    Then email field should contain edited email
    Then phone field should contain edited phone
    Then delivery status should contain "Returned"
    Then I Refresh
    Then I should see delivery form edit button
    And I click on delivery form edit button
    Then I fill edited name to third party recipient name field
    And I fill edited phone to third party recipient phone field
    And I scroll down to payment status dropdown
    Then I click on save button
    And I should see alert
    And third party recipient name should contain edited name
    And third party recipient phone should contain edited phone
    And ---ROLL BACK---
    And I scroll down to breadcrumb
    And I click on customer form edit button
    And I fill name to name field
    And I fill email to email field
    And I fill phone to phone field
    And I click on customer save button
    Then I should see alert
    Then name field should contain name
    Then email field should contain email
    Then phone field should contain phone
    Then I Refresh
    Then I should see delivery form edit button
    And I click on delivery form edit button
    Then I fill name to third party recipient name field
    And I fill phone to third party recipient phone field
    And I scroll down to payment status dropdown
    Then I click on save button
    And I should see alert
    And third party recipient name should contain name
    And third party recipient phone should contain phone