@BaseCase @Admin @Storefront @Order @OrderEdit @orderEditDeliveryDetail
@fixture-payment @fixture-delivery @fixture-product @fixture-shop
Feature: Order edit delivery details for local delivery order
  As a merchant
  I want to edit delivery details of a local delivery order
  So that I can edit successful

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

  @C3772-1
  Scenario: I want to edit delivery details of a local delivery order
    Given I am on Shop Product Index Page
    When I input "5th Product for Checkout" to search field
    Then 1st product of products list should contain '5th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill "3" to product quantity field
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I wait for 3 seconds for loading
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Local Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Cash on Delivery" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill address to delivery address field
    And I click on agree terms checkbox
    And I click on place order button
    And I click on accept marketing checkbox
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then delivery fee should contain "NT$10"
    Then total should contain "NT$100"
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order date should contain order date
    Then customer name should contain name
    Then customer email should contain email
    Then customer phone should contain phone
    Then payment type should contain "Cash on Delivery"
    Then delivery method should contain "Local Delivery"
    Then recipient name should contain name
    Then recipient phone should contain phone
    Then delivery fee should contain "NT$10"
    Then total should contain "NT$100"
    Then I Refresh
    Then I should see delivery form edit button
    And I click on delivery form edit button
    And I fill "John" to recipient name field
    And I fill "098766666" to recipient phone field
    And I select delivery address dropdown option included "New Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "207 Wanli District" of 2nd delivery address dropdown
    And I fill '光復北路11巷44號14樓' to delivery address field
    And I click on save button
    Then I should see alert
    Then recipient name should contain "John"
    Then recipient phone should contain "098766666"
    Then delivery form should contain "光復北路11巷44號14樓"
    Then delivery form should contain "Wanli Distric"
    Then delivery form should contain "207"
    Then delivery form should contain "New Taipei City"
    When I select update order delivery status option included "Returned" of update order delivery status dropdown
    And I should see popover
    And I click on YES button
    Then I should see delivery status
    Then delivery status should contain "Returned"
    When I click on delivery form edit button
    And I fill "0987555555" to recipient phone field
    And I click on save button
    Then I should see alert
    Then recipient phone should contain "0987555555"

  @C3772-2
  Scenario: I can not edit delivery details of a local delivery order on specific delivery status
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Local Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I fill address to delivery address field
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
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