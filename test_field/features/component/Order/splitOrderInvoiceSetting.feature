@BaseCase @Admin @Storefront @Order @Invoice @splitOrderInvoiceSetting
@fixture-shop @fixture-product @fixture-payment @fixture-delivery
Feature: Split order re-invoice setting toggle
  As a merchant
  I want to set up invoice setting
  so that I can see split order invoice setting toggle
  Background:
    Given I am on Admin Login Page
    And I fill correct admin email to email field
    And I fill correct admin password to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

  @EAT-575 @EAT-575-1 @EAT-968 @EAT-968-1
  Scenario: Check message on Order Split Page when split-order-invoice-setting-toggle off.
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
    Given I am on Order Setting Page
    When I check and click invoice toggle on
    Then I should see invoice toggle off
    Then I should not see spilt order toggle
    When I click on update button
    Then I should be redirected to Dashboard Page

    When I select Logout of User Menu
    Then I should be redirected to Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

    Given I am on Shop Product Index Page
    When I input "7th Product for Checkout" to search field
    Then 1st product of products list should contain '7th Product for Checkout'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill "2" to product quantity field
    When I click on add to cart button
    Then I should see cart panel
    And I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Local Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill phone to contact number field
    And I fill email to email address field
    And I click on same as checkbox
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill address to delivery address field
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info

    Given I am on Order Setting Page
    Then I should see invoice toggle off
    Then I should not see spilt order toggle

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I click on split button
    Then I should be redirected to Order Split Page
    When I fill '1' to 1st row of split quantity field
    And I click on split button
    Then I should see confirm popup
    Then confirm popup should contain toggle off pop-up reminder

    Given I am on Dashboard Page
    When I select Logout of User Menu
    Then I should be redirected to Admin Login Page
    And I fill correct admin email to email field
    And I fill correct admin password to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

    Given I am on Order Setting Page
    Then I check and click invoice toggle off
    Then I should see invoice toggle on
    Then I should see spilt order toggle off
    When I click on update button
    Then I should be redirected to Dashboard Page
    When I select Logout of User Menu
    Then I should be redirected to Admin Login Page
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
    Then I should see invoice toggle on
    Then I should see spilt order toggle off
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I click on split button
    Then I should be redirected to Order Split Page
    When I fill '1' to 1st row of split quantity field
    And I click on split button
    Then I should see confirm popup
    Then confirm popup should contain toggle off pop-up reminder
    And I click on cancel button
    And I select ZH of language dropdown
    And I click on split button
    Then I should see confirm popup
    Then confirm popup should contain toggle off pop-up reminder zh
    And I click on cancel button
    And I select EN of language dropdown
    Given I am on Dashboard Page
    When I select Logout of User Menu
    Then I should be redirected to Admin Login Page
    And I fill correct admin email to email field
    And I fill correct admin password to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button
    And ---ROLL BACK---
    Given I am on Order Setting Page
    When I click on invoice toggle
    And I click on update button
    Then I should be redirected to Dashboard Page

  @EAT-575 @EAT-575-2 @EAT-968 @EAT-968-2
  Scenario: Check message on Order Split Page and Orders Show Page when split-order-invoice-setting-toggle on.
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

    Given I am on Order Setting Page
    Then I should see invoice toggle on
    Then I click on taxable checkbox
    When I check and click spilt order toggle off
    Then I should see spilt order toggle on
    When I click on update button
    Then I should be redirected to Dashboard Page

    Given I am on Shop Product Index Page
    When I input "7th Product for Checkout" to search field
    Then 1st product of products list should contain '7th Product for Checkout'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill "2" to product quantity field
    When I click on add to cart button
    Then I should see cart panel
    And I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Local Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill phone to contact number field
    And I fill email to email address field
    And I click on same as checkbox
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill address to delivery address field
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I should not see invoice type
    When I click on split button
    Then I should be redirected to Order Split Page
    When I fill '1' to 1st row of split quantity field
    And I select ZH of language dropdown
    And I click on split button
    Then I should see confirm popup
    Then confirm popup should contain toggle on pop-up reminder zh
    And I click on cancel button
    And I select EN of language dropdown
    Then I should see split button
    And I click on split button
    Then I should see confirm popup
    Then confirm popup should contain toggle on pop-up reminder
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Orders Page
    Then 1st row of order links should contain child order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I select ZH of language dropdown
    Then invoice type should contain '應稅'
    Then I should see change invoice tax type button
    When I click on change invoice tax type button
    Then I should see popover
    Then popover should contain '請注意：若此筆訂單為海外訂單，系統將以海外稅收設定開立發票'
    Then I should see popover taxable checkbox
    Then I should see popover tax free checkbox
    And I click on popover tax free checkbox
    When I click on popover confirm button
    Then I should see receipt details alert
    Then invoice type should contain '免稅'
    When I click on create receipt button
    Then I should see receipt details alert
    Then 1st invoice number should contain '免稅'
    Then 1st invoice status should contain '已開立'
    Then I should not see change invoice tax type button
    Then I Refresh
    When I click on cancel receipt button
    Then I fill 'test' to reason field
    Then I click on send reason button
    Then I should see receipt details alert
    Then I should see change invoice tax type button
    When I select EN of language dropdown
    Then invoice type should contain 'Tax Free'
    Then I should see change invoice tax type button
    When I click on change invoice tax type button
    Then I should see popover
    Then popover should contain 'Note: Order invoice will be created as oversea tax type if this order is considered as an oversea order.'
    Then I should see popover taxable checkbox
    Then I should see popover tax free checkbox
    And I click on popover taxable checkbox
    When I click on popover confirm button
    Then I should see receipt details alert
    Then invoice type should contain 'Taxable'
    When I click on create receipt button
    Then I should see receipt details alert
    Then 1st invoice number should contain 'Taxable'
    Then 1st invoice status should contain 'active'
    Then I should not see change invoice tax type button
    Then I Refresh
    When I click on cancel receipt button
    Then I fill 'test' to reason field
    Then I click on send reason button
    Then I should see receipt details alert
    Then I should see change invoice tax type button

    Given I am on Orders Page
    When I input order number to search field
    Then 2nd row of order links should equal to order number
    Then I click on 2nd row of order links
    Then I should be redirected to Orders Show Page
    Then order no should contain order number
    Then I should not see change invoice tax type button
    When I click on create receipt button
    Then I should see receipt details alert
    Then I should not see change invoice tax type button
    Then 1st invoice number should contain 'Taxable'
    Then 1st invoice status should contain 'active'
    Then I Refresh
    When I click on cancel receipt button
    Then I fill 'test' to reason field
    Then I click on send reason button
    Then I should see receipt details alert
    Then I should not see change invoice tax type button

    Then ---ROLL BACK---
    Given I am on Order Setting Page
    Then I should see invoice toggle on
    Then I check and click spilt order toggle on
    Then I should see spilt order toggle off
    When I click on invoice toggle
    When I click on update button
    Then I should be redirected to Dashboard Page
