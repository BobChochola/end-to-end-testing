@PostTest @PreTest @Admin @BaseCase @Storefront @Checkout @mobile-familyB2cCheckout
@fixture-mobile-signup-p2 @fixture-shop @fixture-product @fixture-delivery @fixture-payment @fixture-promotion
Feature: Mobile member Checkout - Familymart B2C Checkout
  As a guest
  I want to use family mart B2C checkout feature
  So that I can get the product and pay the bill in the family mart store

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
    When I input "10th Promotion" to search field
    Then 1st row of promotion list should contain "10th Promotion"
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

  Scenario: Checkout - FamilyMart B2C pickup and pay
    Given I am on Shop Product Index Page
    When I input "7th Product for Checkout" to search field
    Then 1st product of products list should contain "7th Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add quantity button
    And I click on add to cart button
    Then I should see cart panel
    When I click on close cart panel area
    And I select variation option included "Red" of variation selector
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
    And I select delivery dropdown option included "Family Mart Pickup and pay in store (B2C)" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Pay on Family Mart Store Pickup (B2C)" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I click on pick store button
    Then I should be redirected to Family Mart Pick Store Page
    When I click on name search button
    And I fill store name to store name field
    And I click on search button
    Then I should see row of search store list
    And I click on row of search store list
    Then I should see confirm store button
    And I click on confirm store button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
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
    Then discount applied should contain "10th Promotion"
    Then discount applied should contain "2nd Free Shipping"
    Given I am on Orders Page
    Then I should see row of order links
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order date should contain order date
    Then customer name should contain name
    Then customer email should contain email
    Then customer phone should contain phone
    Then delivery method should contain "Family Mart Pickup and pay in store (B2C)"
    Then payment type should contain "Pay on Family Mart Store Pickup (B2C)"
    When I Refresh
    Then third party recipient name should contain name
    Then third party recipient phone should contain phone
    And ---ROLL BACK---
    Given I am on Promotion Index Page
    When I input "10th Promotion" to search field
    Then I should see apply filter label
    Then 1st row of promotion list should contain "10th Promotion"
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