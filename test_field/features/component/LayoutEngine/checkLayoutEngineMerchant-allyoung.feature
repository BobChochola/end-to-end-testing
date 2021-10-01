@PostTest @Storefront @LayoutEngine @checkLayoutEngineMerchant-allyoung @fixture-shop
Feature: check layout engine merchant - allyoung
  As a merchant
  I want to check storefront(Home/products/PDP/cart/checkout(don't send order)/users(use same member)) from seven real merchant.

  @EAT-964 @EAT-964-2
  Scenario: check layout-shop: allyoung. theme: UltraChic
    Given I am on Shop Login Layout V Two Page
    Then I open new tab and redirect to allyoung shop
    And I fill 'testuser@shoplineapp.com' to email field
    And I fill '12345678' to password field
    When I click on submit button
    Then I should be redirected to Shop Home Layout V Two Page
    Then I check and click close popup button
    Then I click on member center button
    Then I should be redirected to Shop User Profile Layout V Two Page
    Then I open new tab and redirect to allyoung product index page
    Then I should be redirected to Shop Product Index Layout V Two Page
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    Then I check and click add to cart button
    Then I open new tab and redirect to allyoung product index page
    Then I should be redirected to Shop Product Index Layout V Two Page
    When I click on 2nd product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    Then I check and click add to cart button
    Then I open new tab and redirect to allyoung product index page
    Then I should be redirected to Shop Product Index Layout V Two Page
    When I click on 3rd product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    Then I check and click add to cart button
    And I wait for 3 seconds for loading
    Then I Refresh
    When I click on cart button
    Then I should see cart panel
    When I click on ultrachic checkout button
    Then I should be redirected to Shop Cart Layout V Two Page
    Then I should see proceed to checkout button
    When I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Layout V Two Page

    And ---ROLL BACK---
    When I click on cart button
    Then I should see cart panel
    Then I check and click product of remove button
    Then I check and click product of remove button
    Then I check and click product of remove button