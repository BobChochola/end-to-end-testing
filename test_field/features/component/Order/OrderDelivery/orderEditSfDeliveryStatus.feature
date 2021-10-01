@BaseCase @Admin @Storefront @Order @OrderDelivery @orderEditSfDeliveryStatus
@fixture-shop @fixture-product @fixture-payment @fixture-delivery @baseLocation-HK
Feature: Order status edit with delivery Zeek2door
  As a merchant
  I want to edit the sf order status
  So that I can switch to all status

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

  @C3850 @C3850-2
  Scenario: Zeek2door order edit status
    Given I am on Shop Product Index Page
    And I input "2nd Product for Checkout" to search field
    Then 1st product of products list should contain '2nd Product for Checkout'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Hong Kong" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Zeek2door (Same Day Home Delivery)" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I scroll down to place order button
    And I select sf address region dropdown option included "Hong Kong" of sf address region dropdown
    And I wait for 5 seconds for loading
    And I select sf address district dropdown option included "Central District" of sf address district dropdown
    And I wait for 5 seconds for loading
    And I select sf address area dropdown option included "Central" of sf address area dropdown
    And I wait for 5 seconds for loading
    And I select delivery time dropdown option included "AM" of delivery time dropdown
    And I wait for 5 seconds for loading
    And I fill address to delivery address field
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I scroll down to update order delivery status dropdown
    When I select update order delivery status option included "Shipped" of update order delivery status dropdown
    And I should see popover
    And I click on YES button
    Then I should see delivery status
    Then delivery status should contain "Shipped"
    Then delivery form should not contain "Edit"
    When I select update order delivery status option included "Arrived" of update order delivery status dropdown
    And I should see popover
    And I click on YES button
    Then I should see delivery status
    Then delivery status should contain "Arrived"
    Then delivery form should not contain "Edit"
    When I select update order delivery status option included "Collected" of update order delivery status dropdown
    And I should see popover
    And I click on YES button
    Then I should see delivery status
    Then delivery status should contain "Collected"
    Then delivery form should not contain "Edit"
    When I select update order delivery status option included "Returning" of update order delivery status dropdown
    And I should see popover
    And I click on YES button
    Then I should see delivery status
    Then delivery status should contain "Returning"
    Then delivery form should not contain "Edit"