@BaseCase @Admin @Promotion @CartAddon @cartAddonCannotEditInvalidDate @fixture-payment @fixture-delivery
Feature: Admin create new free gift promotion
  As a merchant
  I want to create promotions at rollout key promotion hour internal

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    Then I should see successful login
    When I check and click no thanks 
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button

  @EAT-739 @EAT-739-2
  Scenario: create cart add on items at rollout key promotion hour internal
    Given I am on Cart Add On Items Index Page
    When I click on add cart addon button
    Then I should be redirected to Cart Add On Items Create Page
    And I fill the day after tomorrow date to valid date field
    And I fill the day after tomorrow date to invalid date field
    Then valid date field should not contain the day after tomorrow date
    Then invalid date field should not contain the day after tomorrow date
    And I click on valid date field
    Then I should see calendar table
    When I click on today button
    And I click on now button
    And I click on done button
    And I click on invalid date field
    Then I should see calendar table
    When I click on 3rd available date button
    And I click on now button
    And I click on done button
    Then valid date field should contain start full time
    Then invalid date field should contain end full time
    And I fill "(dirty data) Add-on Item" to english name field
    When I click on select add on items button
    Then I should see search add on items field
    And I input "2nd Addon for Checkout" to search add on items field
    When I click on search button
    Then add on items name should contain "2nd Addon for Checkout"
    And I click on 1st add on items checkbox
    When I click on add on items save button
    Then I should see add on items price field
    And I fill '10' to add on items price field
    And I click on unlimited checkbox
    When I click on save button
    Then I should be redirected to Cart Add On Items Index Page
    Then I should see alert
    Then 1st row of cart addon list should contain "Add-on Item"
    Then 1st row of cart addon list should contain start full time
    Then 1st row of cart addon list should contain end full time
    And ---ROLL BACK---
    Given I am on Cart Add On Items Index Page
    When I click on 1st select checkbox of cart addon list
    Then I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert