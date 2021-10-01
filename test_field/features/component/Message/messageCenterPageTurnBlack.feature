@BaseCase @Admin @Storefront @Message @messageCenterPageTurnBlack
@fixture-shop @fixture-non-basket
Feature: Message Center filters if contains has '<>'
  As a merchant
  I want to send message to my customer

  Background:
    Given I am on Admin Login Page
    When I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

  Scenario: Message Center filters if contains has '<>'
    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Messages'
    Then I should be redirected to Shop Message Page
    And I fill special shop message content to message field
    When I click on send button
    Then I should see sender message content
    Then latest sender message content should contain special shop message content
    Given I am on Dashboard Page
    When I click on side menu items included 'Message Center'
    And I switch to 2 of tabs
    Then I should be redirected to Message Center Page
    When I click on 1st row of message list
    Then I should see message area
    Then latest message content should contain special shop message content
    And I fill special admin message content to message field
    When I click on send button
    Then latest message content should contain special admin message content
    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Messages'
    Then I should be redirected to Shop Message Page
    Then I should see recipient message content
    Then latest recipient message content should contain special admin message content