@Admin @BaseCase @Storefront @Checkout @mobile-711C2cCheckout-limitationAlert
@fixture-mobile-signup-p2 @fixture-shop @fixture-product @fixture-delivery @fixture-payment @fixture-promotion
Feature: Mobile member Checkout - Not fit limitation with 7-11 (C2C)
  As a customer
  I can go checkout with message of limitation alert

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

    Given I am on Inventory Page
    When I input '18th Product for Checkout' to search field
    Then 1st row of product list should contain '18th Product for Checkout'
    And I wait for 5 seconds for loading
    Then I click on 1st row of select checkbox list
    And I select update inventory of bulk action dropdown
    Then I should see bulk quantity field
    And I fill '100000' to bulk quantity field
    And I click on bulk set button
    And I click on bulk save button
    And I wait for 5 seconds for loading
    Then I should be redirected to Inventory Page
    When I fill '18th Product for Checkout' to search field
    Then 1st row of product list should contain '18th Product for Checkout'
    Then 1st row of product list should contain '100000'

  Scenario: Checkout - Not fit limitation with 7-11 (C2C)
    Given I am on Shop Product Index Page
    When I input "18th Product for Checkout" to search field
    Then 1st product of products list should contain "18th Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill "200" to product quantity field
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I click on login button
    Then I should be redirected to Shop Login Page
    And I fill test phone to email field
    And I fill password to password field
    And I click on submit button
    Then I should be redirected to Shop Cart Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "7-11 Pickup only (C2C)" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Custom" of delivery method dropdown
    And I wait for 5 seconds for loading
    Then errors info should contain "Failed transaction: order amount for：7-11 Pickup only (C2C) should be 0 ~ NT$19,999"
    And ---ROLL BACK---
    When I scroll down to errors info
    When I click on remove button
    Then I should see delete confirmation popover
    When I click on ok button
    Then I should see empty message