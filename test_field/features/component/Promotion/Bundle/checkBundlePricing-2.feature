@BaseCase @Storefront @Admin @Promotion @Bundle @checkBundlePricing-2
@fixture-payment @fixture-delivery @fixture-product @fixture-shop @fixture-promotion
Feature: Checkout handle Bundle Pricing Apply
  As a merchant
  When I have different bundle price
  I can check all status

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

  @EAT-634 @EAT-634-2
  Scenario: Bundle Pricing buy 3 for 100 product<100, 6 for 180 product<180
    Given I am on Bundle Pricing Index Page
    When I select add promotion dropdown option included 'Bundle Pricing' of add promotion dropdown
    Then I should be redirected to Bundle Pricing Create Page
    When I fill "(dirty data) Buy 3 for $100 , Buy 6 for $180" to name field
    And I fill "3" to 1st promotion value field
    And I fill "100" to 1st discounted price field
    And I click on add benefits
    And I fill "6" to 2nd promotion value field
    And I fill "180" to 2nd discounted price field
    And I click on search product button
    Then I should see select product popup
    And I click on select all checkbox
    Then I should see checkbox of product list
    And I click on 2nd next button
    And I click on select all checkbox
    Then I should see checkbox of product list
    And I click on 3rd next button
    And I click on select all checkbox
    When I click on popup confirm button
    When I click on 1st countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    When I click on preview button
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    Then target group should equal to 'All Customers'
    And I click on confirm button

    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    Given I am on Shop Product Index Page
    When I input "2nd Product for Checkout" to search field
    Then 1st product of products list should contain '2nd Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    Then I should not see bundle item
    Then 1st cart panel price list should contain "1x NT$1"

    Given I am on Shop Product Index Page
    When I input "12th Product for Checkout" to search field
    Then 1st product of products list should contain '12th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    Then I should not see bundle item
    Then 2nd cart panel price list should contain "1x NT$10"
    Given I am on Shop Product Index Page
    When I input "16th Product for Checkout" to search field
    Then 1st product of products list should contain '16th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    Then I should not see bundle item
    Then 3rd cart panel price list should contain "1x NT$25"
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 3 seconds for loading
    Then I scroll down to total list
    Then total list should contain "NT$46"
    Then I should not see applied promotion

    Given I am on Shop Product Index Page
    When I input "2nd Product for Checkout" to search field
    Then 1st product of products list should contain '2nd Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    Then I should not see bundle item
    Then 1th cart panel price list should contain "2x NT$1"

    Given I am on Shop Product Index Page
    When I input "12th Product for Checkout" to search field
    Then 1st product of products list should contain '12th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    Then I should not see bundle item
    Then 2th cart panel price list should contain "2x NT$10"

    Given I am on Shop Product Index Page
    When I input "18th Product for Checkout" to search field
    Then 1st product of products list should contain '18th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    Then 4th cart panel price list should contain "1x NT$100"
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Given I am on Shop Cart Page
    Then 3th promotion list should contain "Buy 3 for $100"
    Then 4th promotion list should contain "Buy 3 for $100"
    Then 5th promotion list should contain "Buy 3 for $100"
    Then total list should contain "NT$122"
    Then applied promotion should contain "Buy 3 for $100 , Buy 6 for $180 - Selected Products: Buy 3 items for NT$100"
    Then applied promotion should not contain "Buy 3 for $100 , Buy 6 for $180 - Selected Products: Buy 6 items for NT$180"
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    And ---ROLL BACK---
    Given I am on Bundle Pricing Index Page
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button