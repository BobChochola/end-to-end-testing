@BaseCase @Admin @Storefront @Promotion @BundleGroup @Navigation @Menu @canNotSelectExpiredBundleGroupPricingOnMenuNavigation
@fixture-product @fixture-shop @fixture-promotion
Feature: menu navigation dropdown can not select expired bundle group pricing
  As a merchant
  When I can not select expired bundle group pricing on menu navigation page

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

  @EAT-997 @EAT-997-3
  Scenario: Set expired bundle group pricing menu navigation and check on storefront
    Given I am on Bundle Pricing Index Page
    Then 1st tab should contain 'Bundle Pricing'
    Then 2nd tab should contain 'Bundle Group Pricing'
    When I select add promotion dropdown option included 'Bundle Group' of add promotion dropdown
    Then I should be redirected to Bundle Group Create Page
    And I fill '(dirty data) Buy 2 in Group A & 1 in Group B for $49' to name field
    When I fill '2' to group a field
    When I fill '1' to group b field
    When I fill '49' to price field
    Then discount summary should contain 'Purchase 2 items of Selected Products in Group A and 1 items of Selected Products in Group B for NT$49'
    And I should see group a tab
    Then select product button should contain 'Select Products in Group A'
    When I click on select product button
    Then I should see select product popup
    Then I input '6th Product for Checkout' to search field
    Then 1st product list should contain '6th Product for Checkout'
    Then I click on 1st checkbox of product list
    Then I input '10th Product for Checkout' to search field
    Then 1st product list should contain '10th Product for Checkout'
    Then I click on 1st checkbox of product list
    Then I input '12th Product for Checkout' to search field
    Then 1st product list should contain '12th Product for Checkout'
    Then I click on 1st checkbox of product list
    Then I input '13th Product for Checkout' to search field
    Then 1st product list should contain '13th Product for Checkout'
    Then I click on 1st checkbox of product list
    When I click on popup confirm button
    Then selected products should contain '6th Product for Checkout'
    Then selected products should contain '10th Product for Checkout'
    Then selected products should contain '12th Product for Checkout'
    Then selected products should contain '13th Product for Checkout'
    When I click on group b tab
    Then select product button should contain 'Select Products in Group B'
    When I click on select product button
    Then I should see select product popup
    When I input '17th Product for Checkout' to search field
    Then 1st product list should contain '17th Product for Checkout'
    Then I click on 1st checkbox of product list
    When I input '18th Product for Checkout' to search field
    Then 1st product list should contain '18th Product for Checkout'
    Then I click on 1st checkbox of product list
    When I click on popup confirm button
    Then selected products should contain '17th Product for Checkout'
    Then selected products should contain '18th Product for Checkout'
    When I click on 1st countinue to button
    When I click on 2nd countinue to button
    When I click on start date field
    Then I should see calendar table
    And I click on today button
    And I click on decrement hours button
    And I click on decrement hours button
    When I click on done button
    When I click on never expires checkbox
    Then I click on end date field
    Then I should see calendar table
    And I click on today button
    And I click on decrement hours button
    When I click on done button
    When I click on 3rd countinue to button
    Then I scroll down to preview button
    When I click on preview button
    When I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page

    Given I am on Menu Navigation Add Page
    Then I select menu item type dropdown option included 'Promotion Pages' of menu item type dropdown
    Then I click on page type dropdown
    Then page type dropdown option should not contain 'Buy 2 in Group A & 1 in Group B for $49'

    And ---ROLL BACK---
    Given I am on Bundle Pricing Index Page
    And I click on tab included 'Bundle Group Pricing'
    Then I click on 1st row of select checkbox list
    When I select delete of bulk actions dropdown
    Then I should see confirmation popover
    Then I click on delete checkbox
    When I click on confirm delete button
    Then promotions should contain 'No promotions yet'