@BaseCase @Storefront @Search @headerSearch 
@fixture-product @fixture-shop
Feature: Search product on header bar
  As a guest
  I want to search product
  So that I can see the product I want quickly

  @C3790 @C8243
  Scenario: Search product on header bar
    Given I am on Shop Home Page
    When I hover over header search button
    Then I should see header bar search field
    And I input "for Checkout" to header bar search field
    Then I should be redirected to Shop Product Index Page
    Then 1st product of products list should contain "for Checkout"