@BaseCase @Admin @Storefront @CRM @Credit @creditAssignAndCheckMail @fixture-shop
Feature: Assign store credit and check email
  As a merchant
  I want to manual assign store credit to customers
  So that I can assign the credit in Customer Show Page

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
    And I mark the value of shop name field as variable shop name

  @C3867
  Scenario: Customer - Assign store credit and check email
    Given I am on Customer List Page
    When I input email to search field
    Then I should see view button
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    When I click on assign credits button
    Then I should see popover
    When I fill "20" to amount of credit field
    And I fill "1" to validity period field
    And I fill "Testing amount of credits" to reason field
    And I click on credit save button
    Then I should see row of credit list
    Then row of credit list should contain "+ 20"
    Then row of credit list should contain "Testing amount of credits"
    Then I wait for 200 seconds for mail sent

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
    When I click on row of mail list included "You have been given credits"
    Then mail detail should contain "20 credits"
    And I should see info box button
    When I click on info box button
    Then row of info box list should not contain 'bcc'
    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    And I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on tab included 'Store Credits'
    Then I should be redirected to Shop User Credit Page
    Then row of credit list should contain "+ 20"
    Then row of credit list should contain "Testing amount of credits"
    And ---ROLL BACK---
    Given I am on Customer List Page
    When I input email to search field
    And I should see view button
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    When I click on assign credits button
    Then I should see popover
    When I fill "-20" to amount of credit field
    And I fill "Rolling back amount of credits" to reason field
    And I click on credit save button
    Then I should see row of credit list