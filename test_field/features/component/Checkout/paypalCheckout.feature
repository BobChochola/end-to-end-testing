@BaseCase @Storefront @Checkout @paypalCheckout @EAT-458
@fixture-payment @fixture-shop @fixture-product @fixture-delivery
Feature: check page should be redirected to paypal checkout
  As a merchant
  I want to checkout via paypal
  So that I can be redirected to paypal page when using paypal checkout

  Scenario: Check paypal payment on checkout page
    Given I am on Shop Product Index Page
    When I input "18th Product for Checkout" to search field
    Then 1st product of products list should contain "18th Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included '7-11 Pickup only (C2C)' of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included 'Credit card or Paypal (Paypal Express)' of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
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
    And I switch to 1 of tabs
    Then I should be redirected to Shop Checkout Page
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Paypal Confirm Page
    Then I should see paypal checkout
    When I switch to paypal checkout frame
    Then I should see paypal checkout btn
    And I click on paypal checkout btn
    And I switch to 2 of tabs
    Then I should be redirected to Paypal Confirm Page