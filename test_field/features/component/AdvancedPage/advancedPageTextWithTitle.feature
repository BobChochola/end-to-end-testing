@BaseCase @Admin @Storefront @AdvancedPage @advancedPageTextWithTitle @fixture-shop
Feature: Check advanced page text with title tag
  As a merchant
  I want to use htext with title on advanced page

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

  Scenario: I can use text with title on advancedPage
    Given I am on Pages Page
    When I click on add advanced page button
    Then I should be redirected to Advanced Select Page
    When I click on 2nd template
    Then I should be redirected to Page Builder Page
    Then I should see skip the guide button
    When I click on skip the guide button
    When I click on menu button
    Then I should see menu
    Then I should see text with title button
    When I drag text with title button to top location
    Then I check and click empty text editor
    Then I should see text editor
    And I simply fill 'test title' to text editor
    And I click on save and close button
    Then I should see text title
    Then text title should equal to 'test title'
    When I click on text description
    And I simply fill 'test description' to text editor
    And I click on save and close button
    Then I should see text description
    Then text description should equal to 'test description'
    When I click on save button
    Then I should see view page button
    And I click on view page button
    When I switch to 2 of tabs
    Then I should be redirected to Shop Advanced Page
    Then I should see text title
    Then text title should equal to 'test title'
    Then I should see text description
    Then text description should equal to 'test description'
    And ---ROLL BACK---
    Given I am on Pages Page
    When I click on delete button
    Then I should see popover
    And I click on confirm button
    Then I click on ok button