@PostTest @PreTest @BaseCase @Admin @Staff @SSO @adminLogin
Feature: Admin Login Feature
  As a user of Shopline
  I want to Login in the login page
  So that I can access my admin panel to manage my shop

  @C2091a
  Scenario: Use correct email-password combination to login
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    When I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

  @C2091b
  Scenario: Use wrong email-password combination to login
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill wrong account password to password field
    When I click on login button
    Then I should be redirected to Admin Login Page
    And I should see error message box
    And error message box should contain "Invalid email or password."

