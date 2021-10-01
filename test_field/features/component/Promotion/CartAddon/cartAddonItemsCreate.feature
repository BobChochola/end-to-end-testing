@BaseCase @Search @Storefront @Admin @Promotion @CartAddon @cartAddonItemsCreate
@fixture-shop @fixture-product @fixture-delivery @fixture-payment @fixture-addon @fixture-promotion
Feature: Create Promotion - add on items
  As a user of Shopline
  I want to create promotion for my customer
  So that my customer can use that when checkout

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

    Given I am on Cart Add On Items Index Page
    When I click on add cart addon button
    Then I should be redirected to Cart Add On Items Create Page
    And I click on valid date field
    Then I should see calendar table
    When I click on today button
    And I click on done button
    And I click on invalid date field
    Then I should see calendar table
    When I click on 3rd available date button
    And I click on done button
    And I fill "(dirty data) Add-on Item" to english name field
    When I click on select add on items button
    Then I should see search add on items field
    And I input "2nd Addon for Checkout" to search add on items field
    When I click on search button
    Then add on items name should contain "2nd Addon for Checkout"
    And I click on 1st add on items checkbox
    When I click on add on items save button
    Then I should see add on items price field
    And I fill '10' to add on items price field
    And I click on unlimited checkbox
    When I click on save button
    Then I should be redirected to Cart Add On Items Index Page
    Then I should see alert
    Then 1st row of cart addon list should contain "Add-on Item"
    Then 1st row of cart addon list should contain date

  Scenario: Create Promotion - AddOnItems
    Given I am on Shop Product Index Page
    When I input "18th Product for Checkout" to search field
    Then 1st product of products list should contain '18th Product for Checkout'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then I should see cart addon items price
    Then cart addon items price should equal to 'NT$10'
    When I click on cart addon items button
    Then cart item subtotal should contain "NT$110"
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 5 seconds for loading
    When I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then 1st row of product unit price should contain "NT$100"
    Then 1st row of product quantity should equal to "1"
    Then 1st row of product items should contain "18th Product for Checkout"
    Then 2nd row of product unit price should contain "NT$10"
    Then 2nd row of product quantity should equal to "1"
    Then 2nd row of product items should contain "Add-on Item"
    Then item subtotal should contain "NT$110"
    Then delivery fee should contain "NT$10"
    Then total should contain "NT$120"

    And ---ROLL BACK---
    Given I am on Cart Add On Items Index Page
    When I click on 1st select checkbox of cart addon list
    Then I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then cart add on items list should contain "No promotions yet"