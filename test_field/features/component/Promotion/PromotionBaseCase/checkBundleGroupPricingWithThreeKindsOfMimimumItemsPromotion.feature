@PromotionBaseCase @Admin @Storefront @Promotion @checkBundleGroupPricingWithThreeKindsOfMimimumItemsPromotion @fixture-product
@fixture-shop @fixture-payment @fixture-delivery @fixture-promotion-basecase-minimum-items @EAT-1127 @C25718
Feature: Check bundle group pricing with three kinds of mimimum items promotion 
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
    When I click on 1st row of select checkbox list
    And I click on 2nd row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

    Given I am on Promotion Create Page
    When I fill '（dirty data）Entire order over 8 items selected products get 15% off' to name field
    And I click on subtotal condition checkbox
    And I select minimum items of condition type dropdown
    And I select selected product of benefit applies dropdown
    And I fill '15' to promotion value field
    And I fill '8' to promotion condition field
    And I input '16th Product for Checkout' to search field
    And I click on search button
    Then I should see select product popup
    Then 1st product of popover list should contain '16th Product for Checkout'
    When I click on 1st checkbox of product list
    And I click on popup confirm button
    Then I should not see select product popup
    Then 1st row of selected product should contain '16th Product for Checkout'
    And I input '10th Product for Checkout' to search field
    And I click on search button
    Then I should see select product popup
    Then 1st product of popover list should contain '10th Product for Checkout'
    When I click on 1st checkbox of product list
    And I click on popup confirm button
    Then I should not see select product popup
    Then 2nd row of selected product should contain '10th Product for Checkout'
    And I input '21st Product for Checkout' to search field
    And I click on search button
    Then I should see select product popup
    Then 1st product of popover list should contain '21st Product for Checkout'
    When I click on 1st checkbox of product list
    And I click on popup confirm button
    Then I should not see select product popup
    Then 3rd row of selected product should contain '21st Product for Checkout'
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain '（dirty data）Entire order over 8 items selected products get 15% off'
    Then discount summary should equal to 'Get 15% off on Selected Products with purchase over 8 items'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page

    When I input 'Entire order over 8 items selected categories get 20% off' to search field
    Then 1st row of promotion list should contain 'Entire order over 8 items selected categories get 20% off'
    Then I should see row of select checkbox list
    When I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert
    Then I should be redirected to Promotion Index Page

    When I input 'Entire order over 8 items get 10% off' to search field
    Then 1st row of promotion list should contain 'Entire order over 8 items get 10% off'
    Then I should see row of select checkbox list
    When I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert
    When I click on row of edit button
    Then I should be redirected to Promotion Edit Page
    When I fill '（rollback）Entire order over 9 items get 10% off' to name field
    And I fill '9' to promotion condition field
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain '（rollback）Entire order over 9 items get 10% off'
    Then discount summary should equal to 'Get 10% off on Entire Order with purchase over 9 items'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page

    Given I am on Cart Add On Items Index Page
    When I click on 1st select checkbox of cart addon list
    Then I select publish of bulk actions dropdown
    Then I should see alert

  Scenario: buy 8 items for check over minimum items and bundle group pricing promotion should apply correctly
    Given I am on Shop Product Index Page
    And I input '3rd Product for Checkout' to search field
    Then 1st product of products list should contain '3rd Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button

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
    And I input '21st Product for Checkout' to search field
    Then 1st product of products list should contain '21st Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    And I input '1st Product for Checkout' to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    And I input '8th Product for Checkout' to search field
    Then 1st product of products list should contain '8th Product for Checkout'
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
    And I input '18th Product for Checkout' to search field
    Then 1st product of products list should contain '18th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button

    Then I should be redirected to Shop Cart Page
    Then I should see cart addon items button
    Then cart addon items price should contain 'NT$100'
    When I click on cart addon items button
    Then I should see addon added to cart

    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'

    And I select country dropdown option included 'Taiwan' of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included 'Family Mart Pickup only (C2C)' of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included 'Bank Transfer' of payment method dropdown
    And I wait for 5 seconds for loading

    Then 1st item promotions should contain 'Buy 2 in Group A & 1 in Group B for $30'
    Then 2nd item promotions should contain 'Buy 2 in Group A & 1 in Group B for $30'
    Then 3rd item promotions should contain 'Buy 2 in Group A & 1 in Group B for $30'
    Then 4th item promotions should contain 'Entire order over 8 items selected products get 15% off'
    Then 5th item promotions should contain 'Buy 2 in Group A & 1 in Group B for $90'
    Then 6th item promotions should contain 'Buy 2 in Group A & 1 in Group B for $90'
    Then 7th item promotions should contain 'Entire order over 8 items selected categories get 20% off'
    Then 8th item promotions should contain 'Buy 2 in Group A & 1 in Group B for $90'

    Then promotion description should contain 'Buy 2 in Group A & 1 in Group B for $90'    
    Then promotion description should contain '-NT$90'
    Then promotion description should contain 'Buy 2 in Group A & 1 in Group B for $30'    
    Then promotion description should contain '-NT$55'
    Then promotion description should contain 'Entire order over 8 items selected products get 15% off'
    Then promotion description should contain '-NT$2'
    Then promotion description should contain 'Entire order over 8 items selected categories get 20% off'
    Then promotion description should contain '-NT$20'
    Then promotion description should not contain '（rollback）Entire order over 9 items get 10% off'

    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I click on pick store button
    Then I should be redirected to Family Mart Pick Store Page
    When I click on name search button
    And I should see store name field
    And I fill store name to store name field
    And I click on search button
    And I should see row of search store list
    And I click on 1st row of search store list
    And I click on confirm store button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then discount applied should contain 'Buy 2 in Group A & 1 in Group B for $90'
    Then discount applied should contain '-NT$90'
    Then discount applied should contain 'Buy 2 in Group A & 1 in Group B for $30'
    Then discount applied should contain '-NT$55'
    Then discount applied should contain 'Entire order over 8 items selected products get 15% off'
    Then discount applied should contain '-NT$2'
    Then discount applied should contain 'Entire order over 8 items selected categories get 20% off'
    Then discount applied should contain '-NT$20'
    Then discount applied should not contain '（rollback）Entire order over 9 items get 10% off'
    Then item subtotal should contain 'NT$474'
    Then item discount applied should contain '-NT$167'
    Then delivery fee should contain 'NT$10'
    Then total should contain 'NT$317'

    And ---ROLL BACK---
    Given I am on Bundle Pricing Index Page
    When I click on tab included 'Bundle Group Pricing'
    And I input 'promotion basecase phase 1' to search field
    Then I should see row of select checkbox list
    When I click on 1st row of select checkbox list
    And I click on 2nd row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see alert

    Given I am on Promotion Index Page
    When I input '（dirty data）Entire order over 8 items selected products get 15% off' to search field
    Then 1st row of promotion list should contain '（dirty data）Entire order over 8 items selected products get 15% off'
    Then I should see row of select checkbox list
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    Then I should see confirmation popover
    When I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert
    Then I should be redirected to Promotion Index Page

    When I input 'Entire order over 8 items selected categories get 20% off' to search field
    Then 1st row of promotion list should contain '（Entire order over 8 items selected categories get 20% off'
    Then I should see row of select checkbox list
    When I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see alert

    When I input '（rollback）Entire order over 9 items get 10% off' to search field
    Then 1st row of promotion list should contain '（rollback）Entire order over 9 items get 10% off'
    Then I should see row of select checkbox list
    When I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see alert
    When I click on row of edit button
    Then I should be redirected to Promotion Edit Page
    When I fill '[promotion basecase phase 1] - Entire order over 8 items get 10% off' to name field
    And I fill '8' to promotion condition field
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should equal to '[promotion basecase phase 1] - Entire order over 8 items get 10% off'
    Then discount summary should equal to 'Get 10% off on Entire Order with purchase over 8 items'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page

    Given I am on Cart Add On Items Index Page
    When I click on 1st select checkbox of cart addon list
    Then I select unpublish of bulk actions dropdown
    Then I should see alert