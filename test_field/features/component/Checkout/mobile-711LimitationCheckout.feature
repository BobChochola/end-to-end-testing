@PostTest @PreTest @Admin @BaseCase @Storefront @Checkout @CouponCode @mobile-711LimitationCheckout
@fixture-mobile-signup-p2 @fixture-shop @fixture-product @fixture-delivery @fixture-payment @fixture-promotion
Feature: Mobile member Checkout - Checkout with limitatoin of total amount
  As a customer
  I can go checkout with message of limitation alert


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

    Given I am on Promotion Index Page
    When I input "8th Promotion" to search field
    Then 1st row of promotion list should contain "8th Promotion"
    Then I should see apply filter label
    Then I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert
    Given I am on Free Shipping Index Page
    When I input "2nd Free Shipping" to search field
    Then 1st row of free shipping list should contain "2nd Free Shipping"
    Then I should see apply filter label
    Then I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

  Scenario: Fit 7-11 payment price limitation over NT$1
    Given I am on Shop Product Index Page
    When I input "7th Product for Checkout" to search field
    Then 1st product of products list should contain "7th Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill "2" to product quantity field
    And I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    When I input "7th Product for Checkout" to search field
    Then 1st product of products list should contain "7th Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I select dropdown option included "Red" of variation dropdown
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I click on login button
    Then I should be redirected to Shop Login Page

    And I fill test phone to email field
    And I fill password to password field
    And I click on submit button
    Then I should be redirected to Shop Cart Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    When I scroll down to country list dropdown
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "7-11 Pickup only (C2C)" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 15 seconds for loading
    And I scroll down to apply coupon code button
    Then I should see apply coupon code button
    And I click on apply coupon code button
    Then I should see coupon code field
    And I input "ExceptOPay" to coupon code field
    And I wait for 5 seconds for loading
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
    And I fill name to name field
    And I fill email to email address field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button

    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info
    When I click on summary collapse
    Then 1st row of product unit price should contain "NT$49"
    Then 1st row of product quantity should equal to "2"
    Then 1st row of product items should contain "7th Product for Checkout"
    Then 1st row of product items should contain "Blue"
    Then 2nd row of product unit price should contain "NT$49"
    Then 2nd row of product quantity should equal to "1"
    Then 2nd row of product items should contain "7th Product for Checkout"
    Then 2nd row of product items should contain "Red"
    Then item subtotal should contain "NT$147"
    Then delivery fee should contain "NT$0"
    Then total should contain "NT$48"
    Then discount applied should contain "8th Promotion"
    Then discount applied should contain "2nd Free Shipping"

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    And I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order date should contain order date
    Then customer name should contain name
    Then customer email should contain email
    Then customer phone should contain phone
    Then payment type should contain "Custom"
    Then delivery method should contain "7-11 Pickup only (C2C)"
    When I Refresh
    Then third party recipient name should contain name
    Then third party recipient phone should contain phone
    Then I wait for 100 seconds for mail sent

    Given I am on Google Mail Page
    Then I should see account field
    When I fill merchant email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input order number to search field
    Then I should see row of mail list
    When I click on row of mail list included "New order"
    Then I should see mail detail
    Then mail detail should contain "Open"
    Then mail detail should contain "Unpaid"
    Then mail detail should contain "Unfulfilled"
    Then mail detail should contain name
    Then mail detail should contain "7th Product for Checkout"
    Then mail detail should contain "NT$147"
    Then mail detail should contain "NT$48"
    Then mail detail should contain "NT$0"
    And ---ROLL BACK---
    Given I am on Promotion Index Page
    When I input "8th Promotion" to search field
    Then I should see apply filter label
    Then 1st row of promotion list should contain "8th Promotion"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item
    Given I am on Free Shipping Index Page
    When I input "2nd Free Shipping" to search field
    Then I should see apply filter label
    Then 1st row of free shipping list should contain "2nd Free Shipping"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item