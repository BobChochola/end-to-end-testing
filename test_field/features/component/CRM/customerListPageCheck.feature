@BaseCase @Admin @CRM @customerListPageCheck @fixture-shop
Feature: Customer List Page Check Feature
  As a merchant
  I want view my customer list
  So I can manage their messages and view their details

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

  @C3879 @C3879-2
  Scenario: Customer List - Click View
    Given I am on Customer List Page
    When I input email to search field
    Then I should see view button
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page

  @Storefront @C3879 @C3879-3 @fixture-non-basket
  Scenario: Customer List - Check message button after read message
    Given I am on Shop Home Page
    When I click on message button
    Then I should see message popup
    When I fill new email to pop-up email field
    And I fill message content to pop-up message field
    And I click on pop-up send button
    Then I should be redirected to Shop Home Page
    Then I wait for 20 seconds for waiting mail
    Given I am on Customer List Page
    Then I should see first customer row message button notification
    When I click on first customer row message button
    Then I should be redirected to Message Center Page
    Then I should see message area
    When I fill "Welcom to my store" to message field
    And I click on send button
    Given I am on Customer List Page
    And I Refresh
    Then I should not see first customer row message button notification