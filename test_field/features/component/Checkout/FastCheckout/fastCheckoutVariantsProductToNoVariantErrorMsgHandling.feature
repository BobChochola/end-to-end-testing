@BaseCase @Storefront @Admin @Checkout @FastCheckout @fastCheckoutVariantsProductToNoVariantErrorMsgHandling 
@baseLocation-US @theme-ultra-chic @fixture-payment @fixture-delivery @fixture-product @fixture-paypal-spb-checkout @fixture-mini-fast-checkout @fixture-buynow-checkout @fixture-shop
Feature: Fast checkout error handling - variants to no variant
  As a customer
  I should see the error msg when quantity of product sold out

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

    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) variants" to english name field
    And I click on quantity and pricing tab
    And I fill "100" to regular price field
    And I click on unlimited quantity checkbox
    And I click on variations tab
    When I click on variations toggle
    And I input "Blue" to add options field
    And I click on add button
    Then I should see alert

  @EAT-1274 @EAT-1274-12
  Scenario: Fast checkout error handling - variants to no variant
    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    When I input "variants" to search field
    Then 1st product of products list should contain 'variants'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    And I click on add to cart button
    Then I should see cart panel
    And I click on checkout button
    Then I should be redirected to Shop Fast Checkout Page
    When I switch to 2 of tabs

    Given I am on Product Index Page
    Then I should see row of product list
    Then 1st row of product list should contain "variants"
    Then I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on variations tab
    And I click on variations toggle
    And I click on variation confirm button
    And I click on update button
    Then I should see alert

    When I switch to 1 of tabs
    Then I should be redirected to Shop Fast Checkout Page
    When I click on delivery option included 'Custom'
    When I wait for 5 seconds for loading
    When I click on payment option included 'Custom'
    When I wait for 5 seconds for loading
    And I select recipient address dropdown option included 'United States' of recipient address dropdown
    When I wait for 5 seconds for loading
    And I select recipient address dropdown option included "New York" of 2nd recipient address dropdown
    And I fill name to customer name field
    And I fill email to customer email field
    And I click on become member checkbox
    And I click on accept marketing checkbox
    And I fill name to recipient name field
    And I fill '2015551234' to recipient phone field
    And I fill address to recipient address field
    And I fill city to 2nd recipient address field
    And I fill city to recipient city field
    And I fill '10001' to recipient post code field
    When I scroll down to place order button
    When I click on place order button
    Then I should see error alert
    Then error alert should contain 'There is at least one unavailable product in the shopping cart. Please adjust the cart items to checkout, or try to refresh page.'

    And ---ROLL BACK---
    When I switch to 2 of tabs
    Then I should be redirected to Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then 1st row of product list should not contain 'variants'