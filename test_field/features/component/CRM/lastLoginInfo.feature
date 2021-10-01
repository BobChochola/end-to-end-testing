@BaseCase @Admin @Storefront @CRM @lastLoginInfo @fixture-shop
Feature: Last Login Info In Customer Detail
  As a merchant
  I want to know the last login time of the customer
  so that I can see it in customer index page and customer show page

  Background:
    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    And I mark the sample timeNow as variable last login timeNow
    When I click on submit button
    Then I should be redirected to Shop Home Page

    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

  @EAT-462
  Scenario: check the last login info
    Given I am on Customer List Page
    When I input email to search field
    Then I should see view button
    Then customer row included "testuser@shoplineapp.com" and same order of customer row should also contain dateNow
    Then customer row included "testuser@shoplineapp.com" and same order of customer row should also contain last login timeNow
    Then customer row included "testuser@shoplineapp.com" and same order of customer row should also contain meridiemNow
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    And I should see customer last login
    And customer last login should contain dateNow
    And customer last login should contain last login timeNow
    And customer last login should contain meridiemNow