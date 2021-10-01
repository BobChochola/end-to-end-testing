@BaseCase @MesQuickTest @Admin @Storefront @CRM @MemberSignup @MobileSignup @shopMobileSignUp @fixture-shop @fixture-mobile-signup-p2
Feature: Shop Sign Up With Mobile
  As a shopper
  I want to use phone number to sign up an account on a store
  So I can enjoy membership features on the relevant store

  Scenario: Input nothing to mobile field and check error
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
    And ---ROLL BACK---
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
    Given I am on Customer List Page
    Then 1st customer row should contain check code phone
    And I click on 1st customer checkbox
    Then I select delete selected of bulk action dropdown
    And I should see popover
    When I click on ok button