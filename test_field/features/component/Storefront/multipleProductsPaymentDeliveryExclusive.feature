@BaseCase @Storefront @multipleProductsPaymentDeliveryExclusive @fixture-shop @fixture-excluded-product
Feature: Mutiple Products Exclusive In Payment And Delivery
  As a guest
  I want to checkout 2 different products with exclusive setting of payment and delivery
  So that I should see "Your products come with different delivery or payment methods. Please choose other valid methods or place order accordingly."

  @C3844
  Scenario: Checkout multiple products with exclusive payment and delivery option
    Given I am on Shop Product Index Page
    When I input "9th Product for Checkout" to search field
    Then 1st product of products list should contain '9th Product for Checkout'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    And I click on close cart panel area
    And I input "11th Product for Checkout" to search field
    Then I should be redirected to Shop Product Index Page
    Then 1st product of products list should contain '11th Product for Checkout'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    And I click on checkout button
    Then I should be redirected to Shop Cart Page
    And errors info should contain "Your products come with different delivery or payment methods. Please choose other valid methods or place order accordingly"