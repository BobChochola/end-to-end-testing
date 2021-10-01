@BaseCase @Admin @Order @OrderEdit @orderEditProductaddCustomItem
@fixture-payment @fixture-delivery @fixture-product @fixture-shop
Feature: add custom item field in orders show page
  As a merchant
  I want to add custom item field in my order
  So that I can modify the field

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
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 1 seconds for loading
    And I select delivery dropdown option included "CustomDelivery" of delivery method dropdown
    And I wait for 2 seconds for loading
    And I select payment dropdown option included "Bank" of payment method dropdown
    And I wait for 2 seconds for loading
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

  @C4887
  Scenario: add order custom item field in orders show page
    Given I am on Orders Page
    And I should see row of order list
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I should see product details edit button
    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    Then I should not see product details edit reminder
    And I click on add custom button
    Then I should see add custom item popover
    And I fill "Pokemon" to item name field
    And I fill "10" to unit price field
    And I fill "3" to custom item quantity field
    Then I click on custom item save button
    And I should see custom item field
    Then total change should equal to "NT$90"
    Then outstanding amount should equal to "NT$30"
    Then I should see product details save button
    When I click on product details save button
    Then I should see confirm popover
    Then I check re create receipt and click included 'Yes, please re-create the receipt based on edited order'
    And I click on YES button
    And I should see custom item field
    And custom item field should contain "Pokemon"
    And custom item field should contain "3 x NT$10 = NT$30"
    And total should contain "NT$90"