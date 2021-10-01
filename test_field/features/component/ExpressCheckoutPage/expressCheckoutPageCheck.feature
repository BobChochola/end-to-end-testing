@BaseCase @Admin @Storefront @ExpressCheckoutPage @expressCheckoutPageCheck
@fixture-payment @fixture-delivery @fixture-product @fixture-shop
Feature: Express Checkout Page
  As a shopper
  I want to be able to navigate to checkout from an express chckout page

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

  @C3856
  Scenario: Create new express checkout page and check on shop
    Given I am on Express Checkout Pages Page
    When I click on create button
    Then I should be redirected to Express Checkout Builder Page
    Then I should see skip the guide button
    And I click on skip the guide button
    Then I should see product picker
    And I input "1st Product for Checkout" to search field
    Then I click on search button
    Then 1st product of product list should contain '1st Product for Checkout'
    And I click on 1st product of product list
    And I click on popup save button
    And I click on save page button
    Then I should see view page button
    When I click on view page button
    And I switch to 2 of tabs
    Then I should be on Shop Express Checkout Page
    And I click on buy now button
    Then I should be redirected to Shop Checkout Page
    Then I should not see checkout flow image
    And  ---ROLL BACK---
    Given I am on Express Checkout Pages Page
    When I click on delete button
    Then I should see popup
    And I click on reconfirm checkbox
    And I click on popup ok button
    Then I should not see delete button