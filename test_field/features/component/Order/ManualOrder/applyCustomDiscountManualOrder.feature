@BaseCase @Admin @Order @ManualOrder @applyCustomDiscountManualOrder @fixture-product @fixture-payment @fixture-delivery
Feature: Can apply custom discount in manual order page
  As a merchant 
  I want to add discount in manual order page

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

  @EAT-749 @EAT-749-1
  Scenario: apply and remove custom discount when manually create order, and add discount when order edit
    Given I am on Orders Page
    When I select export dropdown option included 'Create Order' of export dropdown
    Then I should be redirected to Orders Create Page
    When I click on new customer button
    And I fill name to name field
    And I fill email to email field
    And I fill phone to phone number field
    When I click on next button
    And I click on select product button
    Then I should see select popover
    When I input '15th Product for Checkout' to search product field
    Then 1st row of select product should contain '15th Product for Checkout'
    And I click on 1st row of select product
    And I click on ok save button
    Then row of product should contain '15th Product for Checkout'
    When I click on product next button
    Then I should see default null value
    When I select shipping destination dropdown option included 'Taiwan' of shipping destination dropdown
    And I wait for 3 seconds for loading
    And I select delivery method dropdown option included 'Custom Delivery' of delivery method dropdown
    And I wait for 3 seconds for loading
    And I click on same as customer info checkbox
    And I click on delivery next button
    Then I should see default null value
    When I select payment method dropdown option included 'Custom' of payment method dropdown
    Then I should see add discount button
    And I click on add discount button
    And I fill 'test discount' to discount field
    And I fill '10' to discount amount
    And I click on save button
    Then order summary should contain "test"
    Then order summary should contain "-NT$10"
    Then order summary should contain "Total"
    Then order summary should contain "NT$25"
    When I click on remove discount button
    Then I should see add discount button
    Then order summary should not contain "test"
    Then order summary should not contain "-NT$10"
    Then order summary should contain "Total"
    Then order summary should contain "NT$35"
    And I click on create order button
    Then I should be redirected to Orders Show Page
    Then subtotal should contain "NT$25"
    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button

    Then I should see add discount button
    When I click on add discount button
    Then I should see add discount popover
    When I fill "discount test" to discount name field
    And I fill "5" to discount amount field
    And I click on custom item save button
    Then discount field should contain "discount test"
    Then discount field should contain "-NT$5"
    Then total change should equal to "NT$30"
    Then order refund should equal to "NT$5"
    When I click on product details save button
    Then I should see confirm popover
    And I click on YES button
    And discount field should contain "discount test"
    And discount field should contain "-NT$5"
    And total should contain "NT$30"

 @EAT-749 @EAT-749-2
  Scenario: apply custom discount when manually create order, and remove discount when order edit
    Given I am on Orders Page
    When I select export dropdown option included 'Create Order' of export dropdown
    Then I should be redirected to Orders Create Page
    When I click on new customer button
    And I fill name to name field
    And I fill email to email field
    And I fill phone to phone number field
    When I click on next button
    And I click on add custom item button
    Then I should see select popover
    When I input 'new product' to item name field
    And I fill '25' to item price field
    And I fill '1' to item quantity
    And I click on save button
    Then row of product should contain 'new product'
    When I click on product next button
    Then I should see default null value
    When I select shipping destination dropdown option included 'Taiwan' of shipping destination dropdown
    And I wait for 3 seconds for loading
    And I select delivery method dropdown option included 'Custom Delivery' of delivery method dropdown
    And I wait for 3 seconds for loading
    And I click on same as customer info checkbox
    And I click on delivery next button
    Then I should see default null value
    When I select payment method dropdown option included 'Custom' of payment method dropdown
    Then I should see add discount button
    And I click on add discount button
    And I fill 'test discount' to discount field
    And I fill '10' to discount amount
    And I click on save button
    Then order summary should contain "test"
    Then order summary should contain "-NT$10"
    Then order summary should contain "Total"
    Then order summary should contain "NT$25"
    And I click on create order button
    Then I should be redirected to Orders Show Page

    Then subtotal should contain "NT$25"
    Then product details should contain "test discount"
    Then product details should contain "-NT$10"
    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    Then I click on discount remove button

    Then I should see add discount button
    Then subtotal should contain "NT$25"
    Then total change should equal to "NT$35"
    Then outstanding amount should equal to "NT$10"

    And I click on product details save button
    Then I should see confirm popover
    And I click on yes button
    And total should contain "NT$35"