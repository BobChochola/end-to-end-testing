@BaseCase @Admin @Design @AdvancedSetting @Storefront @hideSupportedShopLanguage @fixture-shop @fixture-lang-fr
Feature: Hide Supported Shop Language
  As a merchant
  I want to hide the language
  So that I can control language displaying on shop

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click no thanks button

  @EAT-1221 @EAT-1221-2
  Scenario: Hide Supported Shop Language
    Given I am on Basic Setting Page
    And supported shop language area should contain 'To hide specific languages, go to Online Store Design > Design > Advanced Settings > "Hide language selector on storefront".'
    When I click on go to design page link

    Given I am on Design Page
    Then I should be redirected to Design Page
    When I click on advanced setting tab
    Then hide language checkbox should not be checked
    When I click on hide specific language button
    Then I should see popover
    And confirm button should be disabled
    And I click language checkbox for the same order of supported language included 'Traditional Chinese'
    When I click on confirm button
    Then hidden language should contain 'Traditional Chinese'
    And I click on save button
    Then I wait for 5 seconds loading
    And I click on publish button
    Then I wait for 5 seconds loading
    Then hide language checkbox should not be checked

    Given I am on Shop Home Page
    Then I should not see language dropdown
    Then cart button should not contain '購物車'

    Given I am on Design Page
    When I click on advanced setting tab
    Then I should see hide specific language button
    When I click on hide language checkbox
    Then hide specific language button should be disabled
    And I click on save button
    Then I wait for 5 seconds loading
    And I click on publish button
    Then I wait for 5 seconds loading
    Then hide language checkbox should be checked
    Then hide specific language button should be disabled

    Given I am on Shop Home Page
    Then I should not see language dropdown
    And ---ROLL BACK---
    Given I am on Design Page
    When I click on advanced setting tab
    And I click on hide language checkbox
    When I click on hide specific language button
    Then I should see popover
    And I click language checkbox for the same order of supported language included 'Traditional Chinese'
    When I click on confirm button
    When I click on save button
    Then I wait for 5 seconds loading
    And I click on publish button
    Then I wait for 5 seconds loading
    Then I should not see hidden language