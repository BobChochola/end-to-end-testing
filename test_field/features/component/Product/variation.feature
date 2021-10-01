@BaseCase @Admin @Product @variation
Feature: Variations UI of product creation form
  As a user of Shopline
  I want to use setup my product's variations
  So that my customer can know what we have for the product

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

  Scenario: I want to input the product variation in the form
    Given I am on Product Create Page
    And I click on variations tab
    And I click on variations toggle
    When I input "R" to add options field
    And I input "G" to add options field
    And I click on add variation button
    And I input "O" to 2nd add options field
    And I input "G" to 2nd add options field
    And I input "Y" to 2nd add options field
    Then I should see 6 row of variation list

  Scenario: I want to input the product variation in the form
    Given I am on Product Create Page
    And I click on variations tab
    And I click on variations toggle
    When I input "R" to add options field
    And I input "G" to add options field
    And I input "Y" to add options field
    And I click on add variation button
    And I input "O" to 2nd add options field
    And I input "G" to 2nd add options field
    And I input "Y" to 2nd add options field
    Then I should see 9 row of variation list