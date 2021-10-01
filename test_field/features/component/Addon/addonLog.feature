@BaseCase @ImageService @Storefront @Admin @Addon @addonLog @fixture-shop @fixture-product @fixture-payment @fixture-delivery
Feature: See Add-on items log
  As a merchant
  I can see add-on item log
  so that I can see add-on item usage record

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

  @C3755
  Scenario: See Add-on items log
    Given I am on Addon Create Page
    And I click on tab included "Product Level Settings"
    Then I should see valid date field
    When I click on valid date field
    Then I should see calendar table
    When I click on today button
    And I click on done button
    And I click on invalid date field
    Then I should see calendar table
    When I click on 3rd available date button
    And I click on done button
    And I fill "3rd Product for Checkout" to search field
    And I click on search product button
    Then 1st product of popover list should contain "3rd Product for Checkout"
    And I should see checkbox of product list
    And I click on 1st checkbox of product list
    And I click on confirm button
    Then I should not see checkbox of product list
    Then I scroll down to add button
    And I fill "30" to 1st row of addon price field
    And I click on tab included "Add-on Item Info"
    Then I should see english name field
    And I fill "(dirty data) add-on item test log" to english name field
    When I pick addon photo to addon photo selector
    Then I should see delete photo button
    And I fill "10" to addon quantity field
    And I fill "addon test" to SKU field
    And I click on add button
    Then I should see alert
    Then I should be redirected to Addon Index Page
    Then 1st row of addon list should contain "add-on item test log"
    Then I should have image addon photo for row of addon photo list
    Then 1st row of addon list should contain "10"
    Then 1st row of addon list should contain date
    Given I am on Shop Product Index Page
    When I input "3rd Product for Checkout" to search field
    Then 1st product of products list should contain "3rd Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then addon item should contain "add-on item test log"
    And I click on addon item checkbox
    And I click on buy together button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Given I am on Addon Index Page
    When I click on log button
    And I should be redirected to Addon Usage Record Page
    And I click on order links
    Then I should be redirected to Orders Show Page
    And order detail should contain "add-on item test log"
    Given I am on Addon Index Page
    When I click on log button
    And I should be redirected to Addon Usage Record Page
    And I click on view order button
    Then I should be redirected to Orders Show Page
    And order detail should contain "add-on item test log"
    And ---ROLL BACK---
    Given I am on Addon Index Page
    When I click select checkbox of addon list for the same order of row of addon list included 'add-on item test'
    When I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then addon list should not contain 'add-on item test'