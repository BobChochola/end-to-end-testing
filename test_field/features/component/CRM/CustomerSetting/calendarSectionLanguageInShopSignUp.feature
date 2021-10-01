@BaseCase @Admin @Storefront @CRM @CustomerSetting @calendarSectionLanguageInShopSignUp @fixture-shop
Feature: customer set calendarand check shop login page
  As a customer
  I can see the language of calendar section is depended on the language of the shop

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
    And I click on birthday signup include
    And I click on update button

  Scenario: Language is English
    Given I am on Shop Home Page
    And I click on login button
    Then I should be redirected to Shop Login Page
    And I click on switch to signup tab button
    And I click on birthday field
    Then calendar table should contain "Mon"
    And ---ROLL BACK---
    Given I am on Customer Settings Page
    And I click on birthday signup include
    And I click on update button

  # Scenario: Language is Chinese
  #   Given I am on Shop Home Page
  #   When I select language dropdown option included '中文' of language dropdown
  #   Then message button should equal to "聯絡我們"
  #   And I click on login button
  #   Then I should be redirected to Shop Login Page
  #   And I click on switch to signup tab button
  #   And I click on birthday field
  #   Then calendar table should contain "週一"
  #   And ---ROLL BACK---
  #   Given I am on Customer Settings Page
  #   And I click on birthday signup include
  #   And I click on update button