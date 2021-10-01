@BaseCase @Admin @Storefront @CRM @EmailVerification @loginLogicAfterVerification
@fixture-shop @EAT-464
Feature: Shop Login logic after Verification
  As a customer
  I want the login status follow the devise behaviour

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

    Given I am on Basic Setting Page
    When I mark the value of shop name field as variable shop name

    Given I am on Customer Settings Page
    When I check and click verification email toggle off
    Then verification email toggle should be checked
    Then I should see verification required before login toggle
    And I check and click verification required before login toggle off
    Then verification required before login toggle should be checked
    And I click on update button

    Given I am on Shop Sign Up Page
    When I fill new account email to email field
    And I fill new account password to password field
    And I fill name to name field
    And I click on agree terms checkbox
    And I click on submit button
    Then I should see confirmation block
    Then I wait for 200 seconds for mail sent

  @EAT-464-1
  Scenario: login as A, it will redirect to homepage with sign in as A
    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page

    Given I am on Google Mail Page
    Then I should see account field
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    Then I should see row of mail list
    When I click on row of mail list included 'Verify your'
    Then I should see mail detail
    Then I should see verify email now button
    When I click on verify email now button
    When I check and click proceed button
    And I switch to 2 of tabs
    Then I should be redirected to Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    Then email field should contain "testuser@shoplineapp.com"
    Then ---ROLL BACK---
    Given I am on Customer Settings Page
    When I click on verification required before login toggle
    When I click on verification email toggle
    And I click on update button
    Then verification email toggle should not be checked
    Given I am on Customer List Page
    Then 1st customer row should contain new account email
    When I click on 1st customer checkbox
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button

  @EAT-464-2
  Scenario: if the user is not login, it will redirect to sign in page for users manual login
    Given I am on Google Mail Page
    Then I should see account field
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    Then I should see search mail list
    When I click on row of mail list included 'Verify your'
    Then I should see mail detail
    Then I should see verify email now button
    When I click on verify email now button
    When I check and click proceed button
    And I switch to 2 of tabs
    Then I should be redirected to Shop Login Page
    Then ---ROLL BACK---
    Given I am on Customer Settings Page
    When I click on verification required before login toggle
    When I click on verification email toggle
    And I click on update button
    Then verification email toggle should not be checked
    Given I am on Customer List Page
    Then 1st customer row should contain new account email
    When I click on 1st customer checkbox
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button