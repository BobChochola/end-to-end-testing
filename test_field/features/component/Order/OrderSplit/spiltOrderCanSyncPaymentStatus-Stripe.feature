@BaseCase @Admin @Storefront @Order @OrderSplit @spiltOrderCanSyncPaymentStatus-Stripe @baseLocation-HK @fixture-shop @fixture-product @fixture-payment @fixture-delivery
Feature:Split child order can change payment status integrated payment method - stripe
  As a merchant
  I can edit split the child order payment status, did not sync parent order

  Background:
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I fill "10" to product quantity field
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I scroll down to country list dropdown
    And I select country dropdown option included "Hong Kong" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Credit Card via Stripe" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I fill name to cardholder name field
    When I switch to stripe credit card frame frame
    And I simply fill '5' to stripe card number field
    And I simply fill '1' to stripe card number field
    And I simply fill '1' to stripe card number field
    And I simply fill '0' to stripe card number field
    And I simply fill '0' to stripe card number field
    And I simply fill '7' to stripe card number field
    And I simply fill '5' to stripe card number field
    And I simply fill '5' to stripe card number field
    And I simply fill '9' to stripe card number field
    And I simply fill '5' to stripe card number field
    And I simply fill '3' to stripe card number field
    And I simply fill '4' to stripe card number field
    And I simply fill '7' to stripe card number field
    And I simply fill '0' to stripe card number field
    And I simply fill '0' to stripe card number field
    And I simply fill '4' to stripe card number field
    When I switch to default frame
    When I switch to stripe expiry date frame frame
    And I simply fill '0' to stripe expiry date field
    And I simply fill '7' to stripe expiry date field
    And I simply fill '/' to stripe expiry date field
    And I simply fill '2' to stripe expiry date field
    And I simply fill '2' to stripe expiry date field
    When I switch to default frame
    When I switch to stripe cvc frame frame
    And I fill cvc to stripe cvc field
    Then I switch to default frame
    And I click on agree terms checkbox
    And I click on place order button
    Then I should see error alert

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

  @EAT-1180 @EAT-1180-3
  Scenario: Split child order can change payment status integrated payment method - stripe
    Given I am on Orders Page
    Then 1st row of order status should contain "Cancelled"
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I select Confirmed of order status dropdown
    And I click on send notification checkbox
    And I click on YES button
    Then order status should equal to "Confirmed"

    When I select Paid of payment status dropdown
    Then I should see confirm popover
    When I click on YES button
    Then payment status should equal to "Paid"

    When I click on split button
    Then I should be redirected to Order Split Page
    Then I should see row of split quantity field
    When I fill "1" to 1st row of split quantity field
    And I click on split button
    Then I should see confirm popup
    When I click on confirm button
    Then I should be redirected to Orders Page
    Then I should see alert
    When I click on 2nd row of order links
    Then I should be redirected to Orders Show Page
    Then alert should contain "This order has been split into (child order):"

    Then payment status should equal to "Paid"
    When I select Unpaid of payment status dropdown
    Then I should see confirm popover
    When I click on YES button
    Then payment status should equal to "Unpaid"

    Given I am on Orders Page
    Then 1st row of payment status should equal to 'Paid'
    Then 2nd row of payment status should equal to 'Unpaid'
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then alert should contain "This order is split from (parent order):"
    When I select Unpaid of payment status dropdown
    Then I should see confirm popover
    When I click on YES button
    Then payment status should equal to "Unpaid"