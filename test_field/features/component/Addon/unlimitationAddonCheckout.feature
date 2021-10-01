@BaseCase @Admin @Addon @Storefront @Addon @Checkout @unlimitationAddonCheckout
@fixture-payment @fixture-delivery @fixture-product @fixture-addon @fixture-shop
Feature: Unlimitation Addon Checkout
  As a guest
  I want to checkout with unlimitation addon item

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
    When I check and click addon limitation toggle on
    Then addon limitation toggle should not be checked

  @C3810
  Scenario: Checkout with unlimitation addon item
    Given I am on Shop Product Index Page
    When I input "4th Product for Checkout" to search field
    Then 1st product of products list should contain "4th Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on increase addon quantity button
    And I click on increase addon quantity button
    And I click on buy together button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 3 seconds for loading
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
    Then 1st row of product quantity should equal to "1"
    Then 1st row of product items should contain "4th Product for Checkout"
    Then 2nd row of product quantity should equal to "2"
    Then 2nd row of product items should contain "2nd Addon for Checkout"
    And ---ROLL BACK---
    Given I am on Addon Index Page
    When I click on addon limitation toggle
    Then addon limitation toggle should be checked