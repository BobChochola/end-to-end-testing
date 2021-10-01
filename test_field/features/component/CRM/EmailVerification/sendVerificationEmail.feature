@BaseCase @Admin @Storefront @CRM @EmailVerification @sendVerificationEmail @fixture-shop
Feature: Send/Resend Verification Email when add/edit email in Member Center
  As a merchant
  I want to send the verification email when add a new email address in Member Centre

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

    Given I am on Basic Setting Page
    When I mark the value of shop name field as variable shop name

  @EAT-490 @EAT-490-1
  Scenario: Send/Resend Verification Email when add/edit email in Member Center(English)
    Given I am on Shop Sign Up Page
    When I fill new account email to email field
    And I mark the value of email field as variable random account email
    And I fill new account password to password field
    And I fill name to name field
    And I click on agree terms checkbox
    When I click on submit button
    Then I should be redirected to Shop Home Page

    Given I am on Customer Settings Page
    Then I should see verification email toggle
    When I check and click verification email toggle off
    Then verification email toggle should be checked
    When I check and click verification required before login toggle off
    Then verification required before login toggle should be checked
    And I click on update button
    Then verification email toggle should be checked
    Then verification required before login toggle should be checked

    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    Then I should not see verification reminder

    When I fill "testuser@shoplineapp.com" to email field
    And I click on save button
    Then email verification error should contain verification error message

    When I fill temp email to email field
    And I click on save button
    Then I should see email verification popup
    Then email verification popup should contain temp email
    Then email verification popup should contain "Please verify the email now and new email address will be updated. If you did not receive it, please input your email again and save"
    And I click on email verification button
    When I click on logout button
    Then I should be redirected to Shop Home Page
    Given I am on Shop Home Page
    When I click on sign in button
    Then I should be redirected to Shop Login Page
    And I fill random account email to email field
    And I fill new account password to password field
    And I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    Then I wait for 250 seconds for mail sent
    Given I am on Google Mail Page
    When I fill merchant email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    And I input shop name to search field
    Then I should see row of mail list
    When I click on row of mail list included 'account and starting shopping now'
    Then I should see mail detail
    Then I should see verify email now button
    When I click on verify email now button
    Then I quickly switch to 2 of tabs
    Then I should be redirected to Shop Home Page
    Then alert should contain "Congratulations! Verification Completed!"
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    Then verify status should contain 'Verified'
    And ---ROLL BACK---
    Given I am on Customer Settings Page
    And I click on verification required before login toggle
    And I click on verification email toggle
    When I click on update button
    Then verification email toggle should not be checked

  @EAT-490 @EAT-490-2
  Scenario: Send/Resend Verification Email when add/edit email in Member Center(CN)
    Given I am on Shop Sign Up Page
    When I fill new account email to email field
    And I fill new account password to password field
    And I mark the value of email field as variable random account email
    And I fill name to name field
    And I click on agree terms checkbox
    When I click on submit button
    Then I should be redirected to Shop Home Page

    Given I am on Customer Settings Page
    Then I should see verification email toggle
    When I check and click verification email toggle off
    Then verification email toggle should be checked
    When I check and click verification required before login toggle off
    Then verification required before login toggle should be checked
    And I click on update button
    Then verification email toggle should be checked
    Then verification required before login toggle should be checked

    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I select language dropdown option included '中文' of language dropdown
    Then I should not see verification reminder

    When I fill "testuser@shoplineapp.com" to email field
    And I click on save button
    Then email verification error should contain "電郵 已被選用，請重新輸入。"

    When I fill temp email to email field
    And I click on save button
    Then I should see email verification popup
    Then email verification popup should contain temp email
    Then email verification popup should contain "請立即完成收信驗證，即可更新電郵！若沒收到，請再次更改電郵並儲存。"
    And I click on email verification button
    When I click on logout button
    Then I should be redirected to Shop Home Page
    Given I am on Shop Home Page
    When I click on sign in button
    Then I should be redirected to Shop Login Page
    And I fill random account email to email field
    And I fill new account password to password field
    And I click on submit button
    Then I should be redirected to Shop Home Page
    Then I wait for 180 seconds for mail sent
    Given I am on Google Mail Page
    When I fill merchant email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    And I input shop name to search field
    Then I should see row of mail list
    When I click on row of mail list included '立即驗證'
    Then I should see mail detail
    Then I should see verify email now button
    When I click on verify email now button
    Then I quickly switch to 2 of tabs
    Then I should be redirected to Shop Home Page
    Then I should see alert
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I select language dropdown option included '中文' of language dropdown
    Then verify status should contain '驗證完成'
    And ---ROLL BACK---
    Given I am on Customer Settings Page
    And I click on verification required before login toggle
    And I click on verification email toggle
    When I click on update button
    Then verification email toggle should not be checked