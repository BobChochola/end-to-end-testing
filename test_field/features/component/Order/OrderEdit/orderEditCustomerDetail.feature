@BaseCase @Admin @Storefront @Order @OrderEdit @orderEditCustomerDetail
@fixture-shop @fixture-product @fixture-payment @fixture-delivery
Feature: Order edit for customer details
  As a merchant
  I want to edit customer details of all order stat
  So that I can edit successfully

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

    Given I am on Customer Settings Page
    Then I should see checkout include
    And I click on 1st checkout include
    And I click on 2nd checkout include
    And I click on update button
    Then I should be redirected to Customer Settings Page
    Then limit counter should contain "0 / 5"
    Then I scroll down to add button
    And I click on add button
    And I fill name to Field Name field
    And I fill hint to Field Hint field
    And I click on update button
    Then I should be redirected to Customer Settings Page
    Then Field Name field should contain name
    Then Field Hint field should contain hint
    Then limit counter should contain "1 / 5"
    Given I am on Shop Product Index Page
    When I input "5th Product for Checkout" to search field
    Then 1st product of products list should contain '5th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I scroll down to country list dropdown
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
    Then I scroll down to gender dropdown
    When I select gender dropdown option included "Male" of gender dropdown
    And I fill birthday to birthday field
    And I fill custom to custom customer field
    And I click on same as checkbox
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill address to delivery address field
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then delivery fee should contain "NT$10"
    Then total should contain "NT$40"
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order date should contain order date
    Then name field should contain name
    Then email field should contain email
    Then phone field should contain phone
    Then payment type should contain "Cash on Delivery"
    Then delivery method should contain "Local Delivery"
    Then recipient name should contain name
    Then recipient phone should contain phone
    Then delivery fee should contain "NT$10"
    Then total should contain "NT$40"

  @C3771
  Scenario: I want to edit customer details of a order
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I should see customer form edit button
    And I click on customer form edit button
    And I fill "John" to name field
    And I fill "testuser+1234567890@shoplineapp.com" to email field
    And I fill "0987666666" to phone field
    And I select gender dropdown option included "Female" of gender dropdown
    And I fill "Jan 01, 1980" to customer birthday
    And I click on customer save button
    Then I should see alert
    Then name field should contain "John"
    Then email field should contain "testuser+1234567890@shoplineapp.com"
    Then phone field should contain "0987666666"
    Then gender field should contain "Female"
    Then birthday field should contain "Jan 01, 1980"
    Then I scroll down to update order delivery status dropdown
    When I select update order delivery status option included "Returned" of update order delivery status dropdown
    And I click on yes button
    Then delivery status should contain "Returned"
    Then I scroll down to order date
    Then I should see customer form edit button
    And I click on customer form edit button
    And I fill "Manymoney" to name field
    And I fill "0987555555" to phone field
    And I fill "testuser+1234567890@shoplineapp.com" to email field
    And I click on customer save button
    Then I should see alert
    Then name field should contain "Manymoney"
    Then phone field should contain "0987555555"
    When I select update order delivery status option included "Shipped" of update order delivery status dropdown
    Then I should see yes button
    And I click on yes button
    And I should see delivery status
    Then delivery status should contain "Shipped"
    Then I scroll down to order date
    Then I should see customer form edit button
    And I click on customer form edit button
    And I fill "testuser+1234567890@shoplineapp.com" to email field
    Then I should see name field
    Then I should see phone field
    Then I should see gender dropdown
    Then I should see customer birthday
    And I select gender dropdown option included "Male" of gender dropdown
    And I fill "Jan 02, 1980" to customer birthday
    And I click on customer save button
    Then I should see alert
    Then email field should contain "testuser+1234567890@shoplineapp.com"
    Then gender field should contain "Male"
    Then birthday field should contain "Jan 02, 1980"
    When I select update order delivery status option included "Arrived" of update order delivery status dropdown
    Then I should see yes button
    And I click on yes button
    And I should see delivery status
    Then delivery status should contain "Arrived"
    Then I scroll down to order date
    Then I should see customer form edit button
    And I click on customer form edit button
    And I fill "testuser+0987654321@shoplineapp.com" to email field
    Then I should see name field
    Then I should see phone field
    Then I should see gender dropdown
    Then I should see customer birthday
    And I click on customer save button
    Then I should see alert
    Then email field should contain "testuser+0987654321@shoplineapp.com"
    When I select update order delivery status option included "Collected" of update order delivery status dropdown
    Then I should see yes button
    And I click on yes button
    And I should see delivery status
    Then delivery status should contain "Collected"
    Then I scroll down to order date
    Then I should see customer form edit button
    And I click on customer form edit button
    And I fill "testuser+1234567890@shoplineapp.com" to email field
    Then I should see name field
    Then I should see phone field
    Then I should see gender dropdown
    Then I should see customer birthday
    And I select gender dropdown option included "Undisclosed" of gender dropdown
    And I fill "Jan 03, 1980" to customer birthday
    And I click on customer save button
    Then I should see alert
    Then email field should contain "testuser+1234567890@shoplineapp.com"
    Then gender field should contain "Undisclosed"
    Then birthday field should contain "Jan 03, 1980"
    When I select update order delivery status option included "Returning" of update order delivery status dropdown
    Then I should see yes button
    And I click on yes button
    Then I should see delivery status
    Then delivery status should contain "Returning"
    Then I scroll down to order date
    Then I should see customer form edit button
    And I click on customer form edit button
    And I fill "testuser+0987654321@shoplineapp.com" to email field
    Then I should see name field
    Then I should see phone field
    Then I should see gender dropdown
    Then I should see customer birthday
    And I select gender dropdown option included "Female" of gender dropdown
    And I fill "Jan 04, 1980" to customer birthday
    And I click on customer save button
    Then I should see alert
    Then email field should contain "testuser+0987654321@shoplineapp.com"
    Then gender field should contain "Female"
    Then birthday field should contain "Jan 04, 1980"
    And ---ROLL BACK---
    Given I am on Customer Settings Page
    Then I should see checkout include
    And I click on 1st checkout include
    And I click on 2nd checkout include
    And I click on update button
    Then I should be redirected to Customer Settings Page
    And I scroll down to add button
    And I click on delete custom button
    And I click on OK button
    And I click on update button
    Then I should be redirected to Customer Settings Page
    Then limit counter should contain "0 / 5"