@PostTest @PreTest @BaseCase @Admin @Staff @SSO @adminSignUp
Feature: Admin Sign Up Feature
  As a guest
  I want to sign up an account
  So that I can have my own online shop and manage it

  Scenario: Use new email-password combination to sign up
    Given I am on Admin Login Page
    When I click on register button
    Then I should be redirected to Admin Sign Up Page