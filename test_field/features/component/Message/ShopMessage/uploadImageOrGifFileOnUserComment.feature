@BaseCase @ImageService @Admin @Storefront @Message @ShopMessage @uploadImageOrGifFileOnUserComment @fixture-shop @fixture-non-basket
Feature: Check Upload Image Or Gif Status Of User Profile
  As a customer
  I want to upload images to merchant of message and order
  So that I can successful upload images

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

    Given I am on Shop Home Page
    When I click on sign in button
    Then I should be redirected to Shop Login Page
    When I click on switch to signup tab button
    Then I fill new account email to email field
    Then I fill new account password to password field
    Then I fill name to signup name field
    And I click on agree terms checkbox
    And I click on signup submit button
    Then I should be redirected to Sign Up Confirmation Page
    Then I should be redirected to Shop Home Page

  Scenario: Upload Image Or Gif On User Porfile
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Messages'
    Then I should be redirected to Shop Message Page
    When I pick message photo of gif to image selector
    Then I wait for 5 seconds for image upload
    And I should see delete button
    And I click on send button
    Then I wait for 5 seconds for image upload
    Then I should see row of chat list gif
    And I should have image message photo of gif for row of chat list gif
    Then I Refresh
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Messages'
    Then I should be redirected to Shop Message Page
    When I pick message photo of jpg to image selector
    And I should see delete button
    And I click on send button
    Then I wait for 5 seconds for image upload
    Then I should see row of chat list jpg
    And I should have image message photo of jpg for row of chat list jpg

    Given I am on Dashboard Page
    When I click on side menu items included 'Message Center'
    And I switch to 2 of tabs
    Then I should be redirected to Message Center Page
    Then I should see row of message list
    When I click on 1st row of message list
    Then I should see message area
    And I should have image message photo of jpg for image content of jpg
    And I should have image message photo of gif for image content of gif
    Then ---ROLL BACK---
    Given I am on Customer List Page
    Then 1st customer row should contain new account email
    When I click on 1st customer checkbox
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button