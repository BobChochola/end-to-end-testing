@BaseCase @Admin @Storefront @CRM @Credit @welcomeCreditAssignAndCheckMail @fixture-shop
Feature: Store Credit Setting Update welcome credit
  As a merchant
  I want to set the Welcome Credit for customers
  So that I can set it in Store Credits Page

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

    Given I am on Store Credit Page
    Then welcome credit toggle should not be checked
    When I click on welcome credit toggle
    Then welcome credit toggle should be checked
    And I fill '100' to welcome credit amount field
    And I fill '1' to welcome credit validity period field
    When I click on update button
    Then I should see alert

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
    Then I wait for 30 seconds for mail sent
    
    Given I am on Basic Setting Page
    And I mark the value of shop name field as variable shop name

  @C3869 @EAT-965 @EAT-965-1
  Scenario: Assign welcome credit. On mail page, click on get credit with shop login.
    Given I am on Google Mail Page
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    Then I should see row of mail list
    And I click on row of mail list included 'Get your first welcome gift'
    Then mail detail should contain "100 credits"
    Then I should see info box button
    When I click on info box button
    Then row of info box list should not contain 'bcc'
    When I click on claim gift button
    When I switch to 2 of tabs
    Then I should be redirected to Shop User Credit Page
    Then 1st row of credit list should contain '+ 100'
    Then 1st row of credit list should contain dateTomorrow with slash
    Then 1st row of credit list should contain 'Welcome Credit'

    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on tab included 'Store Credits'
    Then I should be redirected to Shop User Credit Page
    Then 1st row of credit list should contain "Welcome Credit"
    Then 1st row of credit list should contain dateTomorrow with slash
    Then 1st row of credit list should contain "+ 100"
    Given I am on Customer List Page
    When I click on view button
    Then I should be redirected to Customer Detail Page
    When I scroll down to 1st row of credit list
    Then 1st row of credit list should contain "+ 100"
    Then 1st row of credit list should contain "Welcome Credit"
    Then 1st row of credit list should contain dateTomorrow with hyphen
    Then I wait for 100 seconds for mail sent

    And ---ROLL BACK---
    Given I am on Customer List Page
    And I click on 1st row of select checkbox
    And I select delete selected of bulk action dropdown
    And I click on ok button
    Then I should be redirected to Customer List Page
    Given I am on Store Credit Page
    Then welcome credit toggle should be checked
    When I fill "0" to welcome credit amount field
    When I fill "0" to welcome credit validity period field
    When I click on welcome credit toggle
    Then welcome credit toggle should not be checked
    When I click on update button
    Then I should see alert

  @EAT-965 @EAT-965-2
  Scenario: welcome credit link. On mail page, click on get credit without shop login.
    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on logout button
    Then I should be redirected to Shop Home Page

    Given I am on Google Mail Page
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    Then I should see row of mail list
    And I click on row of mail list included 'Get your first welcome gift'
    Then mail detail should contain "100 credits"
    Then I should see info box button
    When I click on info box button
    Then row of info box list should not contain 'bcc'
    When I click on claim gift button
    When I switch to 2 of tabs
    Then I should be redirected to Shop Login Page

    And ---ROLL BACK---
    Given I am on Customer List Page
    And I click on 1st row of select checkbox
    And I select delete selected of bulk action dropdown
    And I click on ok button
    Then I should be redirected to Customer List Page
    Given I am on Store Credit Page
    Then welcome credit toggle should be checked
    When I fill "0" to welcome credit amount field
    When I fill "0" to welcome credit validity period field
    When I click on welcome credit toggle
    Then welcome credit toggle should not be checked
    When I click on update button
    Then I should see alert