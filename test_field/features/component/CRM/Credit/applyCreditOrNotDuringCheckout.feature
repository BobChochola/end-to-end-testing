@BaseCase @Storefront @CRM @Credit @Checkout @applyCreditOrNotDuringCheckout
@fixture-payment @fixture-delivery @fixture-product @fixture-shop
Feature: Apply credit or not during checkout
  As a guest
  I want to be able to choose and apply credits or not during checkout

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

  @EAT-452-1
  Scenario: Edit the credit amount used or choose not to apply by inputing 0
    Given I am on Customer List Page
    When I input email to search field
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    When I click on assign credits button
    Then I should see popover
    When I fill "20" to amount of credit field
    And I click on never expires button
    And I fill "Testing amount of credits" to reason field
    And I click on credit save button
    Then I should see row of credit list

    Given I am on Shop Product Index Page
    And I input "18th Product for Checkout" to search field
    Then 1st product of products list should contain "18th Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
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
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on applied store credits button
    And I fill "25" to apply store credits field
    And I click on apply credit button
    # Then remaining hint should contain "remaining NT$0"
    Then reminder should contain "Please note: maximum amount of store credits usable for this order is NT$20"
    Then used credit should contain "-NT$20 credits"
    When I select language dropdown option included "繁" of language dropdown
    And I wait for 3 seconds for loading
    And I click on applied store credits button
    And I fill "25" to apply store credits field
    And I click on apply credit button
    Then used credit should contain "-NT$20 購物金"
    # Then remaining hint should contain "購物金餘額 NT$0"
    Then reminder should contain "提醒您此筆訂單購物金金額使用上限為 NT$20"
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    When I click on applied store credits button 
    And I fill "0" to apply store credits field
    And I click on apply credit button
    Then used credit should contain "-NT$0 credits"
    When I click on applied store credits button
    And I fill "10" to apply store credits field
    And I click on apply credit button
    Then used credit should contain "-NT$10 credits"
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then 1st row of product unit price should contain "NT$100" 
    Then 1st row of product quantity should equal to "1"
    Then 1st row of product items should contain "18th Product for Checkout" 
    Then item subtotal should contain "NT$100"
    Then credit should contain "NT$10"
    Then delivery fee should contain "NT$10"
    Then total should contain "NT$100"
    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on tab included 'Store Credits'
    Then I should be redirected to Shop User Credit Page
    Then row of credit list should contain "- 10"
    Then row of credit list should contain "Use of credits in order"
    And ---ROLL BACK---
    Given I am on Shop Cart Page
    When I select language dropdown option included "English" of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'

    Given I am on Customer List Page
    When I input email to search field
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    When I click on assign credits button
    Then I should see popover
    When I fill "-10" to amount of credit field
    And I fill "Rolling back amount of credits" to reason field
    And I click on credit save button
    Then I should see row of credit list

  @EAT-452-2
  Scenario: Original credit balance = $0
    Given I am on Shop Product Index Page
    Then I input "18th Product for Checkout" to search field
    Then 1st product of products list should contain "18th Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
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
    Then I should not see applied store credits button
    And ---ROLL BACK---
    When I click on remove button
    Then I should see delete confirmation popover
    When I click on ok button
    Then I should see empty message

  @EAT-452-3
  Scenario: Edit the credit amount on Express Checkout Page
    Given I am on Customer List Page
    When I input email to search field
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    When I click on assign credits button
    Then I should see popover
    When I fill "20" to amount of credit field
    And I click on never expires button
    And I fill "Testing amount of credits" to reason field
    And I click on credit save button
    Then I should see row of credit list

    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    And I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'

    Given I am on Express Checkout Pages Page
    When I click on create button
    Then I should be redirected to Express Checkout Builder Page
    Then I should see skip the guide button
    When I click on skip the guide button
    Then I should see product picker
    When I input "18th Product for Checkout" to search field
    Then 1st product of product list should contain '18th Product for Checkout'
    And I click on 1st product of product list
    And I click on popup save button
    Then I should be on Express Checkout Builder Page
    When I click on save page button
    And I should see view page button
    And I click on view page button
    And I switch to 2 of tabs
    Then I should be on Shop Express Checkout Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on applied store credits button
    And I fill "25" to apply store credits field
    And I click on apply credit button
    Then used credit should contain "-NT$20 credits"
    # Then remaining hint should contain "remaining NT$0"
    Then reminder should contain "Please note: maximum amount of store credits usable for this order is NT$20"
    When I click on applied store credits button
    And I fill "0" to apply store credits field
    And I click on apply credit button
    Then used credit should contain "-NT$0 credits"
    When I click on applied store credits button
    And I fill "10" to apply store credits field
    And I click on apply credit button
    Then used credit should contain "-NT$10 credits"
    And I click on buy now button
    When I should be redirected to Shop Checkout Page
    Then I click on cart summary
    And I should see row of product items
    And 1st row of product items should contain "18th Product for Checkout"
    Then total price should contain "NT$100"
    When I fill name to name field
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then 1st row of product unit price should contain "NT$100"
    Then 1st row of product quantity should equal to "1"
    Then 1st row of product items should contain "18th Product for Checkout"
    Then delivery fee should contain "NT$10"
    Then total should contain "NT$100"
    And  ---ROLL BACK---
    Given I am on Express Checkout Pages Page
    When I click on delete button
    Then I should see popup
    And I click on reconfirm checkbox
    And I click on popup ok button
    Given I am on Customer List Page
    When I input email to search field
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    When I click on assign credits button
    Then I should see popover
    When I fill "-10" to amount of credit field
    And I fill "Rolling back amount of credits" to reason field
    And I click on credit save button
    Then I should see row of credit list