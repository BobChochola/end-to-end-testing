@BaseCase @Admin @Storefront @reachStockLimit @fixture-shop @fixture-product @fixture-addon
Feature: Prodcut reach to limit
  As a guest
  I select the amount way more than stock, I should see error messages.

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

    Given I am on Inventory Page
    And I input "1st Product for Checkout" to search field
    Then I should see row of product list
    Then 1st row of product list should contain '1st Product for Checkout'
    And I fill "1000" to 1st row of quantity field
    And I click on set button
    And I click on 1st save button
    Then I should not see save button
    And I click on tab included "Add-on Item"
    Then I should see select all checkbox
    And I click on select all checkbox
    And I select bulk action dropdown options included "Update Inventory" of bulk action dropdown
    Then I should see bulk edit quantity popover
    And I click on bulk set button
    And I fill '5000' to bulk quantity field
    And I click on bulk save button
    Then I wait for 15 seconds for update
    Then row of product list included '1st Addon for Checkout' and same order of row of product list should also contain '5000'

  @C3799
  Scenario: Checkout with large quantity
    Given I am on Shop Product Index Page
    When I input "1st" to search field
    Then 1st product of products list should contain '1st'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill "999999" to product quantity field
    And I fill "999999" to addon quantity field
    And I click on buy together button
    Then I should see error message
    Then error message should contain "There isn't enough stock for add-on 1st Addon for Checkout."
    Then error message should contain "There isn't enough stock for main product"