@BaseCase @Admin @Search @Inventory @InventorySearch @Addon @inventoryAdminSearchAddonOutofStock
Feature: inventory Admin Addon filter Out of Stock
  As a merchant
  I want to update addon-item's inventory and search the specific filter

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

    Given I am on Addon Create Page
    And I click on tab included "Add-on Item Info"
    And I fill "(dirty data) Add-on Item Test Out of Stock" to english name field
    When I pick addon photo to addon photo selector
    Then I should see delete photo button
    And I fill "0" to addon quantity field
    And I click on add button
    Then I should see alert

  @C8247 @C8247-1
  Scenario: addon filter quantity - Out of stock(publish)
    Given I am on Inventory Page
    And I click on tab included "Add-on Item"
    Then I should see row of product list
    And I should see quantity dropdown
    When I select out of stock of quantity dropdown
    Then I should see quantity search label
    And quantity search label should contain "Product is Out of stock"
    Then I should see row of product list
    Then 1st row of product list should contain "0"
    And I select published of status dropdown
    Then I should see status search label
    And status search label should contain "Product is Published"
    Then I should see row of product list
    Then 1st row of product list should contain "Published"
    And ---ROLL BACK---
    Given I am on Addon Index Page
    When I click on 1st select checkbox of addon list
    When I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then addon list should not contain 'Add-on Item Test'

  @C8247 @C8247-2
  Scenario: addon filter quantity - Out of stock(unpublish)
    Given I am on Inventory Page
    And I click on tab included "Add-on Item"
    Then I should see row of product list
    And I should see row of addon select checkbox
    When I click on row of addon select checkbox
    And I select bulk action dropdown options included "Unpublish Selected" of bulk action dropdown
    Then I should see ok button
    Then I click on ok button
    And I wait for 3 seconds for loading
    Then I should see quantity dropdown
    Then I select out of stock of quantity dropdown
    Then I should see quantity search label
    And quantity search label should contain "Product is Out of stock"
    And I select unpublished of status dropdown
    Then I should see status search label
    And status search label should contain "Product is Unpublished"
    Then I should see row of product list
    Then 1st row of product list should contain "Unpublished"
    Then 1st row of product list should contain "0"
    And ---ROLL BACK---
    Given I am on Addon Index Page
    When I click on 1st select checkbox of addon list
    When I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then addon list should not contain 'Add-on Item Test'
