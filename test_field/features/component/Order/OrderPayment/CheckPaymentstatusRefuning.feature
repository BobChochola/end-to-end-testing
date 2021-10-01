@BaseCase @Admin @Storefront @Order @OrderPayment @checkPaymentStatusRefuning
@fixture-shop @fixture-product @fixture-payment @EAT-574
Feature:Merchants can update the payment status to "refunding", letting customers know that the refund is processing.
  As a merchant,
  I want to update payment status to “refunding”
  As a customer,
  I can check the payment status

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

  Scenario:Merchants update 'Refuning' and customer can check payment status on google email
    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    When I click on shop all button

    Then I should be redirected to Shop Product Index Page
    When I input "18th Product for Checkout" to search field
    Then 1st product of products list should contain '18th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button

    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button

    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I select Refunding of payment status dropdown
    When I click on send notification checkbox
    Then I should see YES button
    And I click on yes button
    Then I should see order status
    Then payment status should equal to "Refunding"
    And I wait for 3 seconds for loading
    Then row of order activities logs should contain "Updated Order Payment As Refunding"
    Given I am on Orders Page
    Then row of payment status should equal to "Refunding"

    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Orders'
    Then I should be redirected to Shop Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Shop Orders Show Page
    Then 2nd row of payment detail should contain "Refunding"

    Given I am on Google Mail Page
    Then I should see account field
    When I fill merchant email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input order number to search field
    Then I should see search mail list
    When I click on row of mail list included "Payment status is updated to: Refunding"
    Then 1st mail detail title should contain "Payment status is updated to: Refunding"