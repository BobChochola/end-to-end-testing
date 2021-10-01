@BaseCase @Admin @Guide @checkDashboard @fixture-product
Feature: Check elements on dashboard
  As a merchant
  I want to know some shop information
  So that I can view shop analytics

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

  @C3728-1
  Scenario: Check product pageviews on dashboard
    Given I am on Setup Guide Page
    When I click on side menu items included 'Dashboard'
    Then I should be redirected to Dashboard Page
    Then I should see product pageviews

  @C3728-2
  Scenario: Check today's orders on dashboard
    Given I am on Setup Guide Page
    When I click on side menu items included 'Dashboard'
    Then I should be redirected to Dashboard Page
    Then I should see todays orders

  @C3728-3
  Scenario: Check shops page views on dashboard
    Given I am on Setup Guide Page
    When I click on side menu items included 'Dashboard'
    Then I should be redirected to Dashboard Page
    Then I should see shops page views