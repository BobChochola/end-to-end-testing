@BaseCase @Admin @Storefront @CheckoutWithoutEmail @Order @Setting @checkOrderStatusWithoutEmail @EAT-1147
@fixture-shop @fixture-product @fixture-payment @fixture-delivery @fixture-checkout-without-email
Feature: checkout without email and change status correctly
  As a merchant
  I help customer can checkout without email

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
    Given I am on Checkout Setting Page
    Then I should see checkout without email toggle
    When I check and click checkout without email toggle off
    Then I should see update button
    And I click on update button
    Then I should see alert

  @EAT-1147-2
  Scenario: checkout without email and change status correctly
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
    And I select phone country dropdown option included "Taiwan (台灣)" of phone country list dropdown
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then resend notification button should be disabled
    When I select Confirmed of order status dropdown
    Then I should see confirm popover
    Then I should see YES button
    When I click on YES button
    Then I should see order status
    Then order status should equal to "Confirmed"
    When I select Paid of payment status dropdown
    When I click on YES button
    Then payment status should equal to "Paid"
    When I select Shipped of delivery status dropdown
    Then I should see confirm popover
    When I click on YES button
    Then delivery status should equal to "Shipped"
    Given I am on Orders Page
    Then 1st row of order list should contain "Confirmed"
    Then 1st row of order list should contain "Paid"
    Then 1st row of order list should contain "Shipped"
    And ---ROLL BACK---
    Given I am on Checkout Setting Page
    Then checkout without email toggle should be checked
    When I click on checkout without email toggle
    And I click on update button
    Then I should see alert