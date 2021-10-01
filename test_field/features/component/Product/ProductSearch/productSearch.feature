@BaseCase @Admin @Product @ProductSearch @Search @productSearch
@fixture-product
Feature: Product search
  As a user of Shopline
  I want to search products
  So that I can find that product more fast

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

  @C3750 @C3750-1
  Scenario: search product - product name
    Given I am on Product Index Page
    When I input "1st Product for Checkout" to search field
    Then I should be redirected to Product Index Page
    Then 1st row of product list should contain "1st Product for Checkout"

  @C3750 @C3750-2
  Scenario: search product - product tag
    Given I am on Product Index Page
    When I select tagged with of search type dropdown
    And I input "test" to search field
    Then I should be redirected to Product Index Page
    Then 1st row of product list should contain "Out Of Stock"