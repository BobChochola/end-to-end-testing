@BaseCase @Admin @Storefront @AdvancedPage @advancedPageH1Tag @fixture-shop
Feature: Check advanced page H1 tag
  As a merchant
  I want to use h1 tag on advanced page
  and only one tag is allowed.

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

  Scenario: I can use h1 tag on advancedPage
    Given I am on Pages Page
    When I click on add advanced page button
    Then I should be redirected to Advanced Select Page
    When I click on 1st template
    Then I should be redirected to Page Builder Page
    Then I should see skip the guide button
    When I click on skip the guide button
    When I click on menu button
    Then I should see menu
    Then I should see h1 button
    When I drag h1 button to top location
    And I check and click empty h1
    Then I should see ckeditor limit
    Then ckeditor limit should equal to '70'
    When I simply fill 'test' to text editor
    Then ckeditor limit should equal to '66'
    When I click on save and close button
    Then I should see h1 tag
    And h1 tag should equal to 'test'
    When I click on save button
    Then I should see view page button
    And I click on view page button
    When I switch to 2 of tabs
    Then I should be redirected to Shop Advanced Page
    When I should see grid h1 tag
    Then grid h1 tag should equal to 'test'
    And ---ROLL BACK---
    Given I am on Pages Page
    When I click on delete button
    Then I should see popover
    And I click on confirm button
    Then I click on ok button