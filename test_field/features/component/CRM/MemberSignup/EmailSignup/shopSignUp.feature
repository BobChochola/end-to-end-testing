@PostTest @PreTest @BaseCase @Admin @Storefront @CRM @MemberSignup @EmailSignup @shopSignUp @fixture-shop
Feature: Shop Sign Up Feature
  As a shopper
  I want to sign up an account on a store
  So I can enjoy membership features on the relevant store

  @C3792
  Scenario: Use new email-password combination to sign up
    Given I am on Shop Home Page
    When I click on sign in button
    Then I should be redirected to Shop Login Page
    When I click on switch to signup tab button
    Then I should be redirected to Shop Sign Up Page
    When I fill new account email to email field
    And I fill new account password to password field
    And I fill name to name field
    And I click on agree terms checkbox
    And I click on submit button
    Then I should be redirected to Sign Up Confirmation Page
    Then I should be redirected to Shop Home Page
    And ---ROLL BACK---
    Then I click on member center button
    Then I should be redirected to Shop User Profile Page
    And I click on logout button
    Then I should be redirected to Shop Home Page

    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    And I should see successful login
    When I check and click no thanks button

    Given I am on Customer List Page
    Then 1st customer row should contain new account email
    When I click on customer checkbox
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button