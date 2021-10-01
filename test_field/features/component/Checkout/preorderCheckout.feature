@PostTest @PreTest @BaseCase @Admin @Storefront @Checkout @preorderCheckout @fixture-shop @fixture-product @fixture-delivery @fixture-payment
Feature: Checkout Preorder Product
  As a guest
  I want to checkout preorder product
  So that I can get product quickly if the product has inventory

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

  @C3846
  Scenario: Checkout Preorder Product
    Given I am on Shop Product Index Page
    When I input "19th Product for Checkout" to search field
    Then 1st product of products list should contain "19th Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Cash on Delivery" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then 1st row of product unit price should contain "NT$1"
    Then 1st row of product quantity should equal to "1"
    Then 1st row of product items should contain "19th Product for Checkout"
    Then 1st row of product items should contain "Blue"
    Then 1st row of product items should contain "Test"
    Then item subtotal should contain "NT$1"
    Then delivery fee should contain "NT$10"
    Then total should contain "NT$11"
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order date should contain order date
    Then customer name should contain name
    Then customer email should contain email
    Then customer phone should contain phone
    Then delivery method should contain "Custom Delivery"
    Then payment type should contain "Cash on Delivery"
    Then recipient name should contain name
    Then recipient phone should contain phone