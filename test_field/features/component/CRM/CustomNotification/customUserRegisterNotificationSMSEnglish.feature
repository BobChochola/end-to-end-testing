@BaseCase @Admin @Storefront @CRM @CustomNotification @customUserRegisterNotificationSMSEnglish
@fixture-shop @fixture-mobile-signup-p2 @EAT-1018
Feature: Turn on sms user register notification toggle and check sms receive correctly（English)
  As a merchant
  I want to send sms user register notification
  So that custom can recieve correct sms message

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
    When I mark the value of shop name field as variable shop name

  @EAT-1018-1
  Scenario: User register send sms
    Given I am on Custom Notification Page
    Then I should see sign up notification button
    When I click on sign up notification button
    Then I should be redirected to Custom Sign Up Notification Page
    When I click on 2nd message type tab
    Then I should see sms details
    Then sms details should contain 'When customers register as a member on store, system will send this notification.'
    Then I should see send sms toggle
    When I click on send sms toggle
    Then I should see save reminder
    Then save reminder should contain 'Unsaved Changes'
    When I click on reminder button included 'SAVE'
    Then I should see alert
    Then alert should contain 'Saved Successfully'

    Given I am on Shop Sign Up Page
    When I fill name to name field
    And I select sign up selection dropdown option included "Sign up via mobile number" of sign up selection dropdown
    And I select country dropdown option included "Taiwan (台灣)" of country list dropdown
    And I fill check code phone to mobile field
    And I fill account password to password field
    And I click on agree terms checkbox
    And I click on submit button
    Then I should see mobile check session
    When I click on send me check code button
    Then I should see check code field
    When I switch to 2 of tabs
    Given I am on Every8d Page
    Then I check and click close intercom button
    When I fill every8d account to account field
    And I input every8d password to password field
    And I modify attribute value and click login button
    And I click on search sms button
    Then I should see phone search field
    When I fill check code phone to phone search field
    And I should see phone search checkbox
    And I click on phone search checkbox
    And I click on search button
    Then I should see row of mail content
    When I mark the value of row of mail content as variable message content
    Then I switch to 1 of tabs
    Then I should be redirected to Shop Sign Up Page
    Then I should see mobile check session
    Then I should see check code field
    When I input check code to check code field
    Then I should be redirected to Sign Up Confirmation Page
    Then I should be redirected to Shop Home Page
    When I switch to 2 of tabs
    Then I should be redirected to Every8d Page
    Then I should see phone search field
    And I click on search button
    Then I should see row of mail content
    Then 1st row of mail content should contain sms english signup notification
 
    And ---ROLL BACK---
    Given I am on Custom Sign Up Notification Page
    When I click on 2nd message type tab
    Then I should see send sms toggle
    When I click on send sms toggle
    Then I should see save reminder
    Then save reminder should contain 'Unsaved Changes'
    When I click on reminder button included 'SAVE'
    Then I should see alert
    Then I wait for 10 seconds for loading

    Given I am on Customer List Page
    Then 1st customer row should contain check code phone
    When I click on 1st customer checkbox
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button