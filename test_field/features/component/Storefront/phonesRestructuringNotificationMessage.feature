@BaseCase @Storefront @CRM @phonesRestructuringNotificationMessage @fixture-shop
Feature: Phones restructuring: Notification message in member center
  As a custom
  I want to create or edit my phone number
  If I don't have phone number,I will see add phone number

  Background:
    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page

  @EAT-568
  Scenario: Phones restructuring: Notification message in member center
    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I check and click remove phone number button
    And I should see add new number button
    When I click on add new number button
    Then I should see phone number field
    When I fill '0912000000' to phone number field
    And I click on save button
    Then I should see save successfully message
    And phone number field should contain '0912000000'
    And I should not see add new number button
    When I fill '0912111111' to phone number field
    And I click on save button
    Then I should see save successfully message
    And phone number field should contain '0912111111'
    Then ---ROLL BACK---
    When I click on remove phone number button
    And I click on save button
    Then I should see add new number button