@BaseCase @Admin @Storefront @BasicSetting @storefrontTopRightLanguageSelectorRevamp @fixture-shop
Feature: Basic setting - lanuange changed and Storefront language should show default
  As a merchant
  I want my customer to change the language
  So that my customer can find where to change the language

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

  @EAT-582
  Scenario: check Based on Default language settings and show different language
    Given I am on Basic Setting Page
    When I click on 2nd language checkbox
    And I select Zh of language dropdown
    And I click on basic info update button
    Then I should be redirected to Dashboard Page
    Given I am on Basic Setting Page
    Then language dropdown should equal to "Traditional Chinese"
    When I click on View my shop button
    Then I switch to 2 of tabs
    Then I should be redirected to Shop Home Page
    Then language dropdown should contain "繁體"

    Given I am on Basic Setting Page
    When I click on 2nd language checkbox
    And I select English of language dropdown
    When I click on basic info update button
    Then I should be redirected to Dashboard Page
    Given I am on Basic Setting Page
    Then language dropdown should equal to "English"
    When I click on View my shop button
    Then I switch to 3 of tabs
    Then I should be redirected to Shop Home Page
    Then language dropdown should contain "English"