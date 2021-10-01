@BaseCase @Admin @Storefront @Order @OrderSplit @checkOrderSplitDiscountDistribute @fixture-shop @fixture-product @fixture-payment @fixture-delivery @EAT-975
Feature: Order activities logs add discount distribute amount
  As a merchant
  I want to see the discount distribute amount in order activities logs
  when I spilt the order

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

    Given I am on Promotion Create Page
    When I fill '(dirty data) Get 50% discount' to name field
    And I fill "50" to promotion value field
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then discount summary should contain "Get 50% off on Entire Order"
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page

  Scenario: Check the order activities logs
    Given I am on Shop Product Index Page
    When I input "3rd Product for Checkout" to search field
    Then 1st product of products list should contain '3rd Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill '4' to product quantity field
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on become member checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I click on split button
    Then I should be redirected to Order Split Page
    And I input '2' to 1st row of split quantity field
    When I click on split button
    Then I should see confirm popup
    When I click on confirm button
    Then I should see alert
    Then I should be redirected to Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I should see alert
    Then alert should contain 'This order is split from (parent order):'

    Given I am on Orders Page
    Then 2nd row of order links should contain order number
    When I click on 2nd row of order links
    Then I should be redirected to Orders Show Page
    When I scroll down to product details edit button
    Then 1st row of activity log list should contain 'Change Product Details (Order split)'
    Then 1st row of activity log list should contain 'Subtotal NT$40 NT$20'
    Then 1st row of activity log list should contain 'Discount NT$20 NT$10'
    Then 1st row of activity log list should contain 'Total NT$30 NT$20'

    And ---ROLL BACK---
    Given I am on Promotion Index Page
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert