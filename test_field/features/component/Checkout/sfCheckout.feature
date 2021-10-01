@BaseCase @Admin @Storefront @Checkout @sfCheckout
@fixture-shop @fixture-product @fixture-payment @fixture-delivery @baseLocation-HK
Feature: SF Checkout
  As a guest
  I want to checkout with SF

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

  @C3839
  Scenario: Checkout - SF
    Given I am on Shop Product Index Page
    And I input "2nd Product for Checkout" to search field
    Then 1st product of products list should contain "2nd Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Hong Kong" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Zeek2door (Same Day Home Delivery)" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I scroll down to place order button
    And I select sf address region dropdown option included "Hong Kong" of sf address region dropdown
    And I select sf address district dropdown option included "Central District" of sf address district dropdown
    And I select sf address area dropdown option included "Central" of sf address area dropdown
    And I select delivery time dropdown option included "AM" of delivery time dropdown
    And I fill address to delivery address field
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then 1st row of product unit price should contain "HK$10.00"
    Then 1st row of product quantity should equal to "1"
    Then 1st row of product items should contain "2nd Product for Checkout"
    Then item subtotal should contain "HK$10.00"
    Then delivery fee should contain "HK$10.00"
    Then total should contain "HK$20.00"
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then customer name should contain name
    Then customer email should contain email
    Then customer phone should contain phone
    Then delivery method should contain "Zeek2door (Same Day Home Delivery)"
    Then payment type should contain "Bank Transfer"
    Then recipient name should contain name
    Then recipient phone should contain phone
    Then delivery form should contain "14F., No.44, Ln. 11, Guangfu N. Rd."
    Then delivery form should contain "Hong Kong, Central District, Central"
    Then delivery form should contain "AM"