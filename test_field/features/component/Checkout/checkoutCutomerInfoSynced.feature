@BaseCase @Storefront @Checkout @checkoutCutomerInfoSynced @fixture-product @fixture-payment @fixture-delivery @fixture-shop
Feature: Can show correct information when click same as checkbox
  As a merchant
  I want to click same as checkbox
  So that I can do not need to type information twice

  @C3803
  Scenario:  I can see correct same customer info when I click same as checkbox
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain "1st Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "7-11 Pickup and pay in store (B2C)" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Pay on 7-11 Store Pickup (B2C)" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    Then recipient name field should equal to name
    Then recipient contact number field should equal to phone