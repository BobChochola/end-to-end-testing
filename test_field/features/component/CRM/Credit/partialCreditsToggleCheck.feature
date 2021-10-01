@BaseCase @Admin @CRM @Credit @partialCreditsToggleCheck @EAT-485
Feature: Check apply partial credits wording
  As a merchant
  I want to customer checkout not apply partial credit

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

  @EAT-485-1
  Scenario: Check apply partial credits wording
    Given I am on Store Credit Page
    Then I should see apply partial credits toggle on
    Then I should see apply partial credits section
    Then apply partial credits section should contain 'Turn ON this function: Customers can choose to apply partial credits or not to apply credits during checkout.'
    Then apply partial credits section should contain 'Turn OFF this function: Customers must apply the maximum credit usage of the order and cannot choose to apply partial credits.'
    When I select language dropdown option included '中文' of language dropdown
    Then apply partial credits section should contain '啟用功能：消費者可選擇折抵購物金金額使用上限內的任意金額，或選擇不折抵購物金。'
    Then apply partial credits section should contain '關閉功能：訂單自動折抵購物金金額使用最上限，消費者不得選擇折抵購物金金額。'
