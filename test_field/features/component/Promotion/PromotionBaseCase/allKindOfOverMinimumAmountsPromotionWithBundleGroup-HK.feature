@PromotionBaseCase @Admin @Storefront @Promotion @allKindOfOverMinimumAmountsPromotionWithBundleGroup-HK @fixture-product
@fixture-shop @fixture-payment @fixture-delivery @fixture-promotion-basecase-minimum-amounts-bundle-group @baseLocation-HK @EAT-1134 @C32224
Feature: All kind of over minimum amounts promotion with bundle group promotion - hk
  As a user of Shopline
  I want to check the promotion would be applied
  When it reach the minimum amounts limit

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
    When I input 'Buy 3 for $30.99' to search field
    Then 1st row of promotions should contain 'Buy 3 for $30.99'
    Then I should see row of select checkbox list
    When I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

    When I click on tab included 'Bundle Group Pricing'
    And I input 'Buy 2 in Group A & 1 in Group B for $90.99' to search field
    Then 1st row of promotions should contain 'Buy 2 in Group A & 1 in Group B for $90.99'
    Then I should see row of select checkbox list
    When I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

    Given I am on Promotion Index Page
    When I input 'promotion basecase phase 1' to search field
    Then I should see 5 row of select checkbox list
    When I click on select all checkbox
    And I select publish of bulk actions dropdown
    Then I should see alert

    Given I am on Free Shipping Index Page
    When I input 'promotion basecase phase 1' to search field
    Then I should see row of select checkbox list
    When I click on select all checkbox
    And I select publish of bulk actions dropdown
    
    Given I am on Cart Add On Items Index Page
    When I click on 1st select checkbox of cart addon list
    Then I select publish of bulk actions dropdown
    Then I should see alert

    Given I am on Store Credit Page
    When I select credit amount rule dropdown option included 'Percentage %' of credit amount rule dropdown
    And I fill '5' to credit amount field
    And I click on update button
    Then I should see alert

    Given I am on Customer List Page
    When I input email to search field
    Then I should see view button
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    When I click on assign credits button
    Then I should see popover
    When I fill "20" to amount of credit field
    And I fill "1" to validity period field
    And I fill "Testing amount of credits" to reason field
    And I click on credit save button
    Then I scroll down to assign credits button
    Then I should see row of credit list
    Then row of credit list should contain "+ 20"
    Then row of credit list should contain "Testing amount of credits"

  Scenario: buy 8 items for check over minimum amounts and bundle group pricing promotion should be applied correctly
    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page

    Given I am on Shop Product Index Page
    And I input '4th Product for Checkout' to search field
    Then 1st product of products list should contain '4th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    And I input '5th Product for Checkout' to search field
    Then 1st product of products list should contain '5th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    And I input '6th Product for Checkout' to search field
    Then 1st product of products list should contain '6th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    And I input '7th Product for Checkout' to search field
    Then 1st product of products list should contain '7th Product for Checkout'
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
    And I input '10th Product for Checkout' to search field
    Then 1st product of products list should contain '10th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    And I input '11th Product for Checkout' to search field
    Then 1st product of products list should contain '11th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then I should see cart addon items button
    Then cart addon items price should contain 'HK$100.99'
    When I click on cart addon items button
    Then I should see addon added to cart

    Then I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'

    And I select country dropdown option included 'Hong Kong' of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included 'S.F. Express - Office / Home Delivery' of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included 'Bank Transfer' of payment method dropdown
    And I wait for 5 seconds for loading

    Then 1st item promotions should contain 'Buy 3 for $30.99'
    Then 2nd item promotions should contain 'Buy 3 for $30.99'
    Then 3rd item promotions should contain 'Buy 3 for $30.99'
    Then 4th item promotions should contain 'Entire order over HK$264.95 selected products get 15% off'
    Then 5th item promotions should contain 'Entire order over HK$263.30 selected categories get 20% off'
    Then 6th item promotions should contain 'Buy 2 in Group A & 1 in Group B for $90.99'
    Then 7th item promotions should contain 'Buy 2 in Group A & 1 in Group B for $90.99'
    Then 8th item promotions should contain 'Buy 2 in Group A & 1 in Group B for $90.99'
    Then 10th item promotions should contain 'Entire order over HK$241.48 get 1 free gift'

    Then promotion description should contain 'Buy 2 in Group A & 1 in Group B for $90.99'    
    Then promotion description should contain '-HK$160.98'
    Then promotion description should contain 'Buy 3 for $30.99'
    Then promotion description should contain '-HK$56.98'
    Then promotion description should contain 'Entire order over HK$264.95 selected products get 15% off'
    Then promotion description should contain '-HK$1.65'
    Then promotion description should contain 'Entire order over HK$263.30 selected categories get 20% off'
    Then promotion description should contain '-HK$6.20'
    Then promotion description should contain 'Entire order over HK$241.48 get 1 free gift'
    Then promotion description should contain 'Entire order over HK$257.10 get HK$15.62 off'
    Then promotion description should contain '-HK$15.62'
    Then promotion description should not contain 'Entire order over HK$257.10 get 10% off'
    Then promotion description should contain 'Entire order over HK$228.48 get free shipping'

    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I select delivery address dropdown option included "Hong Kong Island" of 1st delivery address dropdown
    And I select delivery address dropdown option included "Central and Western" of 2nd delivery address dropdown
    And I select delivery address dropdown option included "The Peak" of 3rd delivery address dropdown
    And I fill address to delivery address field
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then discount applied should contain 'Buy 3 for $30.99'
    Then discount applied should contain '-HK$56.98'
    Then discount applied should contain 'Buy 2 in Group A & 1 in Group B for $90.99'
    Then discount applied should contain '-HK$160.98'
    Then discount applied should contain 'Entire order over HK$264.95 selected products get 15% off'
    Then discount applied should contain '-HK$1.65'
    Then discount applied should contain 'Entire order over HK$263.30 selected categories get 20% off'
    Then discount applied should contain '-HK$6.20'
    Then discount applied should contain 'Entire order over HK$257.10 get HK$15.62 off'
    Then discount applied should contain '-HK$15.62'
    Then discount applied should not contain 'Entire order over HK$257.10 get 10% off'
    Then discount applied should contain 'Entire order over HK$241.48 get 1 free gift'
    Then discount applied should contain 'Entire order over HK$228.48 get free shipping'
    Then item subtotal should contain 'HK$482.91'
    Then item discount applied should contain '-HK$241.43'
    Then applied store credits should contain '-HK$13.00'
    Then delivery fee should contain 'HK$0'
    Then total should contain 'HK$228.48'

    And ---ROLL BACK---
    Given I am on Bundle Pricing Index Page
    When I input 'Buy 3 for $30.99' to search field
    Then 1st row of promotions should contain 'Buy 3 for $30.99'
    Then I should see row of select checkbox list
    When I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see alert

    When I click on tab included 'Bundle Group Pricing'
    And I input 'Buy 2 in Group A & 1 in Group B for $90.99' to search field
    Then 1st row of promotions should contain 'Buy 2 in Group A & 1 in Group B for $90.99'
    Then I should see row of select checkbox list
    When I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see alert

    Given I am on Promotion Index Page
    When I input 'promotion basecase phase 1' to search field
    Then I should see row of select checkbox list
    When I click on select all checkbox
    And I select unpublish of bulk actions dropdown
    Then I should see alert

    Given I am on Free Shipping Index Page
    When I input 'promotion basecase phase 1' to search field
    Then I should see row of select checkbox list
    When I click on select all checkbox
    And I select unpublish of bulk actions dropdown
    Then I should see alert
    
    Given I am on Cart Add On Items Index Page
    When I click on 1st select checkbox of cart addon list
    Then I select unpublish of bulk actions dropdown
    Then I should see alert

    Given I am on Store Credit Page
    When I select credit amount rule dropdown option included 'Unlimited' of credit amount rule dropdown
    And I should see disabled maximum amount field
    And I click on update button
    Then I should see alert

    Given I am on Customer List Page
    When I input email to search field
    Then I should see view button
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    When I click on assign credits button
    Then I should see popover
    When I fill "-7" to amount of credit field
    And I fill "Rollback amount of credits" to reason field
    And I click on credit save button
    Then I scroll down to assign credits button
    Then I should see row of credit list
    Then credit balance amount should equal to '0'