@BaseCase @Admin @Storefront @Order @OrderPayment @orderPaymentPaidCheck @fixture-delivery @fixture-payment @fixture-shop @fixture-product
Feature: Confirmed Paid Shipped Order Check Status
  As a merchant
  I can check detailed of order

  Background:
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
    Then I mark the value of order confirm info as variable order info

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

  @C3765  @C3765-1
  Scenario: Confirmed Paid Shipped Order Check Status
    Given I am on Orders Page
    Then 1st row of order links should contain order number
    And I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I select Confirmed of order status dropdown
    Then I should see confirm popover
    When I click on send notification checkbox
    And I click on YES button
    Then I should see order status dropdown
    Then order status should equal to "Confirmed"
    When I select Paid of payment status dropdown
    Then I should see confirm popover
    When I click on send notification checkbox
    And I click on YES button
    Then I should see payment status dropdown
    Then payment status should equal to "Paid"
    And I select Shipped of delivery status dropdown
    Then I should see confirm popover
    When I click on send notification checkbox
    And I click on YES button
    Then I scroll down to delivery status dropdown
    Then I should see delivery status dropdown
    Then delivery status should equal to "Shipped"
    Given I am on Orders Page
    Then 1st row of order list should contain "Confirm"
    Then 1st row of order list should contain "Paid"
    Then 1st row of order list should contain "Shipped"
    Then I wait for 290 seconds for mail sent
    Given I am on Google Mail Page
    Then I should see account field
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    And I should see search field
    And I input order number to search field
    Then I should see search mail list
    Then search mail list should contain "Order status is updated to: Confirmed"
    Then search mail list should contain "Payment status is updated to: Paid"
    Then search mail list should contain "Delivery status is updated to: Shipped"