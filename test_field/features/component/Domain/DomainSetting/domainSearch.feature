@PostTest @PreTest @BaseCase @Admin @Search @Domain @DomainSetting @domainSearch
Feature: Domain Search Feature
  As a merchant
  I want to customize the domain address
  So that I can search domain address

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

  @C2113
  Scenario: Search domains automatically
    Given I am on Domain Settings Page
    Then I should see domain search result