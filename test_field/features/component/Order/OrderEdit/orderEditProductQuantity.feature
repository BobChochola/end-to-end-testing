@BaseCase @Admin @Storefront @Order @OrderEdit @orderEditProductQuantity
@fixture-payment @fixture-delivery @fixture-product @fixture-shop
Feature: Change product quantity in orders show page
  As a merchant
  I want to change product quantity in orders show page
  So that I can modify the number

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

    Given I am on Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st row of product list should contain '1st Product for Checkout'
    And I mark the value of 1st row of quantity list as variable product quantity
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "(DBW) CustomDelivery" of delivery method dropdown
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
    Then I mark the value of order confirm info as variable order info

  @C4885
  Scenario: I can change product quantity in orders show page
    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    Then product quantity reminder should contain product quantity
    And I fill "5" to product quantity field
    Then total change should equal to "NT$180"
    Then outstanding amount should equal to "NT$120"
    And I click on product details save button
    Then I should see confirm popover
    Then I check re create receipt and click included 'Yes, please re-create the receipt based on edited order'
    And I click on YES button
    And total should contain "NT$180"