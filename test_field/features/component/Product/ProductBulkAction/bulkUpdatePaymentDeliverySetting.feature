@Basecsae @Admin @Storefront @Product @Delivery @Payment @ProductBulkAction @bulkUpdatePaymentDeliverySetting
@fixture-product @fixture-payment @fixture-delivery
Feature: Bulk update payment and delivery setting
  As a user of Shopline
  I want to bulk update payment and delivery setting

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

  @bulkUpdatePaymentDeliverySetting-1
  Scenario: exclude all payment/delivery options, action should be blocked and show alert wording
    Given I am on Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st row of product list should contain '1st Product for Checkout'
    Then I click on 1st row of product checkbox
    When I select exclude payment option of bulk actions dropdown
    And I click on 1st row of option checkbox
    And I click on 2nd row of option checkbox
    And I click on 3rd row of option checkbox
    And I click on 4th row of option checkbox
    And I click on 5th row of option checkbox
    And I click on 6th row of option checkbox
    And I click on 7th row of option checkbox
    And I click on 8th row of option checkbox
    And I click on 9th row of option checkbox
    And I click on 10th row of option checkbox
    And I click on 11st row of option checkbox
    And I click on 12nd row of option checkbox
    And I click on 13rd row of option checkbox
    And I click on 14th row of option checkbox
    And I click on 15th row of option checkbox
    And I click on 16th row of option checkbox
    And I click on 17th row of option checkbox
    And I click on 18th row of option checkbox
    And I click on 19th row of option checkbox
    And I click on 20th row of option checkbox
    Then I should see alert
    Then alert should contain "Unable to blacklist all payment methods."
    Then reminder should contain "Because of hidden payment method(s), this product will not have any applicable payment method for buying."
    And I click on close button
    When I select exclude delivery option of bulk actions dropdown
    And I click on 1st row of option checkbox
    And I click on 2nd row of option checkbox
    And I click on 3rd row of option checkbox
    And I click on 4th row of option checkbox
    And I click on 5th row of option checkbox
    And I click on 6th row of option checkbox
    And I click on 7th row of option checkbox
    And I click on 8th row of option checkbox
    And I click on 9th row of option checkbox
    And I click on 10th row of option checkbox
    And I click on 11st row of option checkbox
    And I click on 12nd row of option checkbox
    And I click on 13rd row of option checkbox
    And I click on 14th row of option checkbox
    And I click on 15th row of option checkbox
    And I click on 16th row of option checkbox
    And I click on 17th row of option checkbox
    And I click on 18th row of option checkbox
    And I click on 19th row of option checkbox
    And I click on 20th row of option checkbox
    Then alert should contain "Unable to blacklist all delivery methods."
    Then reminder should contain "Because of hidden delivery method(s), this product will not have any applicable delivery method for buying."
  
  @bulkUpdatePaymentDeliverySetting-2 @fixture-shop
  Scenario: payment/delivery options can be excluded successfully
    Given I am on Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st row of product list should contain '1st Product for Checkout'
    Then I click on 1st row of product checkbox
    When I select exclude payment option of bulk actions dropdown
    And I click row of option checkbox for the same order of row of option included 'Taishin'
    And I click on exclude button
    Then I should see alert
    When I select exclude delivery option of bulk actions dropdown
    And I click row of option checkbox for the same order of row of option included 'Family Mart Pickup only (C2C)'
    And I click on exclude button
    Then I should see alert
    When I select product operations dropdown option included 'Activity Logs' of product operations dropdown
    Then I should be redirected to Product Edit Page
    Then I should see row of logs
    Then 1st row of logs should contain "Product Updated"
    Then 2nd row of logs should contain "Product Updated"

    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I wait for 5 seconds for loading
    And I select country dropdown option included "Taiwan" of country list dropdown
    Then delivery dropdown option should not contain "Family Mart Pickup only (C2C)"
    Then payment dropdown option should not contain "Taishin"
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I input "1st Product for Checkout" to search field
    Then I should be redirected to Product Index Page
    Then I click on 1st row of product checkbox
    When I select add applicable payment option of bulk actions dropdown
    And I click on 5th row of option checkbox
    And I click on add button
    Then I should see alert
    When I select add applicable delivery option of bulk actions dropdown
    And I click on 1st row of option checkbox
    And I click on add button
    Then I should see alert

  @bulkUpdatePaymentDeliverySetting-3 @fixture-shop
  Scenario: payment/delivery options can be applied successfully
    Given I am on Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st row of product list should contain '1st Product for Checkout'
    Then I click on 1st row of product checkbox
    When I select exclude payment option of bulk actions dropdown
    And I click row of option checkbox for the same order of row of option included 'Taishin'
    And I click on exclude button
    Then I should see alert
    When I select exclude delivery option of bulk actions dropdown
    And I click row of option checkbox for the same order of row of option included 'Family Mart Pickup only (C2C)'
    And I click on exclude button
    Then I should see alert
    When I select add applicable payment option of bulk actions dropdown
    And I click row of option checkbox for the same order of row of option included 'Taishin'
    And I click on add button
    Then I should see alert
    When I select add applicable delivery option of bulk actions dropdown
    And I click row of option checkbox for the same order of row of option included 'Family Mart Pickup only (C2C)'
    And I click on add button
    Then I should see alert
    When I select product operations dropdown option included 'Activity Logs' of product operations dropdown
    Then I should be redirected to Product Edit Page
    Then I should see row of logs
    Then 1st row of logs should contain "Product Updated"
    Then 2nd row of logs should contain "Product Updated"

    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I wait for 5 seconds for loading
    When I select country dropdown option included "Taiwan" of country list dropdown
    Then I wait for 5 seconds for loading
    And I select delivery dropdown option included "Family Mart Pickup only (C2C)" of delivery method dropdown
    Then I wait for 5 seconds for loading
    And I select payment dropdown option included "Taishin" of payment method dropdown
    Then I wait for 5 seconds for loading
    Then I should see proceed to checkout button
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    Then delivery detail should contain 'Family Mart Pickup only (C2C)'
    Then payment detail should contain "Taishin"