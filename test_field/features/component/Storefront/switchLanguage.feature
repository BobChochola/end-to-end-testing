@BaseCase @Storefront @switchLanguage @fixture-shop
Feature: Switch language
  As a guest
  I want to switch language
  So that I can use the language that I am familiar

  @C3796
  Scenario: Switch language to English
    Given I am on Shop Home Page
    When I select language dropdown option included '中文' of language dropdown
    Then message button should equal to "聯絡我們"
    When I select language dropdown option included 'English' of language dropdown
    Then message button should equal to "MESSAGE"