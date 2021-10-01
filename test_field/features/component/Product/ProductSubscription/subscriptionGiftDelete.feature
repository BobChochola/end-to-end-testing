@BaseCase @Admin @Product @Search @ProductSubscription @subscriptionGiftDelete @fixture-freegift @fixture-subscription-product
Feature: Subscription Gift Delete
  As a merchant
  I want to delete subscription gift setting in product subscription management

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

  Scenario: Add delete button
    Given I am on Product Subscription Management Page
    And I click on setting button
    Then I should be redirected to Setting Subscription Gift Page
    And I click on add button
    Then I should be redirected to Setting Subscription Gift Create Page
    And I fill "1" to free gift field
    And I fill "2" to subscription field
    And I click on select button
    Then I should see select popover
    And I input "2nd Created Free Gift" to search field
    Then I should see select of free gift list
    Then 1st row of popover free gift list should contain '2nd Created Free Gift'
    And I click on 1st select of free gift list
    And I click on save button
    Then I should see row of free gift
    When I click on update button
    Then I should be redirected to Setting Subscription Gift Page
    Then I should see promotion of promotion list
    Then I should see row of delete button
    When I click on 1st row of delete button
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should not see confirmation popover
    Then promotion of promotion list should contain "No promotions yet"