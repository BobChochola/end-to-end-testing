@BaseCase @Admin @Storefront @AdvancedPage @advancedCategoryName
@fixture-shop @fixture-product
Feature: Check advanced page category name display or none
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

  @EAT-503
  Scenario: Check advanced page category name display or none - by default
    Given I am on Pages Page
    When I click on add advanced page button
    Then I should be redirected to Advanced Select Page
    When I click on 2nd template
    Then I should be redirected to Page Builder Page
    Then I should see skip the guide button
    When I click on skip the guide button
    When I click on menu button
    Then I should see product category button
    When I drag product category button to top location
    Then I should see edit category button
    Then I should see category checkbox
    When I click on category checkbox included 'Featured (Show on homepage)'
    And I wait for 3 seconds for loading
    When I click on save and close button
    Then I should see product category item
    When I click on save button
    Then I should see view page button
    And I click on view page button
    When I switch to 2 of tabs
    Then I should be redirected to Shop Advanced Page
    Then I should see category title
    When I switch to 1 of tabs
    Then I should be redirected to Page Builder Page
    When I click on edit category button
    Then I should see category checkbox
    When I click on side menu switch tab button included 'Settings'
    Then I should see side menu checkbox
    Then I click on side menu checkbox included 'Show category name'
    Then I click on save and close button
    And I click on save button
    When I switch to 2 of tabs
    Then I should be redirected to Shop Advanced Page
    Then I Refresh
    Then I should not see category title
    And ---ROLL BACK---
    Given I am on Pages Page
    When I click on delete button
    Then I should see popover
    And I click on confirm button
    Then I click on ok button
