@PostTest @PreTest @BaseCase @ImageService @Storefront @Admin @Addon @addonCreate-unlimited
@fixture-payment @fixture-delivery @fixture-product
Feature: Create Add-on items - unlimited date
  As a merchant
  I can create add-on item
  so that my customer can buy it with product

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

  @C3754-2 @fixture-shop
  Scenario: Create Add-on items - unlimited date
    Given I am on Addon Create Page
    And I click on tab included "Product Level Settings"
    And I should see search field
    And I fill "2nd Product for Checkout" to search field
    And I click on search product button
    Then 1st product of popover list should contain "2nd Product for Checkout"
    And I should see checkbox of product list
    And I click on 1st checkbox of product list
    And I click on confirm button
    Then I should not see checkbox of product list
    And I click on same addon price checkbox
    And I fill "20" to addon price field
    And I click on tab included "Add-on Item Info"
    Then I should see english name field
    And I fill "(dirty data) Add-on Item Unlimited" to english name field
    When I pick addon photo to addon photo selector
    Then I should see delete photo button
    And I click on unlimited checkbox
    Then I click on add button
    Then I should see alert
    Given I am on Addon Index Page
    Then 1st row of addon list should contain "Add-on Item Unlimited"
    Then I should have image addon photo for row of addon photo list
    Then 1st row of addon list should contain "∞"
    Then 1st row of addon list should contain "Never expires"
    Given I am on Shop Product Index Page
    When I input "2nd Product for Checkout" to search field
    Then 1st product of products list should contain "2nd Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then addon item should contain "Add-on Item Unlimited"
    And ---ROLL BACK---
    Given I am on Addon Index Page
    When I click select checkbox of addon list for the same order of row of addon list included 'Add-on Item Unlimited'
    When I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then addon list should not contain 'Add-on Item Unlimited'