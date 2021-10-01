@BaseCase @Admin @Storefront @Checkout @mobile-vvipCheckout
@fixture-mobile-signup-p2 @fixture-shop @fixture-product @fixture-delivery @fixture-payment @fixture-promotion
Feature: Mobile member Checkout - VVIP Membership Tier Checkout
  As a guest
  I want to checkout with membership
  So that I can get the vvip discount

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

    Given I am on Membership Tier Setting Page
    When I click on add button
    Then I should be redirected to Membership Tier New Page
    When I fill "(dirty data) VVVIP discount" to membership tier name field
    And I select membership upgrade condition option included "Single purchase" of membership upgrade condition select button
    And I fill "0" to membership upgrade rules field
    And I fill "20" to member offer field
    And I click on set valid period radio checkbox
    And I fill "6" to membership valid period field
    And I select membership upgrade condition option included "Purchase within specific period" of membership extension condition select button
    Then specific period within field should contain "6"
    And I fill "100" to membership extension total spend field
    And I scroll down to id
    And I click on submit button
    Then I should be redirected to Membership Tier Setting Page
    Then I should see row of membership list
    Given I am on Customer List Page
    When I input phone to search field
    Then I should see apply filter label
    Then I should see row of select checkbox list
    When I click view button for the same order of customer row included '0912345678'
    Then I should be redirected to Customer Detail Page
    When I click on membership tier settings update button
    Then I should see membership tier dropdown
    When I select membership tier dropdown option included "VVVIP discount" of membership tier dropdown
    And I should see popover
    And I click on popover confirm button
    Then membership tier settings label should contain "VVVIP discount"
    Given I am on Free Shipping Index Page
    When I input "2nd Free Shipping" to search field
    Then 1st row of free shipping list should contain "2nd Free Shipping"
    Then I should see apply filter label
    Then I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

  Scenario: Checkout with VVVIPmembership tier
    Given I am on Shop Login Page
    And I fill test phone to email field
    And I fill password to password field
    And I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    Then I should see membership level
    Then membership level should contain 'VVVIP discount'
    Then 1st row of membership detail list should contain six month membership expiry date
    Then 2nd row of membership detail list should contain 'Membership Offer 20% off'
    Then 3rd row of membership detail list should contain 'Congrats! You are in TOP membership level.'
    Given I am on Shop Product Index Page
    When I input "4th Product for Checkout" to search field
    Then 1st product of products list should contain "4th Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill "5" to product quantity field
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "7-11 Pickup and pay in store (B2C)" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Pay on 7-11 Store Pickup (B2C)" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I click on pick store button
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
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then 1st row of product unit price should contain "NT$10"
    Then 1st row of product quantity should equal to "5"
    Then 1st row of product items should contain "4th Product for Checkout"
    Then delivery fee should contain "NT$0"
    Then total should contain "NT$40"
    Then member offer applied should contain "Get 20% off on Entire Order"
    Then discount applied should contain "2nd Free Shipping"
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order date should contain order date
    Then customer name should contain name
    Then customer email should contain email
    Then customer phone should contain phone
    Then payment type should contain "Pay on 7-11 Store Pickup (B2C)"
    Then delivery method should contain "7-11 Pickup and pay in store (B2C)"
    When I Refresh
    Then third party recipient name should contain name
    Then third party recipient phone should contain phone
    Then delivery fee should contain "NT$0"
    Then product details should contain "Member Offer"
    Then product details should contain "2nd Free Shipping"
    And ---ROLL BACK---
    Given I am on Customer List Page
    When I input phone to search field
    Then I should see apply filter label
    Then I should see row of select checkbox list
    When I click view button for the same order of customer row included '0912345678'
    Then I should be redirected to Customer Detail Page
    When I click on membership tier settings update button
    Then I should see membership tier dropdown
    When I select membership tier dropdown option included "Basic" of membership tier dropdown
    And I should see popover
    And I click on popover confirm button
    Then membership tier settings label should contain "Basic"
    Given I am on Membership Tier Setting Page
    Then I should see dropdown button
    When I click on dropdown button
    And I click on dropdown option included "Delete"
    And I should see confirmation popup window
    And I click on delete button
    Then I should not see delete button
    Then membership table should contain "No membership tiers"
    Given I am on Free Shipping Index Page
    When I input "2nd Free Shipping" to search field
    Then I should see apply filter label
    Then 1st row of free shipping list should contain "2nd Free Shipping"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item