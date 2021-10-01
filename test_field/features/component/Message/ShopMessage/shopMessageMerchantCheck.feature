@BaseCase @ImageService @Admin @Storefront @Message @ShopMessage @shopMessageMerchantCheck
@fixture-shop @fixture-non-basket
Feature: Send image from message center
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

  @C3761 @C3761-2 @EAT-1059 @EAT-1059-2 @EAT-1060 @EAT-1060-2
  Scenario: Send image from message center (merchant)
    Given I am on Basic Setting Page
    And I click on advanced settings button
    Then I should see message email field
    And I fill notification mail to message email field
    When I click on basic info update button
    Then I should be redirected to Dashboard Page
    Given I am on Shop Home Page
    When I click on sign in button
    Then I should be redirected to Shop Login Page
    When I click on switch to signup tab button
    Then I should be redirected to Shop Sign Up Page
    When I fill new account email to email field
    And I mark the value of email field as variable customer new email
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
    When I click on member center side menu
    And I switch to 2 of tabs
    Then I should be redirected to Message Center Page
    When I input new email name only number to search field
    And I wait for 5 seconds for loading
    Then 1st row of message list should contain name
    Then I click on 1st row of message list
    Then I should see message area
    When I pick message photo to image selector
    And I should see delete image button
    And I click on send button
    And I should see image content
    Then I should have image message photo for image content
    Then I wait for 100 seconds for loading
    Given I am on Google Mail Page
    Then I should see account field
    When I fill merchant email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    Then I should see search mail list
    When I click on row of mail list included "You got messaged on"
    Then I should see mail detail
    Then I should see mail image
    And I should see info box button
    When I click on info box button
    Then row of info box list should not contain 'bcc'
    When I click on customer reply button
    And I switch to 3 of tabs
    Then I should be redirected to Shop Message Page
    Then I should see sender message content
    Then I should have image message photo for image content

    Then ---ROLL BACK---
    Given I am on Basic Setting Page
    And I click on advanced settings button
    Then I should see message email field
    And I fill '' to message email field
    When I click on basic info update button
    Then I should be redirected to Dashboard Page
    Given I am on Customer List Page
    Then 1st customer row should contain new account email
    When I click on 1st customer checkbox
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button

  @EAT-1059 @EAT-1059-3 @EAT-1060 @EAT-1060-3 @C16260 @C16261
  Scenario: Send image and text from message center (merchant)
    Given I am on Basic Setting Page
    And I click on advanced settings button
    Then I should see message email field
    And I fill notification mail to message email field
    When I click on basic info update button
    Then I should be redirected to Dashboard Page
    Given I am on Shop Home Page
    When I click on sign in button
    Then I should be redirected to Shop Login Page
    When I click on switch to signup tab button
    Then I should be redirected to Shop Sign Up Page
    When I fill new account email to email field
    And I mark the value of email field as variable customer new email
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
    When I click on member center side menu
    And I switch to 2 of tabs
    Then I should be redirected to Message Center Page
    When I input new email name only number to search field
    And I wait for 5 seconds for loading
    Then 1st row of message list should contain name
    Then I click on 1st row of message list
    Then I should see message area
    When I fill admin message content to message field
    When I pick message photo to image selector
    And I should see delete image button
    And I click on send button
    And I should see image content
    Then I should have image message photo for image content
    Then I wait for 100 seconds for loading
    Given I am on Google Mail Page
    Then I should see account field
    When I fill merchant email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    Then I should see search mail list
    When I click on row of mail list included "You got messaged on"
    Then I should see mail detail
    Then I should see mail image
    And I should see info box button
    When I click on info box button
    Then row of info box list should not contain 'bcc'
    When I click on customer reply button
    And I switch to 3 of tabs
    Then I should be redirected to Shop Message Page
    Then I should see sender message content
    Then recipient message content should contain admin message content
    Then I should have image message photo for image content

    Then ---ROLL BACK---
    Given I am on Basic Setting Page
    And I click on advanced settings button
    Then I should see message email field
    And I fill '' to message email field
    When I click on basic info update button
    Then I should be redirected to Dashboard Page
    Given I am on Customer List Page
    Then 1st customer row should contain new account email
    When I click on 1st customer checkbox
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button

  @C3761 @C3761-3
  Scenario: Check UNREAD message (shop owner)
    Given I am on Shop Home Page
    When I click on message button
    Then I should see message popup
    When I fill new email to pop-up email field
    And I fill message content to pop-up message field
    And I click on pop-up send button
    Then I should be redirected to Shop Home Page
    Then I wait for 30 seconds for data sync
    Given I am on Dashboard Page
    When I click on member center side menu
    And I switch to 2 of tabs
    Then I should be redirected to Message Center Page
    Then 1st row of message list should contain message content
    When I select messages status dropdown option included 'Unread' of messages status dropdown
    Then 1st row of message list should contain message content

    Then ---ROLL BACK---
    Given I am on Customer List Page
    Then 1st customer row should contain new email
    When I click on 1st customer checkbox
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button