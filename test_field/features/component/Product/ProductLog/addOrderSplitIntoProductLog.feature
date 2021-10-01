@BaseCase @Admin @Storefront @Product @ProductLog @addOrderSplitIntoProductLog @fixture-product @fixture-shop @fixture-payment @fixture-delivery
Feature: Order Split in Product Log
  As a merchant
  I want to split orders
  So that I can see order chaneged in product logs

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

    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    Given I am on Shop Product Index Page
    When I input "2nd Product for Checkout" to search field
    Then 1st product of products list should contain '2nd Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Bank" of payment method dropdown
    And I wait for 3 seconds for loading
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

  Scenario:  Child-order products needs to have a new product log
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    And I click on split button
    Then I should be redirected to Order Split Page
    And I input "1" to 1st row of split quantity field
    And I click on split button
    Then I should see confirm popup
    And I click on confirm button
    Then I should see alert
    Given I am on Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st row of product name should contain '1st Product for Checkout'
    When I select product operations dropdown option included 'Activity Logs' of product operations dropdown
    Then I should be redirected to Product Edit Page
    Then 1st row of log list should contain "Order changed"
    Given I am on Product Index Page
    When I input "2nd Product for Checkout" to search field
    Then 1st row of product name should contain '2nd Product for Checkout'
    When I select product operations dropdown option included 'Activity Logs' of product operations dropdown
    Then I should be redirected to Product Edit Page
    Then 1st row of log list should not contain "Order changed"