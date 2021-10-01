@BaseCase @Admin @Order @OrderSplit @711C2CShippedSplitEditCheck @fixture-seven-order
Feature: 711 C2C shipped order check the split button
  As a merchant
  I can't split the parent order when the order status is shipped

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

  Scenario: 711 C2C shipped order check the split button
    Given I am on Orders Page
    When I select Seven Eleven C2C Order Management of Orders delivery type dropdown
    Then I should see additional filters button
    When I click on shipped tab
    Then I should see additional filters button
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I should see split button
    Then product details edit button should be disabled
    Then split button should be disabled