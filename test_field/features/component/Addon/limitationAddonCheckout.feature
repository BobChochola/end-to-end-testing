@BaseCase @Admin @Addon @Storefront @Checkout @limitationAddonCheckout
@fixture-payment @fixture-delivery @fixture-product @fixture-promotion @fixture-shop
Feature: Limitation Addon Checkout
  As a guest
  I want to checkout with limitation addon item

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
    Given I am on Addon Index Page
    When I check and click addon limitation toggle off
    Then addon limitation toggle should be checked

  @C3809
  Scenario: Checkout with limitation addon item
    Given I am on Shop Product Index Page
    When I input "4th Product for Checkout" to search field
    Then 1st product of products list should contain "4th Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on increase addon quantity button
    Then increase addon quantity button should be disabled
    Then I should see buy together button
    And I click on buy together button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    Then I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    Then I wait for 5 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    Then I wait for 5 seconds for loading
    Then I should see proceed to checkout button
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
    Then 1st row of product unit price should contain "NT$10"
    Then 1st row of product quantity should equal to "1"
    Then 1st row of product items should contain "4th Product for Checkout"
    Then 2nd row of product unit price should contain "NT$10"
    Then 2nd row of product quantity should equal to "1"
    Then 2nd row of product items should contain "2nd Addon for Checkout"
    Then item subtotal should contain "NT$20"
    Then delivery fee should contain "NT$10"
    Then total should contain "NT$30"
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order date should contain order date
    Then customer name should contain name
    Then customer email should contain email
    Then customer phone should contain phone
    Then delivery method should contain "Custom Delivery"
    Then payment type should contain "Custom"
    Then recipient name should contain name
    Then recipient phone should contain phone
    Then product details should contain "Add-on Item"