@BaseCase @Admin @Order @ManualOrder @manualOrderCustomLocalDeliveryAndInvoice
@fixture-payment @fixture-delivery @fixture-product @premiumFeature @EAT-818 @EAT-818-3
Feature: Manual order should able to use custom delivery to create an order and able to create e-invoice
  As a merchant
  I want to create manual order with custom delivery/local delivery and Non-physical electronic invoice (Mobile Barcode/NPC Barcode)

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
    Given I am on Staff Setting Add Page
    And I fill 'testuser@shoplineapp.com' to email field
    And I click on add button
    Then I should be redirected to Edit Staff Permissions Page
    And I check and click unchecked give full access checkbox
    And I scroll down to update button
    And I click on update button
    Then I should be redirected to Staff Setting Page

  @EAT-818-3-1
  Scenario: manual order with custom delivery + Non-physical electronic invoice(Mobile Barcode)
    Given I am on Orders Create Page
    When I click on select customer button
    And I input email to search customer field
    And I click on 1st row of customer checkbox
    And I click on ok save button
    Then I should see phone number field
    And I fill phone to phone number field
    And I click on save phone number checkbox
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
    And I select delivery method dropdown option included 'Custom Delivery' of delivery method dropdown
    Then I should see same as customer info checkbox
    And I click on same as customer info checkbox
    When I click on delivery next button
    Then I should see payment method dropdown
    When I select payment method dropdown option included 'Custom' of payment method dropdown
    Then I wait for 3 seconds for loading
    And I select invoice type dropdown option included 'Non-physical electronic invoice' of invoice type dropdown
    And I select invoice carrier type dropdown option included 'Mobile Barcode' of invoice carrier type dropdown
    And I fill '/1234567' to invoice mobile barcode field
    Then I should see create order button
    And I click on create order button
    
    Then I should be redirected to Orders Show Page
    Then product details should contain "15th Product for Checkout"
    When I scroll down to delivery form
    Then delivery method should contain 'Custom Delivery'
    When I scroll down to create receipt button
    Then invoice type request should contain 'Non-physical electronic invoice'
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

  @EAT-818-3-2
  Scenario: manual order with local delivery + Non-physical electronic invoice(NPC Barcode)
    Given I am on Orders Create Page
    When I click on select customer button
    And I input email to search customer field
    And I click on 1st row of customer checkbox
    And I click on ok save button
    Then I should see phone number field
    And I fill phone to phone number field
    And I click on save phone number checkbox
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
    And I select delivery method dropdown option included 'Local Delivery' of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select delivery address dropdown option included 'Taipei City' of 1st delivery address dropdown
    And I wait for 3 seconds for loading
    And I select delivery address dropdown option included '100 Zhongzheng District' of 2nd delivery address dropdown
    And I fill address to delivery address field
    Then I should see same as customer info checkbox
    And I click on same as customer info checkbox
    When I click on delivery next button
    Then I should see payment method dropdown
    When I select payment method dropdown option included 'Bank Transfer' of payment method dropdown
    And I select invoice type dropdown option included 'Non-physical electronic invoice' of invoice type dropdown
    And I select invoice carrier type dropdown option included 'NPC Barcode' of invoice carrier type dropdown
    And I fill 'AA12345678900000' to invoice NPC barcode field
    Then I should see create order button
    And I click on create order button

    Then I should be redirected to Orders Show Page
    Then product details should contain "15th Product for Checkout"
    When I scroll down to delivery form
    Then delivery method should contain 'Local Delivery'
    Then delivery address should contain 'Taiwan'
    Then delivery address should contain 'Taipei City'
    Then delivery address should contain 'Zhongzheng District'
    Then delivery address should contain '100'
    Then delivery address should contain address
    When I scroll down to create receipt button
    Then invoice type request should contain 'Non-physical electronic invoice'
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