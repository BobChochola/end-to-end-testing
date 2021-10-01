@BaseCase @Admin @Order @OrderSplit @711B2CReturnedSplitEditCheck @fixture-seven-return-order
Feature: 711 B2C returned order check the split button
  As a merchant
  I can split the parent order when the order status is returned

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

  Scenario: 711 B2C returned order check the split button
    Given I am on Orders Page
    And I should not see loading icon
    When I select Seven Eleven B2C Order Management of Orders delivery type dropdown
    Then I should see additional filters button
    Then I should see returned tab
    When I click on returned tab
    Then I should see additional filters button
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I should see split button
    Then product details edit button should be enabled
    When I click on split button
    Then I should be redirected to Order Split Page
    Then I should see row of split quantity field
    When I fill "1" to 1st row of split quantity field
    And I click on split button
    Then I should see confirm popup
    When I click on confirm button
    Then I should see alert