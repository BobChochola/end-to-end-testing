@BaseCase @Storefront @checkDeliveryMethodByCountry
@fixture-product @fixture-delivery @fixture-shop
Feature: Can show correct delivery method by different country
  As a merchant
  I want to checkout with different delivery by country
  So that I can get the product

  @C3801
  Scenario:  I can see correct delivery method by switch different country
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "(DBW) 7-11 C2C - Pickup only" of delivery method dropdown
    And I select country dropdown option included "Hong Kong" of country list dropdown
    And I wait for 3 seconds for loading
    Then delivery dropdown option should not contain "7-11"