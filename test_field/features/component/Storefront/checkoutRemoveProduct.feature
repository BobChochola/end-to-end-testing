@BaseCase @Storefront @checkoutRemoveProduct @fixture-shop @fixture-product
Feature: Can remove product on shop cart page
  As a merchant
  I want to remove product on shop cart page
  So that I can remove the product I do not need

  @C3800
  Scenario:  I can remove product on shop cart page
    Given I am on Shop Product Index Page
    When I input "4th Product for Checkout" to search field
    Then 1st product of products list should contain '4th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on addon item checkbox
    And I click on buy together button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I click on remove button
    Then I should see delete confirmation popover
    When I click on ok button
    Then empty message should contain "Your shopping cart is empty"