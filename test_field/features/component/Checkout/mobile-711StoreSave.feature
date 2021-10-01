@BaseCase @Storefront @Checkout @mobile-711StoreSave
@fixture-mobile-signup-p2 @fixture-shop @fixture-product @fixture-delivery @fixture-payment @fixture-promotion
Feature: Mobile member Checkout - Save selected 711 store when checkout
  As a guest I checkout with 711 and I want to save the option
  I should see the same 711 store when I get into checkout page again

  Scenario: Storage 711 store info in checkout page
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain "1st Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I click on login button
    Then I should be redirected to Shop Login Page
    And I fill test phone to email field
    And I fill password to password field
    And I click on submit button
    Then I should be redirected to Shop Cart Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "7-11 Pickup and pay in store (B2C)" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Pay on 7-11 Store Pickup (B2C)" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I click on pick store button
    Then I should be redirected to Seven Pick Store Page
    When I click on id search button
    And I switch to main frame frame
    Then I should see store id field
    And I fill store id to store id field
    And I click on search button
    And I click on 1st store list
    When I switch to default frame
    Then I should see store confirm button
    And I click on store confirm button
    And I click on agree button
    And I click on submit button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
    And I fill email to email address field
    And I click on same as checkbox
    When I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain "1st Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "7-11 Pickup and pay in store (B2C)" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Pay on 7-11 Store Pickup (B2C)" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    Then delivery detail should contain store id
    And ---ROLL BACK---
    Given I am on Shop Cart Page
    When I click on remove button
    Then I should see delete confirmation popover
    When I click on ok button
    Then I should see empty message