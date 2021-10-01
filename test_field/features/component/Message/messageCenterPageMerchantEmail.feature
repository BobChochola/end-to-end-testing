@PostTest @PreTest @BaseCase2 @Admin @Storefront @Message @ShopMessage @Admin @messageCenterPageMerchantEmail
@fixture-shop @fixture-non-basket
Feature: Message Center Page Check email notification
  As a merchant
  I want to access my message center
  So manage my messages with my clients

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

    Given I am on Basic Setting Page
    And I mark the value of shop name field as variable shop name
    And I click on advanced settings button
    Then I should see message email field
    And I fill notification mail to message email field
    When I click on basic info update button
    Then I should be redirected to Dashboard Page
    
    Given I am on Shop Home Page
    When I click on message button
    Then I should see message popup
    When I fill new email to pop-up email field
    And I fill message content to pop-up message field
    And I click on pop-up send button
    Then I should be redirected to Shop Home Page
    Then I wait for 200 seconds for waiting mail

  @C3761 @C3761-5
  Scenario: Check email notification (shop owner)
    Given I am on Google Mail Page
    When I fill account email to account field
    And I click on identifier next button
    And I wait for 5 seconds for loading
    When I input account password to password field
    And I check and click password next button
    And I wait for 5 seconds for loading
    Then I should see search field
    When I input shop name to search field
    Then I should see search mail list
    When I click on row of mail list included "You got messaged on"
    Then I should see mail detail
    And I should see info box button
    When I click on info box button
    Then row of info box list should not contain 'bcc'
    When I click on info box button
    When I click on message center merchant reply button
    And I switch to 2 of tabs
    Then I should be redirected to Message Center Page
    Then 1st row of message list should contain message content
    And ---ROLL BACK---
    Given I am on Basic Setting Page
    And I click on advanced settings button
    Then I should see message email field
    And I fill '' to message email field
    When I click on basic info update button
    Then I should be redirected to Dashboard Page

    Given I am on Customer List Page
    Then 1st customer row should contain new email
    When I click on 1st customer checkbox
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button