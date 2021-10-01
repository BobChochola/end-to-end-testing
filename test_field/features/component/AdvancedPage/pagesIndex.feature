@BaseCase @Admin @Storefront @AdvancedPage @pagesIndex
@fixture-product @fixture-shop
Feature: Advanced page create
  As a merchant
  I want to create an advanced page and do related operation

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

  @C5160 @EAT-481 @EAT-481-2
  Scenario: Create advanced page, edit advanced page and check not to see user guide again
    Given I am on Pages Page
    Then I should see add advanced page button
    When I click on add advanced page button
    Then I should be redirected to Advanced Select Page
    When I click on 8th template
    Then I should be redirected to Page Builder Page
    Then I should see skip the guide button
    When I click on skip the guide button
    And I click on edit category button
    Then I should see side menu
    When I click on 1st category checkbox
    Then I should see ok button
    Then I should not see loading icon
    When I click on ok button
    And I click on save button
    Then I should see view page button
    When I should see return to admin button
    Then I click on return to admin button
    When I should be redirected to Pages Page
    Given I am on Pages Page
    When I click advanced page edit button for the same order of row of page list included 'New Page'
    Then I should be redirected to Page Builder Page
    Then I should not see skip the guide button
    And I should see save button
    Then I click on return to admin button
    And I should be redirected to Pages Page
    Then I click go to page button for the same order of row of page list included 'New Page'
    And I switch to 2 of tabs
    Then I should be redirected to Shop Advanced Page
    And I should see product
    And I should see facebook content
    Then I switch to 1 of tabs
    And I should be on Pages Page
    When I click 1st last order of set home page button
    And I click go to page button for the same order of row of page list included 'New Page'
    And I switch to 3 of tabs
    Then I should be redirected to Shop Home Page
    Then I switch to 1 of tabs
    And I should be on Pages Page
    And I click on advanced page copy button
    Then I should see popover
    And I click on ok copy button
    Then I should be redirected to Page Builder Page
    And I should see save button
    Then I click on save button
    Then I should see view page button
    Then I click on return to admin button
    And I should be redirected to Pages Page
    And ---ROLL BACK---
    Given I am on Pages Page
    Then I click on 2nd set home page button
    When I click on 2nd delete button
    Then I should see popover
    And I click on confirm button
    Then I click on ok button
    When I click on delete button
    Then I should see popover
    And I click on confirm button
    Then I click on ok button