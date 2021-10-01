@BaseCase @Admin @Order @OrderDelivery @orderEditsevenC2CShipped @fixture-seven-order
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

  @C3775 @C3775-3
  Scenario: (Shipped)I want to edit delivery details of customer's information
    Given I am on Orders Page
    And I select Seven Eleven C2C Order Management of Orders delivery type dropdown
    Then I should see shipped tab
    When I click on shipped tab
    And I wait for 3 seconds for loading
    Then I should see search label
    And search label should contain "Ref. delivery status is Shipped"
    Then I should see row of order list
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    And I should not see order edit button
    Then I click on customer form edit button
    And I fill edited name to name field
    And I fill edited email to email field
    And I fill edited phone to phone field
    When I click on customer save button
    Then I should see alert
    Then name field should contain edited name
    Then email field should contain edited email
    Then phone field should contain edited phone
    And I should not see delivery form edit button
    And I scroll down to delivery status
    And delivery status should contain "Shipped"
    And ---ROLL BACK---
    When I scroll down to breadcrumb
    Then I click on customer form edit button
    And I fill name to name field
    And I fill email to email field
    And I fill phone to phone field
    And I click on customer save button
    Then I should see alert
    Then name field should contain name
    Then email field should contain email
    Then phone field should contain phone