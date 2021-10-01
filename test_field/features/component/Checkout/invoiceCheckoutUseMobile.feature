@BaseCase @Storefront @Checkout @Invoice @invoiceCheckoutUseMobile
@fixture-shop @fixture-product @fixture-delivery @fixture-payment @premiumFeature
Feature: e-invoice for checkout
  As a customer
  I want to checkout my product and have order e-invoice use carrier by mobile phone

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

  @EAT-492 
  Scenario: invoice and void the e-invoice for checkout order
    Given I am on Shop Product Index Page
    When I input "4th Product for Checkout" to search field
    Then 1st product of products list should contain "4th Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I click on add to cart button
    And I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then I select country dropdown option included 'Taiwan' of country list dropdown
    And I wait for 3 seconds for loading
    Then I select delivery dropdown option included 'Custom Delivery' of delivery method dropdown
    And I wait for 3 seconds for loading
    Then I select payment dropdown option included 'Custom' of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I scroll down to einvoice dropdown
    Then I select einvoice dropdown option included 'Non-physical electronic invoice' of einvoice dropdown
    Then I select einvoice carrier dropdown option included 'Mobile Barcode' of einvoice carrier dropdown
    And I wait for 3 seconds for loading
    Then I should see mobile barcode field
    And I fill '/AAAAAAA' to mobile barcode field
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then 1st row of product items should contain '4th Product for Checkout'
    And ---ROLL BACK---
    Given I am on Order Setting Page
    When I click on invoice toggle
    And I click on update button
    Then I should be redirected to Dashboard Page