@PromotionBaseCase @PromotionPreviewBaseCase @BaseCase @Admin @Storefront @Promotion @allKindOfOverMinimumAmountsPromotionWithBundleGroup-discountAmount @fixture-product
@fixture-shop @fixture-payment @fixture-delivery @fixture-promotion-basecase-minimum-amounts-bundle-group
  @fixture-promotion-basecase-minimum-amount-discount-amount @EAT-1255 @C26963
Feature: All kind of over minimum items promotion with bundle group promotion - disount amount
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
    When I check and click no thanks button

    Given I am on Bundle Pricing Index Page
    When I input 'promotion basecase preview' to search field
    Then I should see row of select checkbox list
    When I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

    When I click on tab included 'Bundle Group Pricing'
    And I input 'promotion basecase preview' to search field
    Then I should see row of select checkbox list
    When I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

    Given I am on Promotion Index Page
    When I input 'promotion basecase preview' to search field
    Then I should see 9 row of select checkbox list
    When I click on select all checkbox
    And I select publish of bulk actions dropdown
    Then I should see alert

    Given I am on Free Shipping Index Page
    When I input 'promotion basecase preview' to search field
    Then I should see 2 row of select checkbox list
    When I click on select all checkbox
    And I select publish of bulk actions dropdown
    Then I should see alert

    Given I am on Cart Add On Items Index Page
    When I click on edit button
    Then I should be redirected to Cart Add On Items Edit Page
    When I fill '[roll back] - Add-on Item' to english name field
    And I fill '50' to add on items price field
    And I click on save button
    Then I should be redirected to Cart Add On Items Index Page
    Then I should see alert
    When I click on 1st select checkbox of cart addon list
    Then I select publish of bulk actions dropdown
    Then I should see alert

    Given I am on Store Credit Page
    When I select apply credit condition dropdown option included 'Total Order over' of apply credit condition dropdown
    And I fill '100' to total order amount field
    When I select credit amount rule dropdown option included 'Percentage %' of credit amount rule dropdown
    And I fill '10' to credit amount field
    And I click on update button
    Then I should see alert

    Given I am on Customer List Page
    When I input email to search field
    Then I should see view button
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    When I click on membership tier settings update button
    Then I should see membership tier dropdown
    When I select membership tier dropdown option included '[promotion basecase preview] - VIP' of membership tier dropdown
    And I should see popover
    And I click on popover confirm button
    Then membership tier settings label should contain '[promotion basecase preview] - VIP'
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

  Scenario: buy 11 items for check over Minimum amounts Promotion and Bundle Group Pricing Promotion should be applied correctly
    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page

    Given I am on Shop Product Index Page
    And I input 'A Product for Checkout' to search field
    Then 1st product of products list should contain 'A Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on addon item checkbox
    And I click on buy together button

    Given I am on Shop Product Index Page
    And I input 'B Product for Checkout' to search field
    Then 1st product of products list should contain 'B Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button

    Given I am on Shop Product Index Page
    And I input 'C Product for Checkout' to search field
    Then 1st product of products list should contain 'C Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button

    Given I am on Shop Product Index Page
    And I input 'D Product for Checkout' to search field
    Then 1st product of products list should contain 'D Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button

    Given I am on Shop Product Index Page
    And I input 'E Product for Checkout' to search field
    Then 1st product of products list should contain 'E Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button

    Given I am on Shop Product Index Page
    And I input 'F Product for Checkout' to search field
    Then 1st product of products list should contain 'F Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button

    Given I am on Shop Product Index Page
    And I input 'G Product for Checkout' to search field
    Then 1st product of products list should contain 'G Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button

    Given I am on Shop Product Index Page
    And I input 'K Product for Checkout' to search field
    Then 1st product of products list should contain 'K Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button

    Given I am on Shop Product Index Page
    And I input 'X Product for Checkout' to search field
    Then 1st product of products list should contain 'X Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button

    Given I am on Shop Product Index Page
    And I input 'Y Product for Checkout' to search field
    Then 1st product of products list should contain 'Y Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button

    Given I am on Shop Product Index Page
    And I input 'Z Product for Checkout' to search field
    Then 1st product of products list should contain 'Z Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then I should see cart addon items button
    Then cart addon items price should contain 'NT$50'
    When I click on cart addon items button
    Then I should see addon added to cart

    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'

    And I select country dropdown option included 'Taiwan' of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included 'Custom Delivery' of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included 'Custom' of payment method dropdown
    And I wait for 5 seconds for loading

    Then 1st item promotions should contain 'Buy 3 for $100'
    Then 3rd item promotions should contain 'Buy 3 for $100'
    Then 4th item promotions should contain 'Buy 3 for $100'
    Then 5th item promotions should contain 'Entire order over NT$530 selected categories get NT$11 off'
    Then 6th item promotions should contain 'Buy 2 in Group A & 1 in Group B for $150'
    Then 7th item promotions should contain 'Buy 2 in Group A & 1 in Group B for $150'
    Then 8th item promotions should contain 'Buy 2 in Group A & 1 in Group B for $150'
    Then 9th item promotions should contain 'Entire order over NT$584 selected products get NT$4 off'
    Then 11st item promotions should contain 'Selected products over NT$50 selected products get NT$51 off'
    Then 12nd item promotions should contain 'Selected categories over NT$50 selected categories get NT$51 off'
    Then 14th item promotions should contain 'Entire order over NT$150 get 1 free gift'
    Then 15th item promotions should contain 'Selected category over NT$100 get 1 free gift'
    Then 16th item promotions should contain 'Selected products over NT$85 get 1 free gift'

    Then promotion description should contain 'Buy 2 in Group A & 1 in Group B for $150'    
    Then promotion description should contain '-NT$21'
    Then promotion description should contain 'Buy 3 for $100'
    Then promotion description should contain '-NT$8'
    Then promotion description should contain 'Entire order over NT$584 selected products get NT$4 off'
    Then promotion description should contain '-NT$4'
    Then promotion description should contain 'Selected products over NT$50 selected products get NT$51 off'
    Then promotion description should contain '-NT$50'
    Then promotion description should contain 'Entire order over NT$530 selected categories get NT$11 off'
    Then promotion description should contain '-NT$11'
    Then promotion description should contain 'Selected categories over NT$50 selected categories get NT$51 off'
    Then promotion description should contain '-NT$50'
    Then promotion description should contain 'Entire order over NT$150 get 1 free gift'
    Then promotion description should contain 'Selected category over NT$100 get 1 free gift'
    Then promotion description should contain 'Selected products over NT$85 get 1 free gift'
    Then promotion description should contain 'Entire order get NT$500 off'
    Then promotion description should contain '-NT$319'
    Then promotion description should not contain 'Entire order over NT$419 get NT$31 off'
    Then promotion description should not contain 'Get 5% off on Entire Order'
    Then promotion description should contain 'Get free shipping'
    Then promotion description should not contain 'Entire order over NT$140 get free shipping'
    Then promotion description should not contain 'Entire order over NT$286 get free shipping'

    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse

    Then discount applied should contain 'Buy 2 in Group A & 1 in Group B for $150'    
    Then discount applied should contain '-NT$21'
    Then discount applied should contain 'Buy 3 for $100'
    Then discount applied should contain '-NT$8'
    Then discount applied should contain 'Entire order over NT$584 selected products get NT$4 off'
    Then discount applied should contain '-NT$4'
    Then discount applied should contain 'Selected products over NT$50 selected products get NT$51 off'
    Then discount applied should contain '-NT$50'
    Then discount applied should contain 'Entire order over NT$530 selected categories get NT$11 off'
    Then discount applied should contain '-NT$11'
    Then discount applied should contain 'Selected categories over NT$50 selected categories get NT$51 off'
    Then discount applied should contain '-NT$50'
    Then discount applied should contain 'Entire order over NT$150 get 1 free gift'
    Then discount applied should contain 'Selected category over NT$100 get 1 free gift'
    Then discount applied should contain 'Selected products over NT$85 get 1 free gift'
    Then discount applied should contain 'Entire order get NT$500 off'
    Then discount applied should contain '-NT$319'
    Then discount applied should not contain 'Entire order over NT$419 get NT$31 off'
    Then discount applied should not contain 'Get 5% off on Entire Order'
    Then discount applied should contain 'Get free shipping'
    Then discount applied should not contain 'Entire order over NT$140 get free shipping'
    Then discount applied should not contain 'Entire order over NT$286 get free shipping'
    Then item subtotal should contain 'NT$613'
    Then item discount applied should contain '-NT$463'
    Then applied store credits should contain '-NT$10'
    Then delivery fee should contain 'NT$0'
    Then total should contain 'NT$140'

    And ---ROLL BACK---
    Given I am on Bundle Pricing Index Page
    When I input 'promotion basecase preview' to search field
    Then I should see row of select checkbox list
    When I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see alert

    When I click on tab included 'Bundle Group Pricing'
    And I input 'promotion basecase preview' to search field
    Then I should see row of select checkbox list
    When I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see alert

    Given I am on Promotion Index Page
    When I input 'promotion basecase preview' to search field
    Then I should see 9 row of select checkbox list
    When I click on select all checkbox
    And I select unpublish of bulk actions dropdown
    Then I should see alert

    Given I am on Free Shipping Index Page
    When I input 'promotion basecase preview' to search field
    Then I should see 2 row of select checkbox list
    When I click on select all checkbox
    And I select unpublish of bulk actions dropdown
    Then I should see alert

    Given I am on Cart Add On Items Index Page
    When I click on edit button
    Then I should be redirected to Cart Add On Items Edit Page
    When I fill '[promotion basecase phase 1] - Add-on Item' to english name field
    And I fill '100' to add on items price field
    And I click on save button
    Then I should be redirected to Cart Add On Items Index Page
    Then I should see alert
    When I click on 1st select checkbox of cart addon list
    Then I select unpublish of bulk actions dropdown
    Then I should see alert

    Given I am on Store Credit Page
    When I select apply credit condition dropdown option included 'No Condition' of apply credit condition dropdown
    When I select credit amount rule dropdown option included 'Unlimited' of credit amount rule dropdown
    And I should see disabled maximum amount field
    And I click on update button
    Then I should see alert

    Given I am on Customer List Page
    When I input email to search field
    Then I should see view button
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    When I click on membership tier settings update button
    Then I should see membership tier dropdown
    When I select membership tier dropdown option included 'Basic' of membership tier dropdown
    And I should see popover
    And I click on popover confirm button
    Then membership tier settings label should contain 'Basic'
    When I click on assign credits button
    Then I should see popover
    When I fill "-10" to amount of credit field
    And I fill "Rollback amount of credits" to reason field
    And I click on credit save button
    Then I scroll down to assign credits button
    Then I should see row of credit list
    Then credit balance amount should equal to '0'