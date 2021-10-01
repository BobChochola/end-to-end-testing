@BaseCase @Admin @CRM @EmailVerification @assertEmailVerificationToggle @fixture-shop
Feature: Check the assertion when sign up via email
  As a shopper
  I want to shopper can sign up via email can be stored
  So I can see whether his mail is verified

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

  @EAT-447-1
  Scenario: Check email verification toggle on customer setting page and column Is Verified on customer list
    Given I am on Customer Settings Page
    Then I should see verification email toggle
    When I check and click verification email toggle off
    Then verification email toggle should be checked
    And I click on update button
    Given I am on Customer List Page
    When I input email to search field
    And I should see row of select checkbox list
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    Then I should see email verify status
    And ---ROLL BACK---
    Given I am on Customer Settings Page
    When I click on verification email toggle
    And I click on update button
    Then verification email toggle should not be checked