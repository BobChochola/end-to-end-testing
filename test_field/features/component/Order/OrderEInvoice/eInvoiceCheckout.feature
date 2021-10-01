@BaseCase @Admin @Storefront @Checkout @Order @OrderEInvoice @eInvoiceCheckout
@fixture-shop @fixture-product @fixture-delivery @fixture-payment @premiumFeature
Feature: e-invoice for checkout
  As a customer
  I want to checkout my product and have order e-invoice

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

    Given I am on Order Setting Page
    When I check and click invoice toggle off
    And I should see Nat No field
    And I fill Nat No to Nat No field
    And I select Donation Recipient of Donation Recipient dropdown
    And I fill 'SLINE02' to website code field
    And I fill '4DDC6C4EE' to api password field
    And I select tax type dropdown option included 'Taxable' of tax type dropdown
    Then I should see update button
    And I click on update button
    Then I should be redirected to Dashboard Page

  @C3776 @C3777 @EAT-969 @EAT-969-1
  Scenario: invoice and void the e-invoice for checkout order. (tax type = taxable)
    Given I am on Order Setting Page
    Then invoice toggle should be checked
    When I click on taxable checkbox
    When I click on update button
    Then I should be redirected to Dashboard Page

    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'

    Given I am on Shop Product Index Page
    When I input "4th Product for Checkout" to search field
    Then 1st product of products list should contain '4th Product for Checkout'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I click on add to cart button
    Then I should see cart panel
    And I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    Then I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    Then I select payment dropdown option included "Bank" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I scroll down to einvoice dropdown
    Then I select einvoice dropdown option included "Donate" of einvoice dropdown
    And I should see donate charity group
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info
    When I click on summary collapse
    Then 1st row of product items should contain "4th Product for Checkout"

    Given I am on Orders Page
    When I fill order number to search field
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    And I should see donate group
    And I click on create receipt button
    Then I should see receipt details alert
    Then receipt details alert should contain "Successfully issued an invoice!"
    Then I should see invoice number
    Then I should see invoice status
    Then invoice number should contain "Taxable"
    Then invoice status should contain "active"
    When I click on split button
    Then I get idcode from page url and mask as order id

    When I switch to 2 of tabs
    Given I am on Google Mail Page
    Then I should see account field
    When I fill merchant email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button

    Given I am on Action Logs Order Invoice Page
    Then id should contain '\"tax_type\":\"1\"'
    Then id should contain order id

    When I switch to 1 of tabs
    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Orders'
    Then I should be redirected to Shop Orders Page
    Then 1st row of order should contain order number
    Then I click on 1st row of order links
    Then I should be redirected to Shop Orders Show Page
    Then order info should contain 'Taxable'
    Then order info should contain 'Completed'

    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    And I click on cancel receipt button
    And I fill "test" to reason field
    And I click on send reason button
    Then I should see receipt details alert
    Then receipt details alert should contain "Successfully voided an invoice!"
    Then I should see invoice number
    Then I should see invoice status
    Then I should see invoice date
    Then invoice date should contain invoice date
    Then invoice status should contain "cancel"

    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Orders'
    Then I should be redirected to Shop Orders Page
    Then 1st row of order should contain order number
    Then I click on 1st row of order links
    Then I should be redirected to Shop Orders Show Page
    Then order info should contain 'Taxable'
    Then order info should contain 'Canceled'
    And ---ROLL BACK---
    Given I am on Order Setting Page
    Then invoice toggle should be checked
    Then I click on taxable checkbox
    When I click on invoice toggle
    When I click on update button
    Then I should be redirected to Dashboard Page

  @EAT-969 @EAT-969-2
  Scenario: invoice and void the e-invoice for checkout order. (tax type = tax free)
    Given I am on Order Setting Page
    Then invoice toggle should be checked
    Then I click on tax free checkbox
    When I click on update button
    Then I should be redirected to Dashboard Page

    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'

    Given I am on Shop Product Index Page
    When I input "4th Product for Checkout" to search field
    Then 1st product of products list should contain '4th Product for Checkout'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I click on add to cart button
    Then I should see cart panel
    And I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    Then I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    Then I select payment dropdown option included "Bank" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I scroll down to einvoice dropdown
    Then I select einvoice dropdown option included "Donate" of einvoice dropdown
    And I should see donate charity group
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info
    When I click on summary collapse
    Then 1st row of product items should contain "4th Product for Checkout"

    Given I am on Orders Page
    When I fill order number to search field
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    And I should see donate group
    And I click on create receipt button
    Then I should see receipt details alert
    Then receipt details alert should contain "Successfully issued an invoice!"
    Then I should see invoice number
    Then I should see invoice status
    Then invoice number should contain "Tax Free"
    Then invoice status should contain "active"
    When I click on split button
    Then I get idcode from page url and mask as order id

    When I switch to 2 of tabs
    Given I am on Google Mail Page
    Then I should see account field
    When I fill merchant email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button

    Given I am on Action Logs Order Invoice Page
    Then id should contain '\"tax_type\":\"3\"'
    Then id should contain order id

    When I switch to 1 of tabs
    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Orders'
    Then I should be redirected to Shop Orders Page
    Then 1st row of order should contain order number
    Then I click on 1st row of order links
    Then I should be redirected to Shop Orders Show Page
    Then order info should contain 'Tax Free'
    Then order info should contain 'Completed'

    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    And I click on cancel receipt button
    And I fill "test" to reason field
    And I click on send reason button
    Then I should see receipt details alert
    Then receipt details alert should contain "Successfully voided an invoice!"
    Then I should see invoice number
    Then I should see invoice status
    Then I should see invoice date
    Then invoice date should contain invoice date
    Then invoice status should contain "cancel"

    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Orders'
    Then I should be redirected to Shop Orders Page
    Then 1st row of order should contain order number
    Then I click on 1st row of order links
    Then I should be redirected to Shop Orders Show Page
    Then order info should contain 'Tax Free'
    Then order info should contain 'Canceled'

    And ---ROLL BACK---
    Given I am on Order Setting Page
    Then invoice toggle should be checked
    Then I click on taxable checkbox
    When I click on invoice toggle
    When I click on update button
    Then I should be redirected to Dashboard Page