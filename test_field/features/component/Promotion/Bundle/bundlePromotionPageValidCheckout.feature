@BaseCase @Admin @Checkout @Storefront @Promotion @Bundle @bundlePromotionPageValidCheckout
@fixture-delivery @fixture-payment @fixture-product @fixture-shop @fixture-promotion @EAT-790
Feature: Bundle Promotion Page Checkout
  As a user of Shopline
  I want to create bundle promotion page for my customer
  So that my customer can do any operation on that page

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

  @EAT-790-4
  Scenario: bundle in activity checkout
    Given I am on Category Create Page
    And I fill "(dirty data) tmp category" to category name field
    And I click on add button
    Then I should be redirected to Category List Page
    Then 2nd row of categories list should contain "tmp category"
    Given I am on Product Index Page
    When I input "2nd Product for Checkout" to search field
    Then 1st row of product list should contain "2nd Product for Checkout"
    When I click on 1st row of product checkbox
    And I select assign to categories of bulk actions dropdown
    And I click on 2nd categories checkbox
    And I click on assign button
    And I should see confirmation popover
    And I click on confirm bulk button
    Then I should see alert

    Given I am on Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st row of product list should contain "1st Product for Checkout"
    When I click on 1st row of product checkbox
    And I select assign to categories of bulk actions dropdown
    And I click on 2nd categories checkbox
    And I click on assign button
    And I should see confirmation popover
    And I click on confirm bulk button
    Then I should see alert
    Given I am on Bundle Pricing Create Page
    And I fill '(dirty data) Summer Sale - in activity' to name field
    And I fill '4' to promotion value field
    And I fill '2' to discounted price field

    And I select search type dropdown option included 'Search by Categories' of search type dropdown
    And I select applicable category dropdown option included 'tmp category' of applicable category dropdown
    And I click on search product button
    Then I should see select product popup
    And I click on 1st checkbox of product list
    And I click on 2nd checkbox of product list
    When I click on popup confirm button
    Then I should see row of selected product

    And I click on countinue to button
    When I click on 2nd countinue to button
    Then I click on never expires checkbox
    And I click on end date field
    Then I should see calendar table
    When I click on 3rd available date button
    And I click on done button
    And I click on 3rd countinue to button
    When I click on preview button
    Then promotion limitations start date should contain default start time
    Then promotion limitations end date should contain tomorrow end time
    Then discount summary should equal to 'Purchase 4 items of Selected Products for NT$2'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Summer Sale - in activity'
    When I click on 1st go to page button
    When I quickly switch to 2 of tabs
    Then I should be redirected to Shop Promotion Page
    Then promotion name should contain 'Selected Products: Buy 4 items for NT$2'
    Then promotion name should contain promotion end time
    When I click add to cart button for the same order of product of products list included '1st Product for Checkout'
    Then I should see bundle cart content
    Then 1st bundle cart item should contain '1st Product for Checkout'
    Then bundle cart item count should contain '1 items selected'
    When I click on bundle cart collapse button
    Then I should not see bundle cart content
    When I click add to cart button for the same order of product of products list included '2nd Product for Checkout'
    Then I should see bundle cart content
    Then 1st bundle cart item should contain '1st Product for Checkout'
    Then 2nd bundle cart item should contain '2nd Product for Checkout'
    Then bundle cart item count should contain '2 items selected'
    When I hover over 1st bundle cart item image
    And I click on 1st bundle cart item delete button
    Then 1st bundle cart item should contain '2nd Product for Checkout'
    When I fill '4' to bundle cart item quantity field
    When I click on bundle cart checkout button

    Then I should be redirected to Shop Cart Page
    Then 1st item quantity field should equal to '4'
    Then 1st item promotions should contain 'Summer Sale - in activity'
    Then promotion description should contain 'Summer Sale - in activity'
    And I select country dropdown option included 'Taiwan' of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included 'Custom Delivery' of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included 'Custom' of payment method dropdown
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
    When I click on summary collapse
    Then 1st row of product items should contain '2nd Product for Checkout'
    Then 1st row of product quantity should equal to '4'
    Then 1st row of product unit price should contain 'NT$1'
    Then discount applied should contain 'Summer Sale - in activity'
    Then item subtotal should contain 'NT$4'
    Then item discount applied should contain '-NT$2'
    Then delivery fee should contain 'NT$10'
    Then total should contain 'NT$12'
    And ---ROLL BACK---
    Given I am on Category List Page
    When I click delete button of categories list for the same order of row of categories list included "(dirty data) tmp category"
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see 1 delete button of categories list
    Given I am on Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Summer Sale - in activity'
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert