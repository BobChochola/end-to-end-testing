@BaseCase @Storefront @Search @removeCart @fixture-product @fixture-shop
Feature: Remove Product In Cart Panel
  As a guest
  I want to remove product in cart panel
  So that I will not checkout the product I do not need

  @C3794
  Scenario: Remove the product from the cart panel
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on remove button
    Then cart panel should contain "Your Shopping Cart is empty."