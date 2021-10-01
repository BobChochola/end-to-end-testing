@BaseCase @Storefront @CRM @MemberSignup @MobileSignup @shopMobileSignUpAssertion @fixture-shop @fixture-mobile-signup-p2
Feature: Shop Sign Up With Mobile
  As a shopper
  I want to use phone number to sign up an account on a store
  So I can enjoy membership features on the relevant store

  Scenario: Input nothing to mobile field and check error
    Given I am on Shop Sign Up Page
    When I fill name to name field
    And I select sign up selection dropdown option included "Sign up via mobile number" of sign up selection dropdown
    And I fill new account password to password field
    And I click on agree terms checkbox
    And I click on submit button
    Then I should see field error
    Then field error should contain "Mobile Number is required"

  Scenario: Input nothing to mobile field and check error
    Given I am on Shop Sign Up Page
    When I fill name to name field
    And I select sign up selection dropdown option included "Sign up via mobile number" of sign up selection dropdown
    And I select country dropdown option included "Taiwan (台灣)" of country list dropdown
    And I fill phone to mobile field
    And I fill account password to password field
    And I click on agree terms checkbox
    And I click on submit button
    Then I should see mobile check session
    Then mobile check session should contain verify phone
    When I click on send me check code button
    Then I should see check code field
    When I input "1234" to check code field
    Then I should see error alert
    Then error alert should equal to "Wrong check code! Please check it or click resend check code."