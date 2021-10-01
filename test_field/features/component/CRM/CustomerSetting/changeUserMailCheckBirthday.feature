@BaseCase @Storefront @Admin @CRM @CustomerSetting @changeUserMailCheckBirthday @fixture-shop
Feature: customer set birthday check shop user profile page
  As a merchant
  I want to edit customer details of a order
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
    
    Given I am on Customer Settings Page
    Then I should see user profile include checkbox
    And I click on 2nd user profile include checkbox
    And I click on update button
    Then I should be redirected to Customer Settings Page

  Scenario: customer set birthday check shop user profile page
    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I fill temp email to email field
    And I click on save button
    Then I should see save successfully message
    Then email field should contain temp email
    Then I should see birthday field
    And ---ROLL BACK---
    When I fill email to email field
    And I click on save button
    Then I should see save successfully message
    Given I am on Customer Settings Page
    Then I should see checkout include
    And I click on 2nd user profile include checkbox
    And I click on update button
    Then I should be redirected to Customer Settings Page