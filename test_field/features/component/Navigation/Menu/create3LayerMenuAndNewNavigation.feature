@BaseCase @Admin @Navigation @Menu @create3LayerMenuAndNewNavigation @EAT-735
Feature: Checkout Menu Page
  As a merchant
  I want to create 3 layer menu and new menu for customers

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

  Scenario: Check 3 layer menu navigation and create new menu navigation
    Given I am on Menu Navigation Page
    Then I should see add button
    When I click on add button
    Then I should be redirected to Menu Navigation Add Page
    And I select menu item type dropdown option included 'Page' of menu item type dropdown
    And I select page type dropdown option included 'Terms and Conditions' of page type dropdown
    Then I should see add button
    When I click on add button
    Then I should be redirected to Menu Navigation Page
    Then I should see 4 row of menu list
    Then 4th row of menu list should contain 'Terms and Conditions'
    Then I should see submenu button of menu list
    When I click on submenu button of menu list
    Then I should see 1 parentmenu button of menu list
    Then 1st row of menu list should contain 'About'
    Then 2nd row of menu list should contain 'Shop All'
    When I click on submenu button of menu list
    Then I should see 2 parentmenu button of menu list
    Then 1st row of menu list should contain 'Shop All'
    When I click on submenu button of menu list
    Then I should see 3 parentmenu button of menu list
    Then 1st row of menu list should contain 'Terms and Conditions'
    Then I should see 2 third layer button of menu list
    When I click on 2nd third layer button of menu list
    Then I should not see third layer button of menu list
    Then 2nd row of submenu list should contain 'Terms and Conditions'
    When I click on 2nd parentmenu button of menu list
    Then I should see 2 parentmenu button of menu list
    Then 2nd row of menu list should contain 'Shop All'
    Then 2nd row of menu list should contain 'Terms and Conditions'
    When I click on parentmenu button of menu list
    Then 2nd row of menu list should contain 'About'
    And ---ROLL BACK---
    When I click on 4th delete button
    Then I should see confirm popover
    And I click on delete checkbox
    When I click on ok button
    Then I should not see confirm popover
    Then I should see 3 row of menu list