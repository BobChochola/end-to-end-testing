@BaseCase @Admin @Design @Storefront @AdvancedSetting @hideStorefrontLanguageSelector @fixture-shop
Feature: Hide Storefront Language Selector
  As a merchant
  I want to hide storefront top right language selector
  So that I can not see the language selector for my shop

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

  @hideStorefrontLanguageSelector-1
  Scenario: Turn off language selector in English at normal shop
    Given I am on Design Page
    And I click on advanced setting tab
    Then I should not see hide language label checked
    And I click on currency label included "Hide the language selector on storefront"
    And I click on submit button included "Save"
    And I click on submit button included "Publish"
    Then I should see 1 hide language label checked
    Then I should see 1 submit button
    Given I am on Shop Home Page
    Then I Refresh
    Then I should not see language dropdown
    And ---ROLL BACK---
    Given I am on Design Page
    And I click on advanced setting tab
    And I click on currency label included "Hide the language selector on storefront"
    And I click on submit button included "Save"
    And I click on submit button included "Publish"
    Then I should see 1 submit button
    Given I am on Shop Home Page
    Then I Refresh
    Then I should see language dropdown

  @hideStorefrontLanguageSelector-2
  Scenario: Turn off language selector in Chinese at normal shop
    Given I am on Setup Guide Page
    Then I should see Language
    When I click on Language
    And I click on ZH
    Then Language should contain "中文(繁)"
    When I click on side menu items included "網店設計"
    And I click on side submenu items included "設計"
    Then I should be redirected to Design Page
    And I click on advanced setting tab
    Then I should not see hide language label checked
    And I click on currency label included "隱藏前台商店語言選項"
    And I click on submit button included "保存"
    And I click on submit button included "出版"
    Then I should see 1 hide language label checked
    Then I should see 1 submit button
    When I click on View my shop button
    When I switch to 2 of tabs
    Then I should be redirected to Shop Home Page
    Then I should not see language dropdown
    And ---ROLL BACK---
    Given I am on Design Page
    And I click on advanced setting tab
    And I click on currency label included "Hide the language selector on storefront"
    And I click on submit button included "Save"
    And I click on submit button included "Publish"
    Then I should see 1 submit button
    Given I am on Shop Home Page
    Then I Refresh
    Then I should see language dropdown

  @fixture-layout-engine @fixture-layout-v2 @theme-kingsman @hideStorefrontLanguageSelector-3
  Scenario: Turn off language selector in English at shop with layout engine & layout_v2
    Given I am on Design Page
    When I click on advanced setting tab
    And I click on currency label included "Hide the language selector on storefront"
    And I click on submit button included "Save"
    And I click on submit button included "Publish"
    Then I should see 1 submit button
    Given I am on Shop Home Layout V Two Page
    Then I should not see language dropdown
    And ---ROLL BACK---
    Given I am on Design Page
    And I click on advanced setting tab
    And I click on currency label included "Hide the language selector on storefront"
    And I click on submit button included "Save"
    And I click on submit button included "Publish"
    Then I should see 1 submit button
    Given I am on Shop Home Layout V Two Page
    Then I should see language dropdown

  @fixture-layout-engine @fixture-layout-v2 @theme-kingsman @hideStorefrontLanguageSelector-4
  Scenario: Turn off language selector in Chinese at shop with layout engine & layout_v2
    Given I am on Setup Guide Page
    Then I should see Language
    When I click on Language
    And I click on ZH
    Then Language should contain "中文(繁)"
    And I click on side menu items included "網店設計"
    And I click on side submenu items included "設計"
    Then I should be redirected to Design Page
    And I click on advanced setting tab
    And I click on currency label included "隱藏前台商店語言選項"
    And I click on submit button included "保存"
    And I click on submit button included "出版"
    Then I should see 1 submit button
    Given I am on Shop Home Layout V Two Page
    Then I should not see language dropdown
    And ---ROLL BACK---
    Given I am on Design Page
    And I click on advanced setting tab
    And I click on currency label included "Hide the language selector on storefront"
    And I click on submit button included "Save"
    And I click on submit button included "Publish"
    Then I should see 1 submit button
    Given I am on Shop Home Layout V Two Page
    Then I should see language dropdown