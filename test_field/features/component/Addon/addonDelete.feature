@BaseCase @Storefront @Admin @Addon @addonDelete @fixture-product
Feature: delete Add-on items
  As a merchant
  I can update add-on item and edit it
  so that my customer can see newest info


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

  @C3755-7 @fixture-shop
  Scenario: delete addon item
    Given I am on Addon Create Page
    And I fill "(dirty data) Add-on Item" to english name field
    When I pick addon photo to addon photo selector
    And I should see delete photo button
    And I fill "200" to addon quantity field
    Then I scroll down to breadcrumb
    And I click on tab included "Product Level Settings"
    Then I should see search field
    And I fill "10th Product for Checkout" to search field
    And I click on search product button
    Then 1st product of popover list should contain "10th Product for Checkout"
    And I should see checkbox of product list
    And I click on 1st checkbox of product list
    And I click on confirm button
    Then I should not see checkbox of product list
    Then I scroll down to add button
    Then I should see same addon price checkbox
    And I click on same addon price checkbox
    And I fill "10" to addon price field
    And I click on add button
    Then I should be redirected to Addon Index Page
    Then I should see alert
    When I click select checkbox of addon list for the same order of row of addon list included 'Add-on Item'
    When I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should not see confirmation popover
    When I Refresh
    Then row of addon list should not contain "Add-on Item"
    Given I am on Shop Product Index Page
    When I input "10th Product for Checkout" to search field
    Then 1st product of products list should contain "10th Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should not contain "Add-on Item"