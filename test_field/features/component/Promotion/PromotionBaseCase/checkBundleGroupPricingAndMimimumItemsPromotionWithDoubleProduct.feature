@PromotionBaseCase @Admin @Storefront @Promotion @checkBundleGroupPricingAndMimimumItemsPromotionWithDoubleProduct @fixture-product
@fixture-shop @fixture-payment @fixture-delivery @fixture-promotion-basecase-minimum-items @EAT-1128 @C25719
Feature: Check bundle group pricing and mimimum items promotion with double product
  As a user of Shopline
  I want to check the promotion would be applied
  When it reach the minimum items limit

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

    Given I am on Bundle Pricing Index Page
    When I click on tab included 'Bundle Group Pricing'
    And I input 'promotion basecase phase 1' to search field
    Then I should see row of select checkbox list
    When I click on select all checkbox
    And I select publish of bulk actions dropdown
    Then I should see alert

    Given I am on Promotion Create Page
    When I input '（dirty data）Buy selected product for 2 items get 72% off' to name field
    And I click on selected products condition checkbox
    And I select minimum items of condition type dropdown
    And I select discount percent of benefit type dropdown
    And I fill "72" to promotion value field
    And I fill "2" to promotion condition field
    When I fill "3rd Product for Checkout" to search field
    Then I click on search button
    And I should see select product popup
    Then 1st product of popover list should contain '3rd Product for Checkout'
    And I click on 1st checkbox of product list
    Then I click on popup confirm button
    When I fill "8th Product for Checkout" to search field
    Then I click on search button
    And I should see select product popup
    Then 1st product of popover list should contain '8th Product for Checkout'
    And I click on 1st checkbox of product list
    Then I click on popup confirm button
    Then I should see 2 row of selected product
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then discount summary should equal to 'Get 72% off on Selected Products with purchase of Selected Products over 2 items'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    Then 1st row of promotions should contain '（dirty data）Buy selected product for 2 items get 72% off'
    Then 1st row of promotions should contain 'Never expires'

  Scenario: buy 7 items for check over minimum items and bundle group pricing promotion should apply correctly
    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button

    Then I should be redirected to Shop Home Page
    Given I am on Shop Product Index Page
    And I input '3rd Product for Checkout' to search field
    Then 1st product of products list should contain '3rd Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill '2' to product quantity field
    And I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    And I input '16th Product for Checkout' to search field
    Then 1st product of products list should contain '16th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    And I input '10th Product for Checkout' to search field
    Then 1st product of products list should contain '10th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    And I input '9th Product for Checkout' to search field
    Then 1st product of products list should contain '9th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    And I input '8th Product for Checkout' to search field
    Then 1st product of products list should contain '8th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill '2' to product quantity field
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page

    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'

    And I select country dropdown option included 'Taiwan' of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included '(DBW) - LocalDelivery' of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included 'Bank Transfer' of payment method dropdown
    And I wait for 5 seconds for loading

    Then 2nd item promotions should contain 'Buy 2 in Group A & 1 in Group B for $30'
    Then 3rd item promotions should contain 'Buy 2 in Group A & 1 in Group B for $30'
    Then 4th item promotions should contain 'Buy 2 in Group A & 1 in Group B for $90'
    Then 5th item promotions should contain 'Buy 2 in Group A & 1 in Group B for $90'
    Then 6th item promotions should contain 'Buy 2 in Group A & 1 in Group B for $30'

    Then promotion description should contain 'Buy 2 in Group A & 1 in Group B for $30'    
    Then promotion description should contain '-NT$55'
    Then promotion description should contain 'Buy 2 in Group A & 1 in Group B for $90'
    Then promotion description should contain '-NT$109'
    Then promotion description should not contain '（dirty data）Buy selected product for 2 items get 72% off'

    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill address to delivery address field
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then discount applied should contain 'Buy 2 in Group A & 1 in Group B for $30'
    Then discount applied should contain '-NT$55'
    Then discount applied should contain 'Buy 2 in Group A & 1 in Group B for $90'
    Then discount applied should contain '-NT$109'
    Then discount applied should not contain '（dirty data）Buy selected product for 2 items get 72% off'
    Then item subtotal should contain 'NT$294'
    Then item discount applied should contain '-NT$164'
    Then delivery fee should contain 'NT$10'
    Then total should contain 'NT$140'

    And ---ROLL BACK---
    Given I am on Bundle Pricing Index Page
    When I click on tab included 'Bundle Group Pricing'
    And I input 'promotion basecase phase 1' to search field
    Then I should see row of select checkbox list
    When I click on select all checkbox
    And I select unpublish of bulk actions dropdown
    Then I should see alert

    Given I am on Promotion Index Page
    When I input '（dirty data）Buy selected product for 2 items get 72% off' to search field
    Then 1st row of promotion list should contain '（dirty data）Buy selected product for 2 items get 72% off'
    Then I should see row of select checkbox list
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    Then I should see confirmation popover
    When I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert