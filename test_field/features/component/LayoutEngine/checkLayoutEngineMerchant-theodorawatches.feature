@PostTest @Storefront @LayoutEngine @checkLayoutEngineMerchant-theodorawatches @fixture-shop
Feature: check layout engine merchant - theodorawatches
  As a merchant
  I want to check storefront(Home/products/PDP/cart/checkout(don't send order)/users(use same member)) from seven real merchant.

  @EAT-964 @EAT-964-5
  Scenario: check layout-shop: theodorawatches. theme: simple
    Given I am on Shop Login Layout V Two Page
    Then I open new tab and redirect to theodorawatches shop
    Then I switch to 2 of tabs
    And I fill 'testuser@shoplineapp.com' to email field
    And I fill '12345678' to password field
    When I click on submit button
    Then I should be redirected to Shop Home Layout V Two Page
    Then I check and click close popup button
    Then I click on member center button
    Then I should be redirected to Shop User Profile Layout V Two Page
    Then I open new tab and redirect to theodorawatches product index page
    Then I should be redirected to Shop Product Index Layout V Two Page
    When I click on product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    Then I check and click add to cart button
    Then I open new tab and redirect to theodorawatches product index page
    Then I should be redirected to Shop Product Index Layout V Two Page
    When I click on product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    Then I check and click add to cart button
    Then I open new tab and redirect to theodorawatches product index page
    Then I should be redirected to Shop Product Index Layout V Two Page
    When I click on product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    Then I check and click add to cart button
    Then I Refresh
    When I click on cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Layout V Two Page
    Then I should see proceed to checkout button
    When I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Layout V Two Page

    And ---ROLL BACK---
    When I click on back to cart link
    Then I should be redirected to Shop Cart Layout V Two Page
    When I click on cart button
    Then I should see cart panel
    Then I check and click remove button
    Then I check and click remove button
    Then I check and click remove button