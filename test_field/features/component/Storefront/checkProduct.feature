@BaseCase @Storefront @Search @Product @checkProduct @fixture-product @fixture-shop
Feature: Get correct product
  As a guest
  I want to select correct Product from Product Index Page

  @C3808 @C3808-1 @fixture-addon
  Scenario: Get correct product
    Given I am on Shop Product Index Page
    When I input "4th Product for Checkout" to search field
    Then 1st product of products list should contain '4th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain "4th Product for Checkout"
    Then product info should contain "NT$20"
    Then product info should contain "NT$10"
    Then addon item should contain "2nd Addon for Checkout"
    Then addon item should contain "SALE NT$10"

  @C3808 @C3808-2
  Scenario: Get correct product
    Given I am on Shop Product Index Page
    When I input "8th Product for Checkout" to search field
    Then 1st product of products list should contain '8th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain "8th Product for Checkout"
    Then product info should contain "NT$50"
    Then I should see variation dropdown
    Then addon item should contain "2nd Addon for Checkout"
    Then addon item should contain "SALE NT$10"

  @C3808 @C3808-3 @fixture-excluded-product
  Scenario: Get correct product
    Given I am on Shop Product Index Page
    When I input "11th Product for Checkout" to search field
    Then 1st product of products list should contain '11th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain "11th Product for Checkout"
    Then product info should contain "NT$150"
    Then product info should contain "NT$99"
    Then I should see variation dropdown
    Then I should see 2 variation dropdown
    Then product info should contain "Payment Options"
    Then product info should contain "Delivery Options"

  @C3808 @C3808-4
  Scenario: Get correct product
    Given I am on Shop Product Index Page
    When I input "19th Product for Checkout" to search field
    Then 1st product of products list should contain '19th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain "19th Product for Checkout"
    Then product info should contain "NT$5"
    Then product info should contain "TEST"
    Then I should see variation dropdown
    Then add to cart button should contain "PREORDER NOW"

  @C3808 @C3808-5
  Scenario: Get correct product
    Given I am on Shop Product Index Page
    When I input "20th Product for Checkout" to search field
    Then 1st product of products list should contain '20th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain "20th Product for Checkout"
    Then product info should contain "Please message the shop owner for order details."