@BaseCase @Admin @Storefront @Payment @OceanPay @paymentCreateOceanPayment
@loginAsSuperAdmin @baseLocation-CN @fixture-shop @fixture-product @fixture-delivery @fixture-oceanpay
Feature: Ocean Payment Create Feature
  As a merchant
  I want to create new payment
  So that I can have different payments for my shoppers

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

  Scenario: Create payment - Pay on Ocean Payment
    Given I am on Payment Setting Page
    When I click on add button
    Then I should be redirected to Payment Create Page
    When I select payment type dropdown option included 'OceanPayment' of payment type dropdown
    And I fill OceanPayment Merchant ID to id field
    And I fill Terminal Key to terminal key field
    And I fill Private Key to private key field
    And I select ocean payments dropdown option included 'Credit Card' of ocean payments dropdown
    And I fill "(dirty data) OceanPayment Credit Card" to name field
    When I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Payment Setting Page
    And 1st row of payment method list should contain "OceanPayment Credit Card"

  # Scenario: Check Ocean Payment on Shop Page
  #   Given I am on Shop Product Index Page
  #   When I input "1st Product for Checkout" to search field
  #   Then 1st product of products list should contain '1st Product for Checkout'
  #   When I click on 1st product of products list
  #   Then I should be redirected to Shop Product Show Page
  #   And I click on add to cart button
  #   Then I should see cart panel
  #   When I click on checkout button
  #   Then I should be redirected to Shop Cart Page
  #   And I select country dropdown option included "Spain" of country list dropdown
  #   And I wait for 5 seconds for loading
  #   And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
  #   And I wait for 5 seconds for loading
  #   And I select payment dropdown option included "OceanPayment" of payment method dropdown
  #   And I wait for 5 seconds for loading
  #   Then delivery fee should contain "10.00"
  #   And I click on proceed to checkout button
  #   Then I should be redirected to Shop Checkout Page
  #   When I fill name to name field
  #   And I fill email to email address field
  #   And I fill phone to contact number field
  #   And I click on same as checkbox
  #   And I click on agree terms checkbox
  #   And I click on accept marketing checkbox
  #   And I fill address to delivery address field
  #   And I fill city to delivery city field
  #   And I fill state to delivery state field
  #   When I click on place order button
  #   Then I should be redirected to Ocean Payment Page
  #   And I fill card number to card number field
  #   And I fill expiry date to expiration date field
  #   And I fill cvc to secure code field
  #   When I click on pay now button
  #   Then I should be redirected to Shop Order Confirm Page
  #   When I click on summary collapse
  #   Then 1st row of product unit price should contain "CN¥50.00"
  #   Then 1st row of product quantity should equal to "1"
  #   Then 1st row of product items should contain "1st Product for Checkout"
  #   Then item subtotal should contain "CN¥50.00"
  #   Then delivery fee should contain "CN¥10.00"
  #   Then total should contain "CN¥60.00"

  #   Given I am on Orders Page
  #   When I click on additional filters button
  #   Then I should see additional filters section
  #   When I select filter dropdown option included 'Payment Method' of filter dropdown
  #   And I select payment method filter dropdown option included 'OceanPayment' of payment method filter dropdown
  #   Then I should see row of order links
  #   When I click on 1st row of order links
  #   Then I should be redirected to Orders Show Page
  #   Then payment type should contain 'OceanPayment'
  #   Then subtotal should contain 'CN¥50.00'
  #   Then delivery fee should contain 'CN¥10.00'
  #   Then total should contain 'CN¥60.00'

    And ---ROLL BACK---
    Given I am on Payment Setting Page
    And 1st row of payment method list should contain "OceanPayment"
    When I click on 1st delete button of payment method list
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain '(dirty data) OceanPayment Credit Card'