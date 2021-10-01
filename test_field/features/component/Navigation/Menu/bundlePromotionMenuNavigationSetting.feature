@BaseCase @Admin @Navigation @Menu @Bundle @bundlePromotionMenuNavigationSetting
@fixture-shop @fixture-product @fixture-promotion @EAT-790
Feature: Check navigation create rules
  As a user of pm
  I want to control bundle promotion
  So that merchant create navigation by the rule

  Background:
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

  @EAT-790-5
  Scenario: can create navigation in activity, but cannot when promotion unpublish
    Given I am on Bundle Pricing Create Page
    And I fill '(dirty data) Summer Sale - in activity' to name field
    And I fill '1' to promotion value field
    And I fill '10' to discounted price field

    And I fill '18th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '18th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see row of selected product

    And I click on countinue to button
    When I click on 2nd countinue to button
    Then I click on never expires checkbox
    And I click on end date field
    Then I should see calendar table
    When I click on 3rd available date button
    And I click on done button
    And I click on 3rd countinue to button
    When I click on preview button
    Then promotion limitations start date should contain default start time
    Then promotion limitations end date should contain tomorrow end time
    Then target group should equal to 'All Customers'
    Then discount summary should equal to 'Purchase 1 items of Selected Products for NT$10'
    And I click on confirm button
    Then I should see alert
    Given I am on Menu Navigation Page
    Then I should see add button
    When I click on add button
    Then I should be redirected to Menu Navigation Add Page
    Then I should see menu item type dropdown
    And I select menu item type dropdown option included 'Promotion Pages' of menu item type dropdown
    And I select page type dropdown option included 'Summer Sale - in activity' of page type dropdown
    Then I should see add button
    When I click on add button
    Then I should be redirected to Menu Navigation Page
    Then I should see 4 row of menu list
    Then 4th row of menu list should contain 'Summer Sale - in activity'
    When I click on View my shop button
    When I switch to 2 of tabs
    Then I should be redirected to Shop Home Page
    Then I should see 4 navigation bar
    When I click on 4th navigation bar
    Then I should be redirected to Shop Promotion Page
    Then promotion name should contain 'Selected Products: Buy 1 items for NT$10'
    Given I am on Bundle Pricing Index Page
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item
    Given I am on Menu Navigation Page
    Then I should see add button
    When I click on add button
    Then I should be redirected to Menu Navigation Add Page
    Then I should see menu item type dropdown
    And I select menu item type dropdown option included 'Promotion Pages' of menu item type dropdown
    Then page type dropdown option should not contain 'Summer Sale - in activity'
    And ---ROLL BACK---
    Given I am on Menu Navigation Page
    When I click on 4th delete button
    Then I should see confirm popover
    And I click on delete checkbox
    When I click on ok button
    Then I should not see confirm popover
    Then I should see 3 row of menu list
    Given I am on Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Summer Sale - in activity'
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

  @EAT-790-6
  Scenario: can create navigation in activity coming
    Given I am on Bundle Pricing Create Page
    And I fill '(dirty data) Summer Sale - coming' to name field
    And I fill '2' to promotion value field
    And I fill '50' to discounted price field

    And I fill '18th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '18th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see row of selected product
    And I click on countinue to button
    When I click on 2nd countinue to button
    And I click on start date field
    Then I should see calendar table
    When I click on next month button
    When I click on 1st chosen month available date button
    And I click on done button
    And I click on 3rd countinue to button
    When I click on preview button
    Then promotion limitations start date should contain preset start time
    Then promotion limitations end date should contain 'Never expires'
    Then target group should equal to 'All Customers'
    Then discount summary should equal to 'Purchase 2 items of Selected Products for NT$50'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page

    Given I am on Menu Navigation Page
    Then I should see add button
    When I click on add button
    Then I should be redirected to Menu Navigation Add Page
    Then I should see menu item type dropdown
    And I select menu item type dropdown option included 'Promotion Pages' of menu item type dropdown
    And I select page type dropdown option included 'Summer Sale - coming' of page type dropdown
    Then I should see add button
    When I click on add button
    Then I should be redirected to Menu Navigation Page
    Then I should see 4 row of menu list
    Then 4th row of menu list should contain 'Summer Sale - coming'
    When I click on View my shop button
    When I switch to 2 of tabs
    Then I should be redirected to Shop Home Page
    Then I should see 4 navigation bar
    When I click on 4th navigation bar
    Then I should be redirected to Shop Promotion Page
    Then promotion valid description should contain 'Promotion Coming Soon!'
    And ---ROLL BACK---
    Given I am on Menu Navigation Page
    When I click on 4th delete button
    Then I should see confirm popover
    And I click on delete checkbox
    When I click on ok button
    Then I should not see confirm popover
    Then I should see 3 row of menu list
    Given I am on Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Summer Sale - coming'
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

  @EAT-790-7
  Scenario: cannot create navigation in activity over
    Given I am on Bundle Pricing Create Page
    And I fill '(dirty data) Summer Sale - over' to name field
    And I fill '3' to promotion value field
    And I fill '30' to discounted price field

    And I fill '18th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '18th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see row of selected product
    And I click on countinue to button
    When I click on 2nd countinue to button
    And I click on start date field
    Then I should see calendar table
    When I click on last month button
    When I click on 1st chosen month available date button
    And I click on done button
    Then I click on never expires checkbox
    And I click on end date field
    Then I should see calendar table
    When I click on today button
    And I click on done button
    And I click on 3rd countinue to button
    When I click on preview button
    Then promotion limitations start date should contain over start time
    Then promotion limitations end date should contain over end time
    Then target group should equal to 'All Customers'
    Then discount summary should equal to 'Purchase 3 items of Selected Products for NT$30'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Given I am on Menu Navigation Page
    Then I should see add button
    When I click on add button
    Then I should be redirected to Menu Navigation Add Page
    Then I should see menu item type dropdown
    And I select menu item type dropdown option included 'Promotion Pages' of menu item type dropdown
    Then page type dropdown option should not contain 'Summer Sale - over'
    And ---ROLL BACK---
    Given I am on Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Summer Sale - over'
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert