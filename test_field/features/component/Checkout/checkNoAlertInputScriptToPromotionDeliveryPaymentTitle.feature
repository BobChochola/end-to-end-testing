@BaseCase @Admin @Storefront @Checkout @checkNoAlertInputScriptToPromotionDeliveryPaymentTitle @fixture-product @fixture-shop
Feature: should not see any alert on storefront(set delivery/payment/promotion/customer)
  As a merchant
  I don't want my customer see and alert when I input something script to field

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

    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Custom' of delivery type dropdown
    And I click on requires customer address checkbox
    And I fill xss name to name field
    And I fill the description to description field
    And I select delivery fee type dropdown option included 'Flat Price' of delivery fee type dropdown
    And I click on select shipping countries link
    Then I should see shipping zone settings popup
    When I click on applicable shipping countries taiwan
    And I click on right angle bracket button
    And I click on ok button
    Then I should not see shipping zone settings popup
    When I fill Delivery Fee to delivery fee field
    And I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then alert should not be present
    Then I should be on Delivery Options Page
    And 1st row of delivery options list should contain xss name

    Given I am on Payment Setting Page
    When I click on add button
    Then I should be redirected to Payment Create Page
    When I select payment type dropdown option included 'Custom' of payment type dropdown
    And I fill xss name to name field
    And I fill instruction to payment instructions field
    When I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then alert should not be present
    Then I should be redirected to Payment Setting Page
    And 1st row of payment method list should contain xss name

    Given I am on Promotion Create Page
    And I fill xss name to name field
    And I fill "10" to promotion value field
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on never expires checkbox
    And I click on end date field
    Then I should see calendar table
    When I click on 3rd available date button
    And I click on done button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should equal to xss name
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain end date
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Customers"
    Then discount summary should equal to "Get 10% off on Entire Order"
    And I click on confirm button
    Then I should see alert
    Then alert should not be present
    Then I should be redirected to Promotion Index Page

  @EAT-939 @EAT-939-2
  Scenario: should not see any alert on storefront(set delivery/payment/promotion/customer)
    Given I am on Shop Product Index Page
    When I input "15th Product for Checkout" to search field
    Then 1st product of products list should contain "15th Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then alert should not be present
    When I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "(dirty data)xss" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "(dirty data)xss" of payment method dropdown
    And I wait for 5 seconds for loading
    Then promotion description should contain '(dirty data)'
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    Then alert should not be present
    When I fill xss name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then alert should not be present
    And ---ROLL BACK---
    Given I am on Delivery Options Page
    Then I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain '(dirty data)'
    Given I am on Payment Setting Page
    Then I click on 1st delete button of payment method list
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then 1st row of payment method list should not contain '(dirty data)'
    Given I am on Promotion Index Page
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert