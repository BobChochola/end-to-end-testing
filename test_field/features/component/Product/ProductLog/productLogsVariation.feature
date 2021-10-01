@BaseCase @Admin @Storefront @Order @Product @ProductLog @productLogsVariation @fixture-shop @fixture-product @fixture-payment @fixture-delivery @EAT-576
Feature:Add order with different unlimited inventory,check if the product logs
  As a merchant
  When I have different order status
  I can check products variations
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

  Scenario:Check if the product logs of each products are created with different variations
    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    When I click on shop all button
    Then I should be redirected to Shop Product Index Page
    When I input "16th Product for Checkout" to search field
    Then 1st product of products list should contain '16th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    Given I am on Shop Product Index Page
    When I input "16th" to search field
    Then 1st product of products list should contain '16th'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I select dropdown option included 'Blue' of variation dropdown
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Given I am on Product Index Page
    When I input "16th Product for Checkout" to search field
    Then 1st row of product name should contain '16th Product for Checkout'
    When I select product operations dropdown option included 'Activity Logs' of product operations dropdown
    Then I should be redirected to Product Edit Page
    Then row of logs should contain "Product Fulfillment"
    Then 1st row of logs should contain "Blue"
    Then 1st row of logs should contain "Unlimited"

    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I select Cancelled of order status dropdown
    Then I should see YES button
    And I click on yes button
    And I wait for 3 seconds for loading
    Then order status should equal to "Cancelled"
    Then I scroll down to row of order activities logs
    Then row of order activities logs should contain "Updated Order Status As Cancelled"
    Given I am on Orders Page
    Then row of order status should equal to "Cancelled"
    Given I am on Product Index Page
    When I input "16th Product for Checkout" to search field
    Then 1st row of product name should contain '16th Product for Checkout'
    When I select product operations dropdown option included 'Activity Logs' of product operations dropdown
    Then I should be redirected to Product Edit Page
    Then 1st row of logs should contain "Product Fulfillment Reverted"
    Then 1st row of logs should contain "Blue"
    Then 1st row of logs should contain "Unlimited"