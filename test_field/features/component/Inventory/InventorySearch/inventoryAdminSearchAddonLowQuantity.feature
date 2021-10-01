@BaseCase @Admin @Search @Inventory @InventorySearch @Addon @inventoryAdminSearchAddonLowQuantity
Feature: inventory Admin Addon filter Low Quantity
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
    And I fill "(dirty data) Add-on Item Test" to english name field
    When I pick addon photo to addon photo selector
    Then I should see delete photo button
    And I fill "5" to addon quantity field
    And I click on add button
    Then I should see alert

  @C8248 @C8248-1
  Scenario: addon filter quantity - low quantity(publish)
    Given I am on Inventory Page
    And I click on tab included "Add-on Item"
    Then I should see quantity dropdown
    When I select low quantity of quantity dropdown
    Then I should see quantity search button
    And I fill "5" to quantity search field
    Then I click on quantity search button
    Then I should see quantity search label
    And quantity search label should contain "Product is Low Quantity"
    Then I should see row of product list
    Then 1st row of product list should contain "5"
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

  @C8248 @C8248-2
  Scenario: addon filter quantity - low quantity(unpublish)
    Given I am on Inventory Page
    And I click on tab included "Add-on Item"
    Then I should see row of addon select checkbox
    When I click on row of addon select checkbox
    And I select bulk action dropdown options included "Unpublish Selected" of bulk action dropdown
    Then I should see ok button
    Then I click on ok button
    Then I should not see ok button
    Then I should see quantity dropdown
    When I select low quantity of quantity dropdown
    Then I should see quantity search button
    And I fill "5" to quantity search field
    Then I click on quantity search button
    Then I should see quantity search label
    And quantity search label should contain "Product is Low Quantity"
    Then I should see row of product list
    Then 1st row of product list should contain "5"
    And I select unpublished of status dropdown
    Then I should see status search label
    And status search label should contain "Product is Unpublished"
    Then I should see row of product list
    Then 1st row of product list should contain "Unpublished"
    And ---ROLL BACK---
    Given I am on Addon Index Page
    When I click on 1st select checkbox of addon list
    When I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then addon list should not contain 'Add-on Item Test'
