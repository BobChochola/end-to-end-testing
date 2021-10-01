@BaseCase @Admin @Storefront @CRM @Credit @welcomeCreditLinkLayoutVTwo @theme-kingsman @fixture-shop
Feature: welcome credit link
  As a new member
  By merchant setting welcome credit, new member should receive a welcome credit email in V2.

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
    When I check and click welcome credit toggle off
    Then welcome credit toggle should be checked
    And I fill '100' to welcome credit amount field
    And I fill '1' to welcome credit validity period field
    When I click on update button
    Then I should see alert

    Given I am on Shop Home Layout V Two Page
    When I click on member center button
    Then I should be redirected to Shop Login Layout V Two Page
    Then I click on switch sign up tab
    When I fill new account email to signup email field
    And I fill new account password to signup password field
    And I fill name to signup name field
    And I click on agree terms checkbox
    And I click on submit button
    Then I should be redirected to Sign Up Confirmation Page
    Then I should be redirected to Shop Home Layout V Two Page
    Then I wait for 30 seconds for mail sent

    Given I am on Basic Setting Page
    And I mark the value of shop name field as variable shop name

  @EAT-944 @EAT-944-1
  Scenario:welcome credit link. On mail page, click on get credit with shop login.
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
    Then I should see mail detail
    When I click on claim gift button
    When I switch to 2 of tabs
    Then I should be redirected to Shop User Credit Layout V Two Page
    Then I click on tab included 'Store Credits'
    Then 1st row of credit list should contain '+ 100'
    Then 1st row of credit list should contain 'Welcome Credit'
    When I click on tab included 'Profile'
    Then I should be redirected to Shop User Profile Layout V Two Page

    And ---ROLL BACK---
    Given I am on Customer List Page
    Then 1st customer row should contain new account email
    And I click on 1st row of select checkbox
    And I select delete selected of bulk action dropdown
    And I click on ok button
    Then I should be redirected to Customer List Page
    Given I am on Store Credit Page
    Then welcome credit toggle should be checked
    When I fill "0" to welcome credit amount field
    When I fill "0" to welcome credit validity period field
    When I check and click welcome credit toggle on
    Then welcome credit toggle should not be checked
    When I click on update button
    Then I should see alert

  @EAT-944 @EAT-944-2 
  Scenario:welcome credit link. On mail page, click on get credit without shop login.
    Given I am on Shop Home Layout V Two Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Layout V Two Page
    When I click on logout button
    Then I should be redirected to Shop Home Layout V Two Page
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
    Then I should see mail detail
    When I click on claim gift button
    When I switch to 2 of tabs
    Then I should be redirected to Shop Login Layout V Two Page

    Given I am on Shop Home Layout V Two Page
    Then I open new tab and redirect to profile message page
    When I switch to 3 of tabs
    Then I should be redirected to Shop Login Layout V Two Page

    Given I am on Shop Home Layout V Two Page
    Then I open new tab and redirect to profile order page
    When I switch to 4 of tabs
    Then I should be redirected to Shop Login Layout V Two Page

    And ---ROLL BACK---
    Given I am on Customer List Page
    Then 1st customer row should contain new account email
    And I click on 1st row of select checkbox
    And I select delete selected of bulk action dropdown
    And I click on ok button
    Then I should be redirected to Customer List Page
    Given I am on Store Credit Page
    Then welcome credit toggle should be checked
    When I fill "0" to welcome credit amount field
    When I fill "0" to welcome credit validity period field
    When I check and click welcome credit toggle on
    Then welcome credit toggle should not be checked
    When I click on update button
    Then I should see alert