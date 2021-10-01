@BaseCase @Admin @Storefront @Product @Setting @inventoryVariationsReminder
@fixture-product @fixture-shop @fixture-delivery @fixture-payment @EAT-540 @EAT-567
Feature: check inventory variation reminder
  As a merchant
  I want to check product quantity reminder

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

    Given I am on Product Setting Page
    Then I should see inventory reminder toggle
    When I check and click inventory reminder toggle off
    And I click on update button
    Then I should see alert
    Then inventory reminder toggle should be checked

    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill '(dirty data) Test Inventory Product for Checkout' to english name field
    And I click on variations tab
    When I click on variations toggle
    And I input 'Blue' to add options field
    And I input 'Red' to add options field
    And I click on variations same price checkbox
    And I fill '50' to 1st row of variation price field
    And I fill '25' to 2nd row of variation price field
    And I fill '11' to 1st row of variation quantity field
    And I fill '11' to 2nd row of variation quantity field

  @EAT-540-1
  Scenario: check inventory variation reminder Unlimited Quantity -> limited Quantity
    And I click on unlimited quantity checkbox
    Then I scroll down to id
    Then I should see add button
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    Then I should see row of product photo list
    Then 1st row of product list should contain "Test Inventory Product for Checkout"

    Given I am on Shop Product Index Page
    And I input 'Test Inventory Product for Checkout' to search field
    Then 1st product of products list should contain 'Test Inventory Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I select dropdown option included 'Red' of variation dropdown
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill new email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on become member checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then 1st row of delivery detail should contain name

    Given I am on Product Index Page
    Then 1st row of product list should contain 'Test Inventory Product for Checkout'
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on variations tab
    And I click on unlimited quantity checkbox
    And I fill '11' to 1st row of variation quantity field
    And I fill '11' to 2nd row of variation quantity field
    Then I scroll down to id
    And I click on add button
    Then I should be redirected to Product Index Page

    Given I am on Shop Product Index Page
    And I input 'Test Inventory Product for Checkout' to search field
    Then 1st product of products list should contain 'Test Inventory Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see product quantity field
    And I select dropdown option included 'Red' of variation dropdown
    And I should see product quantity field
    When I fill '3' to product quantity field
    And I click on add to cart button
    Then I should see cart panel
    Then I should see quantity reminder
    Then quantity reminder should contain 'Only 8 item(s) left.'
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill new email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on become member checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then 1st row of delivery detail should contain name

    And ---ROLL BACK---
    Given I am on Product Setting Page
    When I click on inventory reminder toggle
    And I click on update button
    Then I should see alert

    Given I am on Product Index Page
    Then 1st row of product list should contain 'Test Inventory Product for Checkout'
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then 1st row of product list should not contain 'Test Inventory Product for Checkout'

  @EAT-540-2
  Scenario: check inventory variation reminder limited Quantity -> Unlimited Quantity
    Then I scroll down to id
    Then I should see add button
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    Then I should see row of product photo list
    Then 1st row of product list should contain "Test Inventory Product for Checkout"

    Given I am on Shop Product Index Page
    And I input 'Test Inventory Product for Checkout' to search field
    Then 1st product of products list should contain 'Test Inventory Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I select dropdown option included 'Blue' of variation dropdown
    When I fill '3' to product quantity field
    And I click on add to cart button
    Then I should see cart panel
    Then I should see quantity reminder
    Then quantity reminder should contain 'Only 8 item(s) left.'
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included 'Taiwan' of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included 'Custom Delivery' of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included 'Custom' of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill new email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on become member checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then 1st row of delivery detail should contain name

    Given I am on Product Index Page
    Then 1st row of product list should contain 'Test Inventory Product for Checkout'
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on variations tab
    And I click on unlimited quantity checkbox
    Then I scroll down to id
    And I click on add button
    Then I should be redirected to Product Index Page

    Given I am on Shop Product Index Page
    And I input 'Test Inventory Product for Checkout' to search field
    Then 1st product of products list should contain 'Test Inventory Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I select dropdown option included 'Red' of variation dropdown
    And I click on add to cart button
    Then I should see cart panel
    Then I should not see quantity reminder
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill new email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then 1st row of delivery detail should contain name

    And ---ROLL BACK---
    Given I am on Product Setting Page
    Then I should see inventory reminder toggle
    When I click on inventory reminder toggle
    Then I should see update button
    And I click on update button
    Given I am on Product Index Page
    Then 1st row of product list should contain 'Test Inventory Product for Checkout'
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then 1st row of product list should not contain 'Test Inventory Product for Checkout'