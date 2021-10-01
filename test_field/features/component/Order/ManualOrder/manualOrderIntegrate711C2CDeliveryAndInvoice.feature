@BaseCase @Admin @Order @ManualOrder @Invoice @manualOrderIntegrate711C2CDeliveryAndInvoice
@fixture-payment @fixture-delivery @fixture-product @premiumFeature @EAT-818 @EAT-818-2
Feature: Manual order should able to use 7-11 C2C delivery method to create an order and able to create e-invoice
  As a merchant
  I want to create manual order with 7-11 C2C delivery and Uniform invoice/Duplicate Uniform Invoice

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

  @EAT-818-2-1
  Scenario: manual order (new custom) with 7-11 Pickup only (C2C) + Uniform invoice
    Given I am on Orders Create Page
    When I click on new customer button
    And I fill name to name field
    And I fill email to email field
    And I fill phone to phone number field
    Then I click on next button
    Then I should see select product button
    When I click on select product button
    And I input '15th Product for Checkout' to search product field
    Then 1st row of select product should contain '15th Product for Checkout'
    And I click on 1st row of select product
    And I click on ok save button
    Then I should see product next button
    Then I click on product next button
    Then I should see shipping destination dropdown
    And I select shipping destination dropdown option included 'Taiwan' of shipping destination dropdown
    Then I wait for 3 seconds for loading
    And I select delivery method dropdown option included '7-11 Pickup only (C2C)' of delivery method dropdown
    Then I should see same as customer info checkbox
    And I click on same as customer info checkbox
    Then I should see seven icon
    When I click on find a store button
    And I switch to 2 of tabs
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
    And I switch to 1 of tabs
    Then I should be redirected to Orders Create Page
    Then store detail should contain shop name
    When I click on delivery next button
    Then I should see payment method dropdown
    When I select payment method dropdown option included 'Custom' of payment method dropdown
    Then I wait for 3 seconds for loading
    And I select invoice type dropdown option included 'Uniform invoice' of invoice type dropdown
    And I fill 'Shopline' to company name field
    And I fill '12345678' to tax ID field
    And I select invoice country dropdown option included 'Taiwan' of invoice country dropdown
    And I wait for 3 seconds for loading
    And I select invoice city dropdown option included 'Taipei City' of invoice city dropdown
    And I wait for 3 seconds for loading
    And I select invoice district dropdown option included '100 Zhongzheng District' of invoice district dropdown
    And I fill address to invoice address field
    Then I should see create order button
    And I click on create order button
    
    Then I should be redirected to Orders Show Page
    Then product details should contain "15th Product for Checkout"
    When I scroll down to delivery form
    Then delivery method should contain '7-11 Pickup only (C2C)'
    Then delivery shop code should contain shop code
    Then delivery shop name should contain shop name
    When I scroll down to create receipt button
    Then invoice type request should contain 'Uniform invoice'
    Then invoice company name should contain 'Shopline'
    Then invoice tax id should contain '12345678'
    Then invoice address should contain 'Taiwan'
    Then invoice address should contain 'Taipei City'
    Then invoice address should contain '100 Zhongzheng District'
    And I click on create receipt button
    Then I should see receipt details alert
    Then receipt details alert should contain "Successfully issued an invoice!"
    Then I should see invoice number
    Then I should see invoice status
    Then invoice number should contain "Taxable"
    Then invoice status should contain "active"
    Then ---ROLL BACK---
    When I Refresh
    And I click on cancel receipt button
    And I fill "test" to reason field
    And I click on send reason button
    Then I should see receipt details alert
    Then receipt details alert should contain "Successfully voided an invoice!"
    Then invoice status should contain "cancel"
    Given I am on Order Setting Page
    When I click on invoice toggle
    And I click on update button
    Then I should be redirected to Dashboard Page

  @EAT-818-2-2
  Scenario: manual order (new custom) with 7-11 Pickup and pay in store (C2C) + Duplicate Uniform Invoice
    Given I am on Orders Create Page
    When I click on new customer button
    And I fill name to name field
    And I fill email to email field
    And I fill phone to phone number field
    Then I click on next button
    Then I should see select product button
    When I click on select product button
    And I input '15th Product for Checkout' to search product field
    Then 1st row of select product should contain '15th Product for Checkout'
    And I click on 1st row of select product
    And I click on ok save button
    Then I should see product next button
    Then I click on product next button
    Then I should see shipping destination dropdown
    And I select shipping destination dropdown option included 'Taiwan' of shipping destination dropdown
    Then I wait for 3 seconds for loading
    And I select delivery method dropdown option included '7-11 Pickup and pay in store (C2C)' of delivery method dropdown
    Then I should see same as customer info checkbox
    And I click on same as customer info checkbox
    Then I should see seven icon
    When I click on find a store button
    And I switch to 2 of tabs
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
    And I switch to 1 of tabs
    Then I should be redirected to Orders Create Page
    Then store detail should contain shop name
    When I click on delivery next button
    Then I should see payment method dropdown
    When I select payment method dropdown option included 'Pay on 7-11 Store Pickup (C2C)' of payment method dropdown
    And I select invoice type dropdown option included 'Uniform invoice' of invoice type dropdown
    And I wait for 3 seconds for loading
    And I fill 'test' to company name field
    And I fill '12345678' to tax ID field
    And I select invoice country dropdown option included 'Taiwan' of invoice country dropdown
    And I wait for 3 seconds for loading
    And I select invoice city dropdown option included 'Taipei City' of invoice city dropdown
    And I wait for 3 seconds for loading
    And I select invoice district dropdown option included '100 Zhongzheng District' of invoice district dropdown
    And I fill address to invoice address field
    Then I should see create order button
    And I click on create order button
    
    Then I should be redirected to Orders Show Page
    Then product details should contain "15th Product for Checkout"
    When I scroll down to delivery form
    Then delivery method should contain '7-11 Pickup and pay in store (C2C)'
    Then delivery shop code should contain shop code
    Then delivery shop name should contain shop name
    Then invoice type request should contain 'Uniform invoice'
    Then invoice address should contain 'Taiwan'
    Then invoice address should contain 'Taipei City'
    Then invoice address should contain '100 Zhongzheng District'
    Then I scroll down to create receipt button
    And I click on create receipt button
    Then I should see receipt details alert
    Then receipt details alert should contain "Successfully issued an invoice!"
    Then I should see invoice number
    Then I should see invoice status
    Then invoice number should contain "Taxable"
    Then invoice status should contain "active"
    Then ---ROLL BACK---
    When I Refresh
    And I click on cancel receipt button
    And I fill "test" to reason field
    And I click on send reason button
    Then I should see receipt details alert
    Then receipt details alert should contain "Successfully voided an invoice!"
    Then invoice status should contain "cancel"
    Given I am on Order Setting Page
    When I click on invoice toggle
    And I click on update button
    Then I should be redirected to Dashboard Page