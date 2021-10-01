@PostTest @PreTest @MesQuickTest @BaseCase @Storefront @CRM @MemberLogin @MobileLogin @shopMobileLogin @fixture-shop @fixture-mobile-signup-p2
Feature: Shop Login with Mobile Account Feature
  As a shoper
  I want to Login with mobile account

  Scenario: Use email to login with mobile signup rollout
    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page

  Scenario: Use phone to login with mobile signup rollout
    Given I am on Shop Login Page
    And I fill test phone to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page