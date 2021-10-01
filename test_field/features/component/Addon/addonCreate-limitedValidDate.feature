@PostTest @PreTest @ImageService @BaseCase @Storefront @Admin @Addon @addonCreate-limitedValidDate
@fixture-payment @fixture-delivery @fixture-product
Feature: Create Add-on items - limited valid date
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

  @C3754-1 @fixture-shop
  Scenario: Create Add-on items - limited valid date
    Given I am on Addon Create Page
    When I click on tab included "Product Level Settings"
    Then I should see valid date field
    When I click on valid date field
    Then I should see calendar table
    When I click on today button
    And I click on done button
    And I click on invalid date field
    Then I should see calendar table
    When I click on 3rd available date button
    And I click on done button
    And I fill "2nd Product for Checkout" to search field
    And I click on search product button
    Then 1st product of popover list should contain "2nd Product for Checkout"
    And I should see checkbox of product list
    And I click on 1st checkbox of product list
    And I click on confirm button
    Then I should not see checkbox of product list
    Then I scroll down to add button
    And I fill "20" to 1st row of addon price field
    And I click on tab included "Add-on Item Info"
    Then I should see english name field
    And I fill "(dirty data) Add-on Item" to english name field
    When I pick addon photo to addon photo selector
    Then I should see delete photo button
    And I fill "20" to addon quantity field
    And I fill "Test Addon" to SKU field
    And I click on add button
    Then I should see alert
    Given I am on Addon Index Page
    Then 1st row of addon list should contain "Add-on Item"
    Then I should have image addon photo for row of addon photo list
    Then 1st row of addon list should contain "20"
    Then 1st row of addon list should contain date
    Given I am on Shop Product Index Page
    When I input "2nd Product for Checkout" to search field
    Then 1st product of products list should contain "2nd Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then addon item should contain "Add-on Item"
    Then I should see addon item image
    When I click on addon item image
    Then I should see lightbox image
    And I should have image addon photo for lightbox image
    And ---ROLL BACK---
    Given I am on Addon Index Page
    When I click select checkbox of addon list for the same order of row of addon list included 'Add-on Item'
    When I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then addon list should not contain 'Add-on Item'