@PostTest @PreTest @Admin @BaseCase @Storefront @Checkout @CouponCode @mobile-711B2cCheckout-limitationAlert
@fixture-mobile-signup-p2 @fixture-shop @fixture-promotion @fixture-product @fixture-delivery @fixture-payment
Feature: Mobile member Checkout - Not fit limitation with 7-11 (B2C)
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

  Scenario: Checkout - Not fit limitation with 7-11 (B2C)
    Given I am on Shop Product Index Page
    When I input "7th Product for Checkout" to search field
    Then 1st product of products list should contain "7th Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
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
    And I wait for 5 seconds for loading
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "7-11 Pickup and pay in store (B2C)" of delivery method dropdown
    And I wait for 15 seconds for loading
    And I scroll down to apply coupon code button
    Then I should see apply coupon code button
    And I click on apply coupon code button
    Then I should see coupon code field
    When I input "ExceptOPay" to coupon code field
    And I wait for 5 seconds for loading
    And I Refresh
    Then errors info should contain "Failed transaction: order amount for：7-11 Pickup and pay in store (B2C) should be 1 ~ NT$19,999"
    Then I scroll down to free checkout label
    Then free checkout label should contain "Free Checkout"
    And ---ROLL BACK---
    When I scroll down to errors info
    When I click on remove button
    Then I should see delete confirmation popover
    When I click on ok button
    Then I should see 1 row of cart item
    When I click on remove button
    Then I should see delete confirmation popover
    When I click on ok button
    Then I should see empty message
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