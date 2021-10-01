@BaseCase @Admin @Storefront @Checkout @stripeCheckout
@baseLocation-HK @fixture-payment @fixture-delivery @fixture-product @fixture-promotion @fixture-shop
Feature: Stripe Checkout
  As a member customer
  I want to place order with wrong credit card number via Stripe
  So that I can see error message

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
    Then I should see apply filter label
    Then 1st row of free shipping list should contain "2nd Free Shipping"
    Then I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert
    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    And I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'

  @C3836
  Scenario: I want to place order with Free Shipping via Stripe (hk$4)
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain "1st Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I fill "4" to product quantity field
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I scroll down to country list dropdown
    And I select country dropdown option included "Hong Kong" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Credit Card via Stripe" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
    And I check contact number field and fill phone
    And I check and click save number checkbox
    And I click on same as checkbox
    Then I fill name to cardholder name field
    When I switch to stripe credit card frame frame
    And I wait for 3 seconds for loading
    And I simply fill '5' to stripe card number field
    And I simply fill '1' to stripe card number field
    And I simply fill '1' to stripe card number field
    And I simply fill '0' to stripe card number field
    And I simply fill '0' to stripe card number field
    And I simply fill '7' to stripe card number field
    And I simply fill '5' to stripe card number field
    And I simply fill '5' to stripe card number field
    And I simply fill '9' to stripe card number field
    And I simply fill '5' to stripe card number field
    And I simply fill '3' to stripe card number field
    And I simply fill '4' to stripe card number field
    And I simply fill '7' to stripe card number field
    And I simply fill '0' to stripe card number field
    And I simply fill '0' to stripe card number field
    And I simply fill '4' to stripe card number field
    Then stripe card number field should contain card number
    When I switch to default frame
    When I switch to stripe expiry date frame frame
    And I wait for 3 seconds for loading
    And I simply fill '0' to stripe expiry date field
    And I simply fill '7' to stripe expiry date field
    And I simply fill '/' to stripe expiry date field
    And I simply fill '2' to stripe expiry date field
    And I simply fill '2' to stripe expiry date field
    When I switch to default frame
    When I switch to stripe cvc frame frame
    And I simply fill '1' to stripe cvc field
    And I simply fill '2' to stripe cvc field
    And I simply fill '3' to stripe cvc field
    Then I switch to default frame
    And I click on agree terms checkbox
    And I click on place order button
    Then I should see error alert
    And error alert should contain "Credit Card is declined. Please contact issuing bank."
    And ---ROLL BACK---
    Given I am on Shop Cart Page
    When I click on remove button
    Then I should see delete confirmation popover
    When I click on ok button
    Then I should see empty message
    Then empty message should contain "Your shopping cart is empty"
    Given I am on Free Shipping Index Page
    When I input "2nd Free Shipping" to search field
    Then I should see apply filter label
    Then I should see 1 row of free shipping list
    Then 1st row of free shipping list should contain "2nd Free Shipping"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item