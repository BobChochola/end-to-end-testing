@BaseCase @Admin @Storefront @CRM @EmailVerification @assertEmailVerificationSignUp @fixture-shop
Feature: Check the assertion when sign up via email
  As a shopper
  I want to shopper can sign up via email can be stored
  So I can see whether his mail is verified

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

  @EAT-465-1
  Scenario: Signup and forgot password, check Is Verified
    Given I am on Customer Settings Page
    When I check and click verification email toggle off
    Then verification email toggle should be checked
    And I click on update button
    Given I am on Basic Setting Page
    When I mark the value of shop name field as variable shop name
    Given I am on Shop Home Page
    When I click on sign in button
    Then I should be redirected to Shop Login Page
    When I click on switch to signup tab button
    When I fill new account email to signup email field
    And I fill new account password to signup password field
    And I fill name to signup name field
    And I click on agree terms checkbox
    When I click on signup submit button
    Then I should be redirected to Shop Home Page
    And I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on logout button
    Given I am on Shop Login Page
    When I click on forgot password button
    Then I should be redirected to Shop Forgot Password Page
    When I fill new account email to account field
    And I click on sent reset password button
    Then I should see success message
    Then I wait for 200 seconds for mail sent
    Given I am on Google Mail Page
    Then I should see account field
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    And I wait for 5 seconds for loading
    Then I should see search mail list
    When I click on row of mail list included 'Password Reset Request'
    Then I should see mail detail
    When I click on set my password button
    Then I switch to 2 of tabs
    Then I should be redirected to Shop Set Password Page
    When I fill password to new password field
    And I fill password to confirm password field
    And I click on change my password button
    Then I should be redirected to Shop Home Page
    And ---ROLL BACK---
    Given I am on Customer Settings Page
    And I click on verification email toggle
    When I click on update button
    Then verification email toggle should not be checked
    Given I am on Customer List Page
    Then 1st customer row should contain new account email
    When I click on customer checkbox
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button

  @EAT-465-2
  Scenario: Signup and check toast words, check Is Verified
    Given I am on Customer Settings Page
    When I check and click verification email toggle off
    Then verification email toggle should be checked
    And I click on update button
    Given I am on Basic Setting Page
    And I mark the value of shop name field as variable shop name
    Given I am on Shop Home Page
    When I click on sign in button
    Then I should be redirected to Shop Login Page
    When I click on switch to signup tab button
    When I fill new account email to signup email field
    And I fill new account password to signup password field
    And I fill name to signup name field
    And I click on agree terms checkbox
    When I click on signup submit button
    Then I should be redirected to Shop Home Page
    And I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on logout button
    Then I should be redirected to Shop Home Page
    Then I wait for 200 seconds for mail sent
    Given I am on Google Mail Page
    Then I should see account field
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    Then I should see search mail list
    Then I wait for 5 seconds for loading
    When I click on row of mail list included 'Verify your'
    Then I wait for 5 seconds for loading
    Then I should see mail detail
    Then I should see verify email now button
    When I click on verify email now button
    And I check and click proceed button
    And I switch to 2 of tabs
    Then I should be redirected to Shop Login Page
    When I fill new account email to email field
    When I fill new account password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page
    And ---ROLL BACK---
    Given I am on Customer Settings Page
    And I click on verification email toggle
    When I click on update button
    Then verification email toggle should not be checked
    Given I am on Customer List Page
    Then 1st customer row should contain new account email
    When I click on customer checkbox
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button

  @EAT-488
  Scenario: Signup and Verification is required before login
    Given I am on Customer Settings Page
    When I check and click verification email toggle off
    Then verification email toggle should be checked
    Then I should see verification required before login toggle
    And I check and click verification required before login toggle off
    Then verification required before login toggle should be checked
    And I click on update button
    Given I am on Basic Setting Page
    When I mark the value of shop name field as variable shop name
    Given I am on Shop Home Page
    When I click on sign in button
    Then I should be redirected to Shop Login Page
    When I click on switch to signup tab button
    When I fill new account email to signup email field
    And I fill new account password to signup password field
    And I fill name to signup name field
    And I click on agree terms checkbox
    When I click on signup submit button
    Then I should be redirected to Shop Confirmation Page
    Then I should see confirmation title
    Then confirmation title should contain 'Thank you for joining us! Complete the verification process to begin shopping!'
    Then confirmation message should contain 'We have sent a verification email to'
    Then I should see reset verified button
    When I click on reset verified button
    Then notify success message should contain 'Verification Email Sent'
    Given I am on Shop Login Page
    And I fill new account email to email field
    And I fill new account password to password field
    When I click on submit button
    Then I should see alert
    Then alert should contain 'Welcome back! In order to protect your account, verification is needed to log in to your account.'
    Then I wait for 150 seconds for mail sent
    Given I am on Google Mail Page
    Then I should see account field
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    And I wait for 3 seconds for loading
    Then I should see row of mail list
    Then I wait for 5 seconds for loading
    When I click on row of mail list included 'Verify your'
    Then I wait for 5 seconds for loading
    Then I should see mail detail
    When I click on verify email now button
    And I check and click proceed button
    Then I switch to 2 of tabs
    Then I should be redirected to Shop Login Page
    And I fill new account email to email field
    And I fill new account password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page
    And ---ROLL BACK---
    Given I am on Customer Settings Page
    And I click on verification required before login toggle
    And I click on verification email toggle
    When I click on update button
    Then verification email toggle should not be checked
    Given I am on Customer List Page
    Then 1st customer row should contain new account email
    When I click on customer checkbox
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button