@BaseCase @Storefront @Search @searchProduct @fixture-product @fixture-shop 
Feature: Search product in product index page
  As a guest
  I want to find product that I want
  So I can input keyword to search field and find it

  @C8244
  Scenario: Search product in product index page
    Given I am on Shop Product Index Page
    When I input "4th Product for Checkout" to search field
    Then I should see product of products list
    Then 1st product of products list should contain "4th Product for Checkout"