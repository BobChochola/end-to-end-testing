@BaseCase @Admin @Storefront @Message @ShopMessage @Search @shopMessageFlitersStarArchive
@fixture-shop @fixture-non-basket @EAT-1057 @EAT-1064 @EAT-1065
Feature: check messager center filter/star/archive
  As a merchant
  I want to check customer's message with filter/star/archive

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

  @C4731 @C4731-2
  Scenario: check messager center filter/star/archive
    Given I am on Shop Home Page
    When I click on message button
    Then I should see message popup
    When I fill new email to pop-up email field
    And I mark the value of pop-up email field as variable customer new email
    And I fill "filters message check" to pop-up message field
    And I click on pop-up send button
    Then I should be redirected to Shop Home Page
    Given I am on Dashboard Page
    When I click on member center side menu
    And I switch to 2 of tabs
    Then I should be redirected to Message Center Page
    When I input new email name only number to search field
    When I select messages status dropdown option included 'All' of messages status dropdown
    Then 1st row of message list should contain "filters message check"
    Then 1st row of customer name should contain new email name
    When I select messages status dropdown option included 'Unread' of messages status dropdown
    And I wait for 3 seconds for loading
    And 1st row of message list should contain "filters message check"
    Then 1st row of customer name should contain new email name
    Then I should see 1 unread message dot
    When I hover over 1st row of message list
    When I hover over add star button
    When I click on add star button
    Then I should see 1 add star button on
    When I select messages status dropdown option included 'Follow up' of messages status dropdown
    And I wait for 3 seconds for loading
    And 1st row of message list should contain "filters message check"
    Then 1st row of customer name should contain new email name
    Then I should see 1 add star button on
    When I hover over add star button
    When I click on add star button on
    When I check and click add star button on
    And I Refresh
    Then I should be redirected to Message Center Page
    When I input new email name only number to search field
    Then I should not see row of message list
    When I select messages status dropdown option included 'All' of messages status dropdown
    Then 1st row of message list should contain "filters message check"
    Then I should not see add star button on
    When I hover over 1st row of message list
    And I hover over archived button
    And I click on archived button
    Then I should not see row of message list
    When I click on archived status button
    And I wait for 3 seconds for loading
    And 1st row of message list should contain "filters message check"
    Then I should see archived button on
    When I hover over archived button
    When I click on archived button on
    When I check and click archived button on
    Then I should not see row of message list
    When I click on archived status button selected
    When I select messages status dropdown option included 'All' of messages status dropdown
    Then 1st row of message list should contain "filters message check"
    Then I should not see archived button on
    And ---ROLL BACK---
    When I click on 1st row of message list
    Given I am on Customer List Page
    Then 1st customer row should contain new email
    When I click on 1st customer checkbox
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button