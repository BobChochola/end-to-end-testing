@BaseCase2 @Admin @Storefront @CRM @MemberSignup @FacebookSignup @shopFBSignUpEmailVerification @fixture-shop @fixture-facebook
Feature: Sign up fb account and check email verification
  As a merchant
  I want to use Facebook to login in the shop login page

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button
    Given I am on Customer Settings Page
    Then I should see fb app ID field
    Then I mark the value of fb app ID field as variable fb ID

    # 可以不用每次都重新取新的secret，等有需要的時候在再解開
    # Given I am on Facebook Page
    # Then I wait for 5 seconds for uploading
    # Then I should see email field
    # Then I should see password field
    # When I fill 'testuser@shoplineapp.com' to email field
    # And I input fb testuser password to password field
    # And I check and click yes button
    # Then I should see message button

    # Given I am on Facebook Developer Page
    # Then app secret button should contain "Show"
    # And I click on app secret button
    # Then app secret button should contain "Reset"
    # Then I click on app secret button
    # Then I should see popover
    # And I fill fb password to password field
    # And I click on submit button
    # Then I should see popover
    # Then popover should contain "Reset App Secret?"
    # Then I click on submit button included "Reset"
    # And I wait for 5 seconds for reset
    # Then I mark the value of secret field as variable secret code
    # Then I click on save changes button
    # Then secret field should contain "●●●●●●●●"
    # When I hover over user setting image
    # When I click on user setting option included 'Log Out'

    Given I am on Customer Settings Page
    # Then I should see fb app secret field
    # And I fill random code to fb app secret field
    # Then I scroll down to update button
    # And I click on update button
    # Then fb app secret field should contain random code
    When I check and click verification email toggle off
    When I check and click verification required before login toggle on
    And I click on update button
    Then verification email toggle should be checked

  @EAT-489 @EAT-489-1
  Scenario: Sign up fb account and check email verification
    Given I am on Shop Login Page
    When I click on switch to signup tab button
    Then I should be redirected to Shop Sign Up Page
    When I click on register with facebook button
    Then I should be redirected to Facebook Page
    When I fill fb login email to email field
    And I input fb login password to password field
    Then I check and click confirm button
    Then I should be redirected to Sign Up Confirmation Page
    Then I should be redirected to Shop Home Page
    Given I am on Customer List Page
    Then 1st customer row should contain fb login email
    And ---ROLL BACK---
    Given I am on Customer Settings Page
    When I click on verification email toggle
    And I click on update button
    Then verification email toggle should not be checked
    Given I am on Customer List Page
    When I input fb login email to search field
    When I click on 1st customer checkbox
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button