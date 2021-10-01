@PostTest @BaseCase2 @Admin @Storefront @Message @ShopMessage @checkCustomerAndMerchantCanReceiveShopMessage
@fixture-shop @fixture-non-basket
Feature: customer/staff can receive shop message sent from each other on message center(only text)
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

    Given I am on Basic Setting Page
    And I mark the value of shop name field as variable shop name

  @C3761 @C3761-8 @EAT-1059 @EAT-1059-1 @EAT-1060 @EAT-1060-1
  Scenario: customer/staff can receive shop message sent from each other on message center(text)
    Given I am on Shop Home Page
    When I click on sign in button
    Then I should be redirected to Shop Login Page
    When I click on switch to signup tab button
    Then I should be redirected to Shop Sign Up Page
    When I fill notification email to email field
    And I fill new account password to password field
    And I fill name to name field
    And I click on agree terms checkbox
    And I click on submit button
    Then I should be redirected to Sign Up Confirmation Page
    Then I should be redirected to Shop Home Page
    When I click on message button
    Then I should see message popup
    And I fill message content to pop-up message field
    And I click on pop-up send button
    Then I should be redirected to Shop Home Page

    Given I am on Dashboard Page
    When I click on side menu items included 'Message Center'
    And I switch to 2 of tabs
    Then I should be redirected to Message Center Page
    When I input notification email to search field
    Then 1st row of message list should contain message content
    When I click on 1st row of message list
    Then I should see message area
    When I fill admin message content to message field
    And I click on send button
    Then I wait for 100 seconds for loading
    Given I am on Google Mail Page
    Then I should see account field
    When I fill account email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    Then I should see search mail list
    When I click on row of mail list included "You got messaged on"
    Then I should see mail detail
    Then mail detail should contain admin message content
    And I should see info box button
    When I click on info box button
    Then row of info box list should not contain 'bcc'
    When I click on customer reply button
    And I switch to 3 of tabs
    Then I should be redirected to Shop Message Page
    Then I should see sender message content
    Then recipient message content should contain admin message content
    Then ---ROLL BACK---
    Given I am on Customer List Page
    Then 1st customer row should contain notification email
    When I click on 1st customer checkbox
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button