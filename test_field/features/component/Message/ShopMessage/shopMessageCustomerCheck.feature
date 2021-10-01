@PostTest @PreTest @BaseCase2 @Admin @Storefront @Message @ShopMessage @shopMessageCustomerCheck
@fixture-shop @fixture-non-basket
Feature: Send message from header bar
  As a customer
  I want to send and receive messages
  So I can communicate with the merchant

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

  @C3761 @C3761-6
  Scenario: Send message from header bar (customer)
    Given I am on Shop Home Page
    When I click on message button
    Then I should see message popup
    When I fill new email to pop-up email field
    And I fill message content to pop-up message field
    And I click on pop-up send button
    Then I should be redirected to Shop Home Page
    Given I am on Dashboard Page
    When I click on side menu items included 'Message Center'
    And I switch to 2 of tabs
    Then I should be redirected to Message Center Page
    When I click on 1st row of message list
    Then I should see message area
    Then latest message content should contain message content

    Then ---ROLL BACK---
    Given I am on Customer List Page
    Then 1st customer row should contain new email
    When I click on 1st customer checkbox
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button

  @C3761 @C3761-7
  Scenario: Send message from message page (customer)
    Given I am on Shop Sign Up Page
    When I fill name to name field
    And I fill new account email to email field
    And I fill new account password to password field
    And I click on agree terms checkbox
    And I click on submit button
    Then I should be redirected to Sign Up Confirmation Page
    Then I should be redirected to Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Messages'
    Then I should be redirected to Shop Message Page
    When I fill message content to message field
    And I click on send button
    Then I should see sender message content

    Then ---ROLL BACK---
    Given I am on Customer List Page
    Then 1st customer row should contain new account email
    When I click on 1st customer checkbox
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button