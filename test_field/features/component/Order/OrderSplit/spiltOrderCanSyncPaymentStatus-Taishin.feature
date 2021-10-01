@BaseCase @Admin @Storefront @Order @OrderSplit @spiltOrderCanSyncPaymentStatus-Taishin @fixture-shop @fixture-product @fixture-payment @fixture-delivery @premiumFeature
Feature: Split child order can change payment status integrated payment method - Taishin
  As a merchant
  I can edit split the child order payment status, did not sync parent order

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

    Given I am on Payment Create Page
    When I select payment type dropdown option included 'Taishin' of payment type dropdown
    And I fill Taishin Merchant ID to id field
    And I fill Taishin TID to tid field
    And I fill "(dirty data) Taishin" to name field
    When I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Payment Setting Page

    Given I am on Shop Product Index Page
    When I input "10th Product for Checkout" to search field
    Then 1st product of products list should contain '10th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see product quantity field
    And I select dropdown option included "M" of variation dropdown
    Then I should see increase button
    And I click on increase button
    Then product quantity field should equal to "2"
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Local Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Taishin" of payment method dropdown
    Then I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I check and click save number checkbox
    And I click on same as checkbox
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill address to delivery address field
    And I fill name to cardholder name field
    And I fill tappay no space card number to card number field
    And I fill tappay expiry date to expiry date field
    And I fill cvc to cvc field
    And I click on agree terms checkbox
    And I click on place order button
    Then I should see error alert

  @EAT-1180 @EAT-1180-2
  Scenario: Split child order can change payment status integrated payment method - Taishin
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

    Given I am on Orders Page
    When I click on 1st row of order checkbox
    Then I should see bulk actions dropdown
    And I select Update Status of bulk actions dropdown
    And I select status dropdown option included 'Payment Status' of status type dropdown
    And I select status dropdown option included 'Refunding' of status item dropdown
    Then I should see update button
    When I click on update button
    Then I should see confirm popover
    When I click on send notification checkbox
    And I click on OK button
    Then 1st row of payment status should equal to "Refunding"
    Then 2nd row of payment status should equal to 'Unpaid'
    And ---ROLL BACK---
    Given I am on Shop Cart Page
    When I click on remove button
    Then I should see delete confirmation popover
    When I click on ok button
    Then I should not see delete confirmation popover
    Then empty message should contain "Your shopping cart is empty"

    Given I am on Payment Setting Page
    Then I click on 1st delete button of payment method list
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    And 1st row of payment method list should not contain "Taishin"