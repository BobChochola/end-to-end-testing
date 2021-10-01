@BaseCase @Admin @Search @Inventory @InventorySearch @Addon @inventoryAdminSearchAddonUnlimited @fixture-product @fixture-addon
Feature: inventory Admin Addon filter Unlimited
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

  @C8249 @C8249-1
  Scenario: addon filter quantity - unlimited quantity(publish)
    Given I am on Inventory Page
    When I select unlimited quantity of quantity dropdown
    Then I should see quantity search label
    And quantity search label should contain "Product is Unlimited Quantity"
    Then I should see row of product list
    Then I should not see loading icon
    Then 1st row of product list should contain "∞"
    And I select published of status dropdown
    Then I should see status search label
    And status search label should contain "Product is Published"
    Then I should see row of product list
    Then I should not see loading icon
    Then 1st row of product list should contain "Published"

  @C8249 @C8249-2
  Scenario: addon filter quantity - unlimited quantity(unpublish)
    Given I am on Inventory Page
    And I click on tab included "Add-on Item"
    Then I should see row of product list
    Then I should not see loading icon
    When I select unlimited quantity of quantity dropdown
    Then I should see apply search label
    Then I should not see loading icon
    Then I should see row of addon select checkbox
    Then I click on row of addon select checkbox
    And I select bulk action dropdown options included "Unpublish Selected" of bulk action dropdown
    Then I should see ok button
    Then I click on ok button
    Then I wait for 30 seconds for loading
    When I select unlimited quantity of quantity dropdown
    Then I should see quantity search label
    And quantity search label should contain "Product is Unlimited Quantity"
    Then I should see row of product list
    Then 1st row of product list should contain "∞"
    And I select unpublished of status dropdown
    Then I should see status search label
    And status search label should contain "Product is Unpublished"
    Then I should see row of product list
    Then 1st row of product list should contain "Unpublished"
    And ---ROLL BACK---
    When I click on row of addon select checkbox
    And I select bulk action dropdown options included "Publish Selected" of bulk action dropdown
    Then I click on ok button
    Then I wait for 30 seconds for loading