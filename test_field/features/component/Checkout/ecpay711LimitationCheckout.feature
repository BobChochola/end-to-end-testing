@Admin @BaseCase @Storefront @Checkout @ecpay711LimitationCheckout
@fixture-payment @fixture-delivery @fixture-shop @fixture-product @fixture-promotion
Feature: Checkout - Fit limitation with Ecpay (711B2C)
  As a customer
  I can go checkout with message of limitation alert

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

    Given I am on Free Shipping Index Page
    When I input "2nd Free Shipping" to search field
    Then 1st row of free shipping list should contain "2nd Free Shipping"
    Then I should see apply filter label
    Then I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

  @C3819 @C3819-1
  Scenario: Checkout - Fit limitation with Ecpay
    Given I am on Shop Product Index Page
    When I input "10th Product for Checkout" to search field
    Then 1st product of products list should contain "10th Product for Checkout"
    When I click on 1st product of products list

    Then I should be redirected to Shop Product Show Page
    Then I should see product quantity field
    And I select dropdown option included "M" of variation dropdown
    Then I should see increase button
    And I click on increase button
    Then product quantity field should equal to "2"
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
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "7-11 Pickup only (C2C)" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "CVS via ECpay" of payment method dropdown
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
    When I fill name to name field
    And I check contact number field and fill phone
    And I check and click save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button

    Then I should be redirected to Ecpay Checkout Page
    And I click on get cvs button
    Then I should see back to shop button
    And I click on back to shop button

    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info
    When I click on summary collapse
    Then 1st row of product unit price should contain "NT$25"
    Then 1st row of product quantity should equal to "2"
    Then 1st row of product items should contain "10th Product for Checkout"
    Then 1st row of product items should contain "Blue"
    Then 1st row of product items should contain "M"
    Then item subtotal should contain "NT$50"
    Then delivery fee should contain "NT$0"
    Then total should contain "NT$50"
    Then discount applied should contain "2nd Free Shipping"

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order date should contain order date
    Then customer name should contain name
    Then customer email should contain email
    Then customer phone should contain phone
    Then payment type should contain "CVS via ECpay"
    Then delivery method should contain "7-11 Pickup only (C2C)"
    When I Refresh
    Then third party recipient name should contain name
    Then third party recipient phone should contain phone
    And I wait for 150 seconds for mail sent

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
    When I click on row of mail list included " Thank you for your order "
    Then I should see mail detail
    Then mail detail should contain "Open"
    Then mail detail should contain "Unpaid"
    Then mail detail should contain "Unfulfilled"
    Then mail detail should contain name
    Then mail detail should contain "10th Product for Checkout"
    Then mail detail should contain "NT$50"
    Then I should see info box button
    When I click on info box button
    Then row of info box list should not contain 'bcc'
    And ---ROLL BACK---
    Given I am on Free Shipping Index Page
    When I input "2nd Free Shipping" to search field
    Then I should see apply filter label
    Then I should see 1 row of free shipping list
    Then 1st row of free shipping list should contain "2nd Free Shipping"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item