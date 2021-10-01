@PostTest @PreTest @BaseCase @Storefront @CRM @MemberSignup @EmailSignup @shopSignUpAssert @fixture-shop
Feature: Sign Up Feature
  As a shopper
  I want to sign up an account on a store
  If email is re-registration, I will see the error message

  @C7995
  Scenario: Use unique password combination to sign up
    Given I am on Shop Sign Up Page
    When I fill name to name field
    Then I fill account email to email field
    And I fill wrong password to password field
    And I click on agree terms checkbox
    And I click on submit button
    Then I should see error alert
    And error alert should contain "email is already taken"
    Given I am on Shop Login Page
    Then I fill email to email field
    And I fill wrong password to password field
    And I click on submit button
    Then I should see error message box
    And error message box should contain "Invalid password 1 times, please try again.Your account will be locked for 30 minutes due to 5 invalid login attempts."