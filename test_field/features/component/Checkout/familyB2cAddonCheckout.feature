@BaseCase @Admin @Storefront @Checkout @familyB2cAddonCheckout
@fixture-payment @fixture-delivery @fixture-product @fixture-promotion @fixture-shop
Feature: Familymart B2C Checkout
  As a guest
  I want to use family mart B2C checkout feature with addon product
  So that I can get the product and pay the bill in the family mart store

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

  @C3863
  Scenario: Family Mart B2C checkout - Addon
    Given I am on Shop Product Index Page
    When I input "17th Product for Checkout" to search field
    Then 1st product of products list should contain "17th Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add quantity button
    And I click on addon checkbox
    And I fill "2" to addon quantity field
    And I click on buy together button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "(DBW) Family Mart B2C - Pickup and pay in store" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Pay on Family Mart Store Pickup (B2C)" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I click on pick store button
    Then I should be redirected to Family Mart Pick Store Page
    When I click on name search button
    And I fill store name to store name field
    And I click on search button
    Then I should see row of search store list
    And I click on row of search store list
    Then I should see confirm store button
    And I click on confirm store button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then 1st row of product unit price should contain "NT$100"
    Then 1st row of product quantity should equal to "2"
    Then 1st row of product items should contain "17th Product for Checkout"
    Then 2nd row of product unit price should contain "NT$10"
    Then 2nd row of product quantity should equal to "2"
    Then 2nd row of product items should contain "3rd Addon for Checkout"
    Then item subtotal should contain "NT$40"
    Then delivery fee should contain "NT$20"
    Then total should contain "NT$60"
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order date should contain order date
    Then customer name should contain name
    Then customer email should contain email
    Then customer phone should contain phone
    Then payment type should contain "Pay on Family Mart Store Pickup (B2C)"
    Then delivery method should contain "(DBW) Family Mart B2C - Pickup and pay in store"
    When I Refresh
    Then third party recipient name should contain name
    Then third party recipient phone should contain phone
    Then delivery fee should contain "NT$20"