@BaseCase @Storefront @Addon @checkAddOnItems @fixture-shop @fixture-product
Feature: When Shopping cart has someone,In shop product show page can put Add on ltems
  AS a shop
  In shop product show page can put Add on ltems

  @EAT-476 @EAT-476-1
  Scenario:Shopping cart not someone,and buy addon ltems
    Given I am on Shop Product Index Page
    When I input "13th Product for Checkout" to search field
    Then 1st product of products list should contain "13th Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on addon item checkbox
    And I click on buy together button
    Then I should see cart panel
    Then 1st cart panel price list should contain "1x NT$"
    Then 2nd cart item list should contain "Addon"
    Then 2nd cart item list should contain "1x NT$"
    And I click on close cart panel area
    And I click on addon item checkbox
    And I click on buy together button
    Then I should see cart panel
    Then cart panel price list should contain "2x NT$"
    Then 2nd cart item list should contain "Addon"
    Then 2nd cart item list should contain "2x NT$"
    Then I should see remove button
    And I click on 1st remove button

  @EAT-476 @EAT-476-2
  Scenario:Shopping cart has someone,and buy addon ltems
    Given I am on Shop Product Index Page
    When I input "13th Product for Checkout" to search field
    Then 1st product of products list should contain "13th Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I click on add to cart button
    Then I should see cart panel
    Then 1st cart panel price list should contain "1x NT$"
    And I click on close cart panel area
    And I click on addon item checkbox
    And I click on buy together button
    Then I should see cart panel
    Then 2nd cart item list should contain "Addon"
    Then 2nd cart item list should contain "1x NT$"
    Then 1st cart panel price list should contain "2x NT$"
    Then I should see remove button
    And I click on 1st remove button
