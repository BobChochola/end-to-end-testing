@BaseCase @Admin @Storefront @CRM @Credit @CouponCode @creditAssignAndCheckoutWithAddon @fixture-shop @fixture-product @fixture-promotion @fixture-payment @fixture-delivery
Feature: Assign credits and checkout with add-on item
  As a merchant
  I want to manual assign store credit to customers
  So that I can assign the credit in Customer Show Page

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

    Given I am on Promotion Index Page
    When I input "13th Promotion" to search field
    And I should see apply filter label
    Then 1st row of promotion list should contain "13th Promotion"
    Then I should see 1 row of promotion list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

  @C3873 @fixture-delivery @fixture-payment @fixture-product @fixture-shop
  Scenario: Assign credits and checkout with add-on item
    Given I am on Customer List Page
    When I input email to search field
    Then I should see view button
    When I click view button for the same order of row of select checkbox list included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    When I click on assign credits button
    Then I should see popover
    When I fill "10" to amount of credit field
    And I fill "1" to validity period field
    And I fill "Testing amount of credits" to reason field
    And I click on credit save button
    Then I should see row of credit list
    Then row of credit list should contain "+ 10"
    Then row of credit list should contain "Testing amount of credits"

    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then I should see product of products list
    Then 1st product of products list should contain "1st Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see increase button
    And I click on increase button
    And I click on addon checkbox
    And I click on buy together button
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
    And 1st item quantity field should equal to '2'
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Local Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on apply coupon code button
    Then I should see coupon code field
    When I input "AmountDiscount" to coupon code field
    And I wait for 5 seconds for loading
    Then applied store credits should equal to '-NT$10 credits'
    And I click on proceed to checkout button

    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I check contact number field and fill phone
    And I check and click save number checkbox
    And I click on same as checkbox
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill address to delivery address field
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then 1st row of product unit price should contain "NT$30"
    Then 1st row of product quantity should equal to "2"
    Then 1st row of product items should contain "1st Product for Checkout"
    Then 2nd row of product unit price should contain "NT$10"
    Then 2nd row of product quantity should equal to "1"
    Then 2nd row of product items should contain "1st Addon for Checkout"
    Then item subtotal should contain "NT$70"
    Then applied store credits should contain "-NT$10"
    Then delivery fee should contain "NT$10"
    Then discount applied should contain "-NT$25"
    Then total should contain "NT$45"
    Then discount applied should contain "13th Promotion"

    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on tab included 'Store Credits'
    Then I should be redirected to Shop User Credit Page
    Then row of credit list should contain "- 10"
    Then row of credit list should contain "Use of credits in order"
    When I click on member center tab included 'Orders'
    Then I should be redirected to Shop Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Shop Orders Show Page
    Then order placing date should contain order placing date
    Then order info should contain "陳小明"
    Then order info should contain "testu****@shoplineapp.com"
    Then order info should contain "0912345***"
    Then order info should contain "Local Delivery"
    Then order info should contain "Bank Transfer"
    And ---ROLL BACK---
    Given I am on Promotion Index Page
    When I input "13th Promotion" to search field
    And I should see apply filter label
    Then I should see 1 row of promotion list
    And 1st row of promotion list should contain "13th Promotion"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item