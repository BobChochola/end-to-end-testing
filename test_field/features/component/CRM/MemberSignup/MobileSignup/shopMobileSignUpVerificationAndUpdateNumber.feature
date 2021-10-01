@BaseCase @Admin @Storefront @CRM @MemberSignup @MobileSignup @Job @shopMobileSignUpVerificationAndUpdateNumber @fixture-shop @fixture-mobile-signup-p2
Feature: Sign up mobile account, update phone number and check verification
  As a shopliner
  I want my customers using mobile number sign up and verified phone number

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

  @EAT-571
  Scenario: Sign up mobile account, update phone number and check verification
    Given I am on Shop Sign Up Page
    When I fill name to name field
    When I select sign up type dropdown option included 'mobile number' of sign up type dropdown
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
    Given I am on Customer List Page
    When I click on 1st view button
    Then I should be redirected to Customer Detail Page
    Then customer mobile numbers should contain check code phone
    Then mobile verify status should contain 'Verified'
    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I select language dropdown option included '繁體中文' of language dropdown
    Then update mobile number button should equal to '更換手機號碼'
    When I select language dropdown option included 'English' of language dropdown
    Then update mobile number button should equal to 'Update mobile number'
    When I click on update mobile number button
    Then I should see mobile number field
    When I select phone country dropdown option included "Taiwan (台灣)" of country list dropdown
    When I fill '0988888889' to mobile number field
    And I click on send me check code button
    Then I should see send me check code submit button
    When I click on send me check code submit button
    When I switch to 2 of tabs
    Then I should be redirected to Every8d Page
    When I input '0988888889' to phone search field
    And I click on search button
    Then I should see row of mail content
    When I mark the value of row of mail content as variable message contents
    Then I switch to 1 of tabs
    Then I should be redirected to Shop User Profile Page
    When I input new check code to check code field
    Then I should see alert
    Then alert should contain 'Mobile number verified and it will replace phone numbers you saved before.'
    Given I am on Customer List Page
    When I click on 1st view button
    Then I should be redirected to Customer Detail Page
    Then customer mobile numbers should contain '0988888889'
    Then mobile verify status should contain 'Verified'
    And ---ROLL BACK---
    Given I am on Customer List Page
    When I click on 1st customer checkbox
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button