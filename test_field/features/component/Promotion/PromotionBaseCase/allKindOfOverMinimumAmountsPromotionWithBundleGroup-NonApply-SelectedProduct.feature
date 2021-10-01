@PromotionBaseCase @Admin @Storefront @Promotion @allKindOfOverMinimumAmountsPromotionWithBundleGroup-NonApply-SelectedProduct @fixture-product @fixture-shop @fixture-payment @fixture-delivery @fixture-freegift @fixture-promotion-basecase-minimum-amounts-bundle-group @EAT-1132 @C25723

Feature: All kind of over minimum amounts promotion with bundle group - NonApply - select products
  As a Shopline Promotion logic
  I want to check the promotion would not be apply
  When I increase the limit of promoition

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

    Given I am on Cart Add On Items Index Page
    When I click on 1st select checkbox of cart addon list
    Then I select publish of bulk actions dropdown
    Then I should see alert

    Given I am on Bundle Pricing Index Page
    When I input 'Buy 3 for $30' to search field
    Then 1st row of promotions should contain 'Buy 3 for $30'
    Then I should see row of select checkbox list
    When I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

    When I click on tab included 'Bundle Group Pricing'
    And I input 'Buy 2 in Group A & 1 in Group B for $90' to search field
    Then 1st row of promotions should contain 'Buy 2 in Group A & 1 in Group B for $90'
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
    And I input '12th Product for Checkout' to search field
    Then 1st product of products list should contain '12th Product for Checkout'
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

    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'

    Then I should see cart addon items button
    Then cart addon items price should contain 'NT$100'
    When I click on cart addon items button
    Then I should see addon added to cart

    And I select country dropdown option included 'Taiwan' of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included 'Custom' of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included 'Cash on Delivery' of payment method dropdown
    And I wait for 5 seconds for loading
    
    Then 1st item promotions should contain 'Buy 3 for $30'
    Then 2nd item promotions should contain 'Buy 3 for $30'
    Then 3rd item promotions should contain 'Buy 3 for $30'
    Then 4th item promotions should contain 'Entire order over NT$329 selected products get 15% off'
    Then 5th item promotions should contain 'Buy 2 in Group A & 1 in Group B for $90'
    Then 6th item promotions should contain 'Buy 2 in Group A & 1 in Group B for $90'
    Then 7th item promotions should contain 'Entire order over NT$327 selected categories get 20% off'
    Then 8th item promotions should contain 'Buy 2 in Group A & 1 in Group B for $90'
    Then 10th item promotions should contain 'Entire order over NT$286 get 1 free gift'
    Then promotion description should contain 'Buy 3 for $30'
    Then promotion description should contain '-NT$35'
    Then promotion description should contain 'Buy 2 in Group A & 1 in Group B for $90'
    Then promotion description should contain '-NT$90'
    Then promotion description should contain 'Entire order over NT$329 selected products get 15% off'
    Then promotion description should contain '-NT$2'
    Then promotion description should contain 'Entire order over NT$327 selected categories get 20% off'
    Then promotion description should contain '-NT$20'
    Then promotion description should contain 'Entire order over NT$286 get 1 free gift'
    Then promotion description should contain 'Entire order over NT$307 get 10% off'
    Then promotion description should contain '-NT$21'
    Then promotion description should contain 'Entire order over NT$271 get free shipping'
    Then cart item subtotal should contain 'NT$454'
    Then delivery fee should contain 'NT$0'
    Then applied store credits should contain '-NT$15'
    Then total should contain 'NT$271'

  @EAT-1132-1
  Scenario: Nonapply selected products over minimum amounts promotion
    When I switch to 2 of tabs
    Given I am on Promotion Index Page
    And I input 'Entire order over NT$329 selected products get 15% off' to search field
    Then I should see edit dropdown
    When I select promotion option of edit dropdown
    Then I should be redirected to Promotion Edit Page
    When I fill '（rollback）Entire order over NT$330 selected products get 15% off' to name field
    And I fill '330' to promotion condition field
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then discount summary should equal to 'Get 15% off on Selected Products with purchase over NT$330'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    And I input 'Entire order over NT$330 selected products get 15% off' to search field
    Then row of promotions should contain '（rollback）Entire order over NT$330 selected products get 15% off'
    Then row of promotions should contain 'Never expires'

    When I switch to 1 of tabs
    Then I should be redirected to Shop Cart Page
    Then I Refresh
    
    Then 1st item promotions should contain 'Buy 3 for $30'
    Then 2nd item promotions should contain 'Buy 3 for $30'
    Then 3rd item promotions should contain 'Buy 3 for $30'
    Then 4th item promotions should contain 'Entire order over NT$327 selected categories get 20% off'
    Then 5th item promotions should contain 'Buy 2 in Group A & 1 in Group B for $90'
    Then 6th item promotions should contain 'Buy 2 in Group A & 1 in Group B for $90'
    Then 7th item promotions should contain 'Entire order over NT$327 selected categories get 20% off'
    Then 8th item promotions should contain 'Buy 2 in Group A & 1 in Group B for $90'
    Then 10th item promotions should contain 'Entire order over NT$286 get 1 free gift'

    Then promotion description should contain 'Buy 3 for $30'
    Then promotion description should contain '-NT$35'
    Then promotion description should contain 'Buy 2 in Group A & 1 in Group B for $90'
    Then promotion description should contain '-NT$90'
    Then promotion description should not contain '（rollback）Entire order over NT$330 selected products get 15% off'
    Then promotion description should not contain 'Entire order over NT$329 selected products get 15% off'
    Then promotion description should contain 'Entire order over NT$327 selected categories get 20% off'
    Then promotion description should contain '-NT$22'
    Then promotion description should contain 'Entire order over NT$286 get 1 free gift'
    Then promotion description should contain 'Entire order over NT$307 get 10% off'
    Then promotion description should contain '-NT$21'
    Then promotion description should contain 'Entire order over NT$271 get free shipping'
    Then cart item subtotal should contain 'NT$454'
    Then delivery fee should contain 'NT$0'
    Then applied store credits should contain '-NT$15'
    Then total should contain 'NT$271'

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
    Then discount applied should contain 'Buy 2 in Group A & 1 in Group B for $90'
    Then discount applied should not contain '（rollback）Entire order over NT$330 selected products get 15% off'
    Then discount applied should not contain 'Entire order over NT$329 selected products get 15% off'
    Then discount applied should contain 'Entire order over NT$271 get free shipping'
    Then discount applied should contain 'Entire order over NT$327 selected categories get 20% off'
    Then discount applied should contain 'Entire order over NT$307 get 10% off'
    Then discount applied should contain 'Entire order over NT$286 get 1 free gift'
    Then item subtotal should contain 'NT$454'
    Then applied store credits should contain '-NT$15'
    Then delivery fee should contain 'NT$0'
    Then total should contain 'NT$271'

    And ---ROLL BACK---
    Given I am on Promotion Index Page
    And I input 'Entire order over NT$330 selected products get 15% off' to search field
    Then I should see edit dropdown
    When I select promotion option of edit dropdown
    Then I should be redirected to Promotion Edit Page
    When I fill '[promotion basecase phase 1] - Entire order over NT$329 selected products get 15% off' to name field
    And I fill '329' to promotion condition field
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then discount summary should equal to 'Get 15% off on Selected Products with purchase over NT$329'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    When I input 'promotion basecase phase 1' to search field
    Then I should see row of select checkbox list
    When I click on select all checkbox
    And I select unpublish of bulk actions dropdown
    Then I should see alert

    Given I am on Bundle Pricing Index Page
    When I input 'Buy 3 for $30' to search field
    Then 1st row of promotions should contain 'Buy 3 for $30'
    Then I should see row of select checkbox list
    When I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see alert

    When I click on tab included 'Bundle Group Pricing'
    And I input 'Buy 2 in Group A & 1 in Group B for $90' to search field
    Then 1st row of promotions should contain 'Buy 2 in Group A & 1 in Group B for $90'
    Then I should see row of select checkbox list
    When I click on 1st row of select checkbox list
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
    When I fill "-5" to amount of credit field
    And I fill "Rollback amount of credits" to reason field
    And I click on credit save button
    Then I scroll down to assign credits button
    Then I should see row of credit list
    Then credit balance amount should equal to '0'