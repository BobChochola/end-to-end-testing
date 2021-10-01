@BaseCase @CRM @Credit @Admin @Storefront @Checkout @partialCreditsTurnOffCheckout @EAT-485
@fixture-delivery @fixture-payment @fixture-product @fixture-shop @smokeTest
Feature: Turn off apply partial credits and checkout
  As a merchant
  I want to customer checkout not apply partial credit

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

    Given I am on Customer List Page
    When I input email to search field
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    When I click on assign credits button
    Then I should see popover
    When I fill '10' to amount of credit field
    And I click on never expires button
    And I fill 'Testing amount of credits' to reason field
    And I click on credit save button
    Then I should see row of credit list
    Given I am on Store Credit Page
    Then I check and click apply partial credits toggle on
    Then I should see update button
    And I click on update button
    Then I should see alert

  @EAT-485-2
  Scenario: Turn off apply partial credits and checkout
    Given I am on Shop Product Index Page
    And I input '8th Product for Checkout' to search field
    Then 1st product of products list should contain "8th Product for Checkout"
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
    And I select country dropdown option included 'Taiwan' of country list dropdown
    And I select delivery dropdown option included 'Custom Delivery' of delivery method dropdown
    And I select payment dropdown option included 'Bank Transfer' of payment method dropdown
    Then I should not see applied store credits button
    Then applied store credits should contain '-NT$10 credits'
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I click on cart summary
    Then cart summary should contain '-NT$10 credits'
    When I fill phone to contact number field
    And I fill name to name field
    And I click on save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then 1st row of product unit price should contain 'NT$50'
    Then 1st row of product quantity should equal to '1'
    Then 1st row of product items should contain '8th Product for Checkout'
    Then item subtotal should contain 'NT$50'
    Then credit should contain '-NT$10 credits'
    Then delivery fee should contain 'NT$10'
    Then total should contain 'NT$50'
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order date should contain order date
    Then customer name should contain name
    Then customer email should contain email
    Then customer phone should contain phone
    Then delivery method should contain 'Custom Delivery'
    Then payment type should contain 'Bank Transfer'
    Then recipient name should contain name
    Then recipient phone should contain phone
    Then credit should contain '-NT$10'
    And ---I NEED TO ROLLBACK store credits ---
    And ---ROLL BACK---
    Given I am on Store Credit Page
    When I click on apply partial credits toggle
    Then I should see apply partial credits toggle on
    And I click on update button
    Then I should see alert