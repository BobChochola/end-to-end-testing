@BaseCase @Admin @Storefront @CheckoutWithoutEmail @CRM @MemberPoint @mobile-memberPointCheckout
@fixture-product @fixture-payment @fixture-delivery @fixture-shop @fixture-checkout-without-email @fixture-mobile-signup-p2 @EAT-1147
Feature: Add member point display while checkout (mobile member)
  As a customer
  I want to know how many points I could earn from this order before I checkout
  And I can see how many points I could earn from this order in order show page

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

    Given I am on Checkout Setting Page
    When I check and click checkout without email toggle off
    Then checkout without email toggle should be checked
    Then I should see update button
    And I click on update button
    Then I should see alert

  @EAT-1147-3
  Scenario: Check the member point display
    Given I am on Member Points Setting Page
    When I fill '10' to amount field
    And I fill '1' to point field
    And I fill '0' to point assign day field
    And I select month dropdown option included 'December' of month dropdown
    And I select date dropdown option included '31' of date dropdown
    And I fill 'member point' to point rule field
    And I click on update button
    Then I should see alert

    Given I am on Shop Product Index Page
    When I input "18th Product for Checkout" to search field
    Then 1st product of products list should contain "18th Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
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
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 5 seconds for loading
    Then points earned should contain '+10 point(s)'
    When I click on proceed to checkout button

    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I click on same as checkbox
    And I click on agree terms checkbox
    When I click on cart summary
    Then points earned should contain '+10 point(s)'
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then 1st row of product unit price should contain "NT$100"
    Then 1st row of product quantity should equal to "1"
    Then 1st row of product items should contain "18th Product for Checkout"
    Then item subtotal should contain "NT$100"
    Then delivery fee should contain "NT$10"
    Then total should contain "NT$110"
    Then points earned should contain '+10 point(s)'
    Then I mark the value of order confirm info as variable order info

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I should see points earned
    Then points earned should contain 'Points earned 0 day(s) after pick up'
    Then points earned should contain '＋10point(s)'
    And ---ROLL BACK---
    Given I am on Member Points Setting Page
    When I fill '1' to amount field
    And I fill '0' to point field
    And I fill '0' to point assign day field
    And I fill '' to point rule field
    And I click on update button
    Then I should see alert
    Given I am on Checkout Setting Page
    Then checkout without email toggle should be checked
    When I click on checkout without email toggle
    Then checkout without email toggle should not be checked
    Then I should see update button
    And I click on update button
    Then I should see alert