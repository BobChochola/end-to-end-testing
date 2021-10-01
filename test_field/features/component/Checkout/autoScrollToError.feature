@BaseCase @Storefront @Checkout @autoScrollToError
@fixture-payment @fixture-delivery @fixture-product @fixture-promotion @fixture-shop
Feature: Fill information in checkout page
  As a guest, I want to buy products
  So that I fill in the information in checkout page and the page can auto scroll to invalid field

  @C3802
  Scenario: Auto scroll to no typing field
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain "1st Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then I scroll down to country list dropdown
    When I select country dropdown option included "Taiwan" of country list dropdown
    And I select delivery dropdown option included "7-11 Pickup and pay in store (B2C)" of delivery method dropdown
    And I select payment dropdown option included "Pay on 7-11 Store Pickup (B2C)" of payment method dropdown
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I click on agree terms checkbox
    And I click on place order button
    Then I should see required field error
    Then I should see name field