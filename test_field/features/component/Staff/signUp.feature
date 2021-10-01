@BaseCase @Admin @SSO @Staff @signUp
Feature: Admin Sign Up Feature
  As a guest
  I want to sign up an account
  So that I can have my own online shop and manage it

  @C2302
  Scenario: Use new email-password combination to sign up
    Given I am on Admin Sign Up Page
    When I fill new account email to email field
    And I fill new account password to password field
    And I fill new phone number to phone number field
    And I fill new shop name to shop name field
    And I click on sign up button
    Then I should be redirected to Sign Up Setup Page
    When I select Hong Kong dollar of currency dropdown
    And I select country dropdown option included 'Hong Kong' of country dropdown
    And I select language dropdown option included 'Chinese' of language dropdown
    And I select store type dropdown option included 'Others' of store type dropdown
    And I click on create store button
    And I should be redirected to Setup Guide Page