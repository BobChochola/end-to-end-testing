@BaseCase @Admin @Storefront @Checkout @freeCheckoutNoIntegrationFamilyMart @fixture-payment @fixture-shop @fixture-delivery @fixture-product @fixture-promotion
Feature: Checkout - Free Checkout (Family Mart)
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
    
    Given I am on Promotion Index Page
    When I input "9th Promotion" to search field
    Then 1st row of promotion list should contain "9th Promotion"
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

  @C3820 @C3820-2
  Scenario: Checkout - Free Checkout (Family Mart)
    Given I am on Shop Product Index Page
    When I input "3rd Product for Checkout" to search field
    Then 1st product of products list should contain "3rd Product for Checkout"
    When I click on 1st product of products list
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
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Family Mart Pickup (no integration)" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I check contact number field and fill phone
    And I check and click save number checkbox
    And I click on same as checkbox
    And I fill shop code to shop code field
    And I fill shop name to shop name field
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then 1st row of product unit price should contain "NT$10"
    Then 1st row of product quantity should equal to "1"
    Then 1st row of product items should contain "3rd Product for Checkout"
    Then item subtotal should contain "NT$10"
    Then delivery fee should contain "NT$0"
    Then total should contain "NT$0"
    Then discount applied should contain "9th Promotion"
    Then discount applied should contain "2nd Free Shipping"
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order date should contain order date
    Then customer name should contain name
    Then customer email should contain email
    Then customer phone should contain phone
    Then payment type should contain "Free Checkout"
    Then delivery method should contain "Family Mart Pickup (no integration)"
    When I Refresh
    Then third party recipient name should contain name
    Then third party recipient phone should contain phone
    And ---ROLL BACK---
    Given I am on Promotion Index Page
    When I input "9th Promotion" to search field
    Then I should see apply filter label
    Then I should see 1 row of promotion list
    Then 1st row of promotion list should contain "9th Promotion"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item
    Given I am on Free Shipping Index Page
    When I input "2nd Free Shipping" to search field
    Then I should see apply filter label
    Then I should see 1 row of free shipping list
    Then 1st row of free shipping list should contain "2nd Free Shipping"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item