@BaseCase @Admin @Storefront @FastCheckout @checkPaypalRedirection
@baseLocation-US @theme-ultra-chic @fixture-payment @fixture-delivery @fixture-product @fixture-paypal-spb-checkout @fixture-mini-fast-checkout @fixture-buynow-checkout @fixture-shop
Feature: check paypal spb button click and redirect correctly (PDP/PLP/FastCheckout)
  As a customer
  I click on paypal spb button
  So that page would redirect to paypal page

  @EAT-1274 @EAT-1274-1
  Scenario: check paypal spb button click and redirect correctly (PDP+mini cart)
    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    When I switch to product detail paypal frame frame
    And I click on paypal checkout button
    When I switch to 2 of tabs
    Then I should be redirected to Paypal Confirm Page
    When I close the tab
    When I switch to 1 of tabs
    Then I should be redirected to Shop Product Show Layout V Two Page
    When I click on add to cart button
    Then I should see cart panel
    When I switch to cart panel paypal frame frame
    And I click on paypal checkout button
    When I switch to 2 of tabs
    Then I should be redirected to Paypal Confirm Page
    When I close the tab
    When I switch to 1 of tabs
    Then I should be redirected to Shop Product Show Layout V Two Page
    When I scroll down the page till the bottom
    And I click on sticky add to cart button
    When I switch to sticky paypal frame frame
    And I click on paypal checkout button
    When I switch to 2 of tabs
    Then I should be redirected to Paypal Confirm Page

  @EAT-1274 @EAT-1274-2
  Scenario: check paypal spb button click and redirect correctly (PLP)
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

    Given I am on Design Page
    When I click on advanced setting tab
    Then I should see instant add to cart checkbox
    When I click on instant add to cart checkbox
    And I click on current window checkbox
    And I click on save button
    And I click on publish button
    Then I should not see publish button

    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    When I input "17th Product for Checkout" to search field
    Then 1st product of products list should contain '17th Product for Checkout'
    When I hover over 1st product of products list
    And I click on 1st add to cart button
    Then I should see popover
    When I switch to popover paypal frame frame
    When I click on paypal checkout button
    When I switch to 2 of tabs
    Then I should be redirected to Paypal Confirm Page
    And ---ROLL BACK---
    Given I am on Design Page
    When I click on advanced setting tab
    Then I should see instant add to cart checkbox
    When I click on new window checkbox
    And I click on instant add to cart checkbox
    And I click on save button
    And I click on publish button
    Then I should not see publish button

  @EAT-1274 @EAT-1274-3
  Scenario: check paypal spb button click and redirect correctly (FastCheckout)
    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    And I click on add to cart button
    Then I should see cart panel
    And I click on checkout button
    Then I should be redirected to Shop Fast Checkout Page
    When I switch to paypal frame frame
    When I click on paypal checkout button
    When I switch to 2 of tabs
    Then I should be redirected to Paypal Confirm Page