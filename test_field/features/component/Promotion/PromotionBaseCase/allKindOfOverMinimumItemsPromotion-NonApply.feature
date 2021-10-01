@PromotionBaseCase @Admin @Storefront @Promotion @allKindOfOverMinimumItemsPromotion-NonApply @fixture-promotion-basecase-minimum-items @fixture-product @fixture-shop @fixture-payment @fixture-delivery @fixture-freegift @EAT-1120 @C25700
Feature: All kind of over minimum items promotion - non apply
  As a user of Shopline
  I want to create promotion for my customer
  So that my customer can't use that when checkout

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
    When I input 'promotion basecase phase 1' to search field
    Then I should see 2 row of select checkbox list
    When I click on 1st row of select checkbox list
    When I click on 2nd row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

    Given I am on Promotion Index Page
    When I input 'promotion basecase phase 1' to search field
    Then I should see 5 row of select checkbox list
    When I click on select all checkbox
    And I select publish of bulk actions dropdown
    Then I should see alert

    When I input 'Entire order over 8 items selected products get 15% off' to search field
    Then 1st row of promotion list should contain 'Entire order over 8 items selected products get 15% off'
    Then I should see row of select checkbox list
    When I select promotion option of edit dropdown
    Then I should be redirected to Promotion Edit Page
    When I fill '（rollback）Entire order over 9 items selected products get 15% off' to name field
    And I fill '9' to promotion condition field
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should equal to '（rollback）Entire order over 9 items selected products get 15% off'
    Then discount summary should equal to 'Get 15% off on Selected Products with purchase over 9 items'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page

    When I input 'Entire order over 8 items selected categories get 20% off' to search field
    Then 1st row of promotion list should contain 'Entire order over 8 items selected categories get 20% off'
    Then I should see row of select checkbox list
    When I select promotion option of edit dropdown
    Then I should be redirected to Promotion Edit Page
    When I fill '（rollback）Entire order over 9 items selected categories get 20% off' to name field
    And I fill '9' to promotion condition field
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should equal to '（rollback）Entire order over 9 items selected categories get 20% off'
    Then discount summary should equal to 'Get 20% off on Selected Categories with purchase over 9 items'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page

    When I input 'Entire order over 8 items get 10% off' to search field
    Then 1st row of promotion list should contain 'Entire order over 8 items get 10% off'
    Then I should see row of select checkbox list
    When I click on row of edit button
    Then I should be redirected to Promotion Edit Page
    When I fill '（rollback）Entire order over 9 items get 10% off' to name field
    And I fill '9' to promotion condition field
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should equal to '（rollback）Entire order over 9 items get 10% off'
    Then discount summary should equal to 'Get 10% off on Entire Order with purchase over 9 items'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page

    When I input 'Entire order over 8 items get NT$13 off' to search field
    Then 1st row of promotion list should contain 'Entire order over 8 items get NT$13 off'
    Then I should see row of select checkbox list
    When I click on row of edit button
    Then I should be redirected to Promotion Edit Page
    When I fill '（rollback）Entire order over 9 items get NT$13 off' to name field
    And I fill '9' to promotion condition field
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should equal to '（rollback）Entire order over 9 items get NT$13 off'
    Then discount summary should equal to 'Get NT$13 off on Entire Order with purchase over 9 items'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page

    When I input 'Entire order over 8 items get 1 free gift' to search field
    Then 1st row of promotion list should contain 'Entire order over 8 items get 1 free gift'
    Then I should see row of select checkbox list
    When I click on row of edit button
    Then I should be redirected to Promotion Edit Page
    When I fill '（rollback）Entire order over 9 items get 1 free gift' to name field
    And I fill '9' to promotion condition field
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should equal to '（rollback）Entire order over 9 items get 1 free gift'
    Then discount summary should equal to 'Get 1 Free Gift(s) (1st Created Free Gift) on Entire Order with purchase over 9 items'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page

    Given I am on Free Shipping Index Page
    When I input 'promotion basecase phase 1' to search field
    Then I should see 1 row of select checkbox list
    When I click on select all checkbox
    And I select publish of bulk actions dropdown
    Then I should see alert
    Then I should be redirected to Free Shipping Index Page

    When I input 'Entire order over 8 items get free shipping' to search field
    Then 1st row of free shipping list should contain 'Entire order over 8 items get free shipping'
    Then I should see row of select checkbox list
    When I click on row of edit button
    Then I should be redirected to Free Shipping Edit Page
    When I fill '（rollback）Entire order over 9 items get free shipping' to name field
    And I fill '9' to promotion condition field
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should equal to '（rollback）Entire order over 9 items get free shipping'
    Then discount summary should equal to 'Enjoy free shipping with purchase over 9 items'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Free Shipping Index Page

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
    Then I should see row of credit list
    Then row of credit list should contain "+ 20"
    Then row of credit list should contain "Testing amount of credits"

  Scenario: buy 9 items for check overMinimum Promotion isn't correct application
    Given I am on Shop Product Index Page
    And I input '4th Product for Checkout' to search field
    Then 1st product of products list should contain '4th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    And I input '15th Product for Checkout' to search field
    Then 1st product of products list should contain '15th Product for Checkout'
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
    And I input '14th Product for Checkout' to search field
    Then 1st product of products list should contain '14th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    And I input '13th Product for Checkout' to search field
    Then 1st product of products list should contain '13th Product for Checkout'
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
    And I input '6th Product for Checkout' to search field
    Then 1st product of products list should contain '6th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    And I input '19th Product for Checkout' to search field
    Then 1st product of products list should contain '19th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I click on login button
    Then I should be redirected to Shop Login Page
    And I fill email to email field
    And I fill password to password field
    And I click on submit button
    Then I should be redirected to Shop Cart Page

    Then I should see cart addon items button
    Then cart addon items price should contain 'NT$100'
    When I click on cart addon items button
    Then I should see addon added to cart

    And I select country dropdown option included 'Taiwan' of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included 'Custom Delivery' of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included 'Custom' of payment method dropdown

    Then 1st item promotions should contain 'Buy 3 for $30'
    Then 2nd item promotions should contain 'Buy 3 for $30'
    Then 3rd item promotions should contain 'Buy 3 for $30'
    Then 5th item promotions should contain 'Buy 3 for $90'
    Then 6th item promotions should contain 'Buy 3 for $90'
    Then 7th item promotions should contain 'Buy 3 for $90'

    Then promotion description should contain 'Buy 3 for $30'
    Then promotion description should contain '-NT$35'
    Then promotion description should contain 'Buy 3 for $90'
    Then promotion description should contain '-NT$53'
    Then promotion description should not contain 'Entire order over 9 items selected products get 15% off'
    Then promotion description should not contain 'Entire order over 9 items selected categories get 20% off'
    Then promotion description should not contain 'Entire order over 9 items get 10% off'
    Then promotion description should not contain 'Entire order over 9 items get NT$13 off'
    Then promotion description should not contain 'Entire order over 9 items get 1 free gift'
    Then promotion description should not contain 'Enjoy free shipping with purchase over 9 items'
    Then applied store credits should contain '-NT$13'
    Then delivery fee should contain 'NT$10'
    Then total should contain 'NT$248'

    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then discount applied should contain 'Buy 3 for $30'
    Then discount applied should contain '-NT$35'
    Then discount applied should contain 'Buy 3 for $90'
    Then discount applied should contain '-NT$53'
    Then discount applied should not contain 'Entire order over 9 items selected products get 15% off'
    Then discount applied should not contain 'Entire order over 9 items selected categories get 20% off'
    Then discount applied should not contain 'Entire order over 9 items get 10% off'
    Then discount applied should not contain 'Entire order over 9 items get NT$13 off'
    Then discount applied should not contain 'Entire order over 9 items get 1 free gift'
    Then discount applied should not contain 'Entire order over 9 items get free shipping'
    Then item subtotal should contain 'NT$339'
    Then item discount applied should contain '-NT$88'
    Then applied store credits should contain '-NT$13'
    Then delivery fee should contain 'NT$10'
    Then total should contain 'NT$248'

    And ---ROLL BACK---
    Given I am on Bundle Pricing Index Page
    When I input 'promotion basecase phase 1' to search field
    Then I should see 2 row of select checkbox list
    When I click on 1st row of select checkbox list
    When I click on 2nd row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see alert

    Given I am on Promotion Index Page
    When I input 'Entire order over 9 items selected products get 15% off' to search field
    Then 1st row of promotion list should contain 'Entire order over 9 items selected products get 15% off'
    Then I should see row of select checkbox list
    When I select promotion option of edit dropdown
    Then I should be redirected to Promotion Edit Page
    When I fill '[promotion basecase phase 1] - Entire order over 8 items selected products get 15% off' to name field
    And I fill '8' to promotion condition field
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should equal to '[promotion basecase phase 1] - Entire order over 8 items selected products get 15% off'
    Then discount summary should equal to 'Get 15% off on Selected Products with purchase over 8 items'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page

    When I input 'Entire order over 9 items selected categories get 20% off' to search field
    Then 1st row of promotion list should contain 'Entire order over 9 items selected categories get 20% off'
    Then I should see row of select checkbox list
    When I select promotion option of edit dropdown
    Then I should be redirected to Promotion Edit Page
    When I fill '[promotion basecase phase 1] - Entire order over 8 items selected categories get 20% off' to name field
    And I fill '8' to promotion condition field
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should equal to '[promotion basecase phase 1] - Entire order over 8 items selected categories get 20% off'
    Then discount summary should equal to 'Get 20% off on Selected Categories with purchase over 8 items'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page

    When I input 'Entire order over 9 items get 10% off' to search field
    Then 1st row of promotion list should contain 'Entire order over 9 items get 10% off'
    Then I should see row of select checkbox list
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

    When I input 'Entire order over 9 items get NT$13 off' to search field
    Then 1st row of promotion list should contain 'Entire order over 9 items get NT$13 off'
    Then I should see row of select checkbox list
    When I click on row of edit button
    Then I should be redirected to Promotion Edit Page
    When I fill '[promotion basecase phase 1] - Entire order over 8 items get NT$13 off' to name field
    And I fill '8' to promotion condition field
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should equal to '[promotion basecase phase 1] - Entire order over 8 items get NT$13 off'
    Then discount summary should equal to 'Get NT$13 off on Entire Order with purchase over 8 items'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page

    When I input 'Entire order over 9 items get 1 free gift' to search field
    Then 1st row of promotion list should contain 'Entire order over 9 items get 1 free gift'
    Then I should see row of select checkbox list
    When I click on row of edit button
    Then I should be redirected to Promotion Edit Page
    When I fill '[promotion basecase phase 1] - Entire order over 8 items get 1 free gift' to name field
    And I fill '8' to promotion condition field
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should equal to '[promotion basecase phase 1] - Entire order over 8 items get 1 free gift'
    Then discount summary should equal to 'Get 1 Free Gift(s) (1st Created Free Gift) on Entire Order with purchase over 8 items'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page

    When I input 'promotion basecase phase 1' to search field
    Then I should see 5 row of select checkbox list
    When I click on select all checkbox
    And I select unpublish of bulk actions dropdown
    Then I should see alert

    Given I am on Free Shipping Index Page
    When I input 'Entire order over 9 items get free shipping' to search field
    Then 1st row of free shipping list should contain 'Entire order over 9 items get free shipping'
    Then I should see row of select checkbox list
    When I click on row of edit button
    Then I should be redirected to Free Shipping Edit Page
    When I fill '[promotion basecase phase 1] - Entire order over 8 items get free shipping' to name field
    And I fill '8' to promotion condition field
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should equal to '[promotion basecase phase 1] - Entire order over 8 items get free shipping'
    Then discount summary should equal to 'Enjoy free shipping with purchase over 8 items'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Free Shipping Index Page

    When I input 'promotion basecase phase 1' to search field
    Then I should see 1 row of select checkbox list
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
    Then I should see row of credit list
    Then credit balance amount should equal to '0'