@BaseCase @Admin @Storefront @Order @Search @orderStatusCheck
@fixture-shop @fixture-product @fixture-payment @fixture-delivery
Feature: Order detailed info
  As a merchant
  I can check order status

  Background:
    Given I am on Shop Product Index Page
    When I input "2nd Product for Checkout" to search field
    Then 1st product of products list should contain '2nd Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
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

  @C4845 @C4845-1
  Scenario: Check Status
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I select Open of order status dropdown
    Then I should see YES button
    When I click on YES button
    Then I should see order status
    Then order status should equal to "Open"
    When I select Unpaid of payment status dropdown
    Then I should see confirm popover
    When I click on YES button
    Then payment status should equal to "Unpaid"
    When I select Unfulfilled of delivery status dropdown
    Then I should see confirm popover
    When I click on YES button
    Then delivery status should equal to "Unfulfilled"
    Given I am on Orders Page
    Then 1st row of order list should contain "Open"
    Then 1st row of order list should contain "Unpaid"
    Then 1st row of order list should contain "Unfulfilled"