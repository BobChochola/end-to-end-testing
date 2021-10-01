@BaseCase @Admin @Storefront @Order @OrderSplit @spiltOrderCanSyncPaymentStatus-Ecpay @fixture-shop @fixture-product @fixture-payment @fixture-delivery
Feature: Split child order can change payment status integrated payment method - Ecpay
  As a merchant
  I can edit split the child order payment status, did not sync parent order

  Background:
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
    When I click on login button
    Then I should be redirected to Shop Login Page
    And I fill email to email field
    And I fill password to password field
    And I click on submit button
    Then I should be redirected to Shop Cart Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "7-11 Pickup only (C2C)" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "CVS via ECpay" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I click on pick store button
    Then I should be redirected to Seven Pick Store Page
    When I click on id search button
    And I switch to main frame frame
    Then I should see store id field
    And I fill store id to store id field
    And I click on search button
    And I click on 1st store list
    When I switch to default frame
    Then I should see store confirm button
    And I click on store confirm button
    And I click on agree button
    And I click on submit button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I check contact number field and fill phone
    And I check and click save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Ecpay Checkout Page
    And I click on get cvs button
    Then I should see back to shop button
    And I click on back to shop button
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

  @EAT-1180 @EAT-1180-1
  Scenario: Split child order can change payment status integrated payment method - Ecapy
    Given I am on Orders Page
    And I input order number to search field
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
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