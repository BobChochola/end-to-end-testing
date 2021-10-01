@PostTest @PreTest @BaseCase @Storefront @CRM @MemberLogin @EmailLogin @shopLogin @fixture-shop
Feature: Shop Login Feature
  As a vistor to Shopline website
  I want to Login in the shop login page

  @C3791 @C3791a @smokeTest
  Scenario: Use correct email-password combination to login
    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page
    And ---ROLL BACK---
    Then I click on member center button
    Then I should be redirected to Shop User Profile Page
    And I click on logout button
    Then I should be redirected to Shop Home Page

  @C3791 @C3791b
  Scenario: Use wrong email-password combination to login
    Given I am on Shop Login Page
    And I fill fake email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Login Page
    And I should see error message box
    And error message box should contain "Invalid email/mobile or password."