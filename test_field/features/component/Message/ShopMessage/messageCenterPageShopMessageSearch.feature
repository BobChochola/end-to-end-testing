@BaseCase @Admin @Storefront @Message @ShopMessage @messageCenterPageShopMessageSearch @fixture-shop @fixture-non-basket @EAT-1058
Feature: Message Center Page search shop message
  As a merchant
  I want to access my message center
  So I can check customer's message

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

  @C4731 @C4731-1-1
  Scenario: customer send message then check the shop message
    Given I am on Shop Home Page
    When I click on message button
    Then I should see message popup
    When I fill comparison email to pop-up email field
    And I fill 'shop message search check' to pop-up message field
    And I click on pop-up send button
    Then I should be redirected to Shop Home Page
    Given I am on Dashboard Page
    When I click on member center side menu
    And I switch to 2 of tabs
    Then I should be redirected to Message Center Page
    When I click on tab included 'Shop Message'
    When I input comparison email to search field
    And I wait for 3 seconds for loading
    Then 1st row of message list should contain 'shop message search check'
    When I click on 1st row of message list
    Then I should see message area
    Then latest message content should contain 'shop message search check'
    When I click on tab included 'Order Message'
    When I input comparison email to search field
    Then I should not see row of message list
    Then ---ROLL BACK---
    Given I am on Customer List Page
    Then 1st customer row should contain 'usertest@gmail.com'
    When I click on 1st customer checkbox
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button