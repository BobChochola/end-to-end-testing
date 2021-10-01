@PromotionBaseCase @Admin @Storefront @Promotion @allKindOfOverMinimumAmountPromotion @fixture-product @fixture-shop @fixture-payment @fixture-delivery @fixture-freegift @fixture-promotion @EAT-935 @C25701

Feature: All kind of over minimum amount promotion
  As a user of Shopline
  I want to create promotion for my customer
  So that my customer can use that when checkout

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

    Given I am on Bundle Pricing Create Page
    And I fill '(dirty data) Buy 3 for $30' to name field
    And I fill '3' to promotion value field
    And I fill '30' to discounted price field
    And I fill '4th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then 1st row of selected product should contain '4th Product for Checkout'
    And I fill '15th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then 2nd row of selected product should contain '15th Product for Checkout'
    And I fill '5th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then 3rd row of selected product should contain '5th Product for Checkout'
    And I fill '12th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then 4th row of selected product should contain '12th Product for Checkout'
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    When I click on preview button
    Then discount summary should equal to 'Purchase 3 items of Selected Products for NT$30'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 3 for $30'
    Then 1st row of promotions should contain 'Never expires'

    Given I am on Bundle Pricing Create Page
    And I fill '(dirty data) Buy 3 for $90' to name field
    And I fill '3' to promotion value field
    And I fill '90' to discounted price field
    And I fill '14th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then 1st row of selected product should contain '14th Product for Checkout'
    And I fill '13th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then 2nd row of selected product should contain '13th Product for Checkout'
    And I fill '7th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then 3rd row of selected product should contain '7th Product for Checkout'
    And I fill '6th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then 4th row of selected product should contain '6th Product for Checkout'
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    When I click on preview button
    Then discount summary should equal to 'Purchase 3 items of Selected Products for NT$90'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 3 for $90'
    Then 1st row of promotions should contain 'Never expires'

    Given I am on Promotion Create Page
    When I fill '(dirty data) Buy selected products over NT$100 get 15% off' to name field
    And I click on subtotal condition checkbox
    And I select minimum amount of condition type dropdown
    And I select selected product of benefit applies dropdown
    And I fill '15' to promotion value field
    And I fill '100' to promotion condition field
    When I input '15th Product for Checkout' to search field
    And I click on search button
    And I should see checkbox of product list
    And I click on 1st checkbox of product list
    And I click on popup confirm button
    Then 1st row of selected product should contain '15th Product for Checkout'
    When I input '5th Product for Checkout' to search field
    And I click on search button
    And I should see checkbox of product list
    And I click on 1st checkbox of product list
    And I click on popup confirm button
    Then 2nd row of selected product should contain '5th Product for Checkout'
    When I input '12th Product for Checkout' to search field
    And I click on search button
    And I should see checkbox of product list
    And I click on 1st checkbox of product list
    And I click on popup confirm button
    Then 3rd row of selected product should contain '12th Product for Checkout'
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then discount summary should equal to 'Get 15% off on Selected Products with purchase over NT$100'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy selected products over NT$100 get 15% off'
    Then 1st row of promotions should contain 'Never expires'

    Given I am on Product Index Page
    When I click on select all button
    And I select assign to categories of bulk actions dropdown
    And I click on categories checkbox
    And I click on assign button
    And I should see confirmation popover
    And I click on confirm bulk button
    Then I should see alert
    Given I am on Promotion Create Page
    When I fill '(dirty data) Buy selected categories over NT$90 get 20% off' to name field
    And I click on subtotal condition checkbox
    And I select minimum amount of condition type dropdown
    And I select selected category of benefit applies dropdown
    And I fill '20' to promotion value field
    And I fill '90' to promotion condition field
    And I click on 1st category checkbox
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then discount summary should equal to 'Get 20% off on Selected Categories with purchase over NT$90'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy selected categories over NT$90 get 20% off'
    Then 1st row of promotions should contain 'Never expires'

    Given I am on Promotion Create Page
    Then I should see name field
    When I fill '(dirty data) Entire order over NT$80 get 10% off' to name field
    And I click on subtotal condition checkbox
    And I select minimum amount of condition type dropdown
    And I select all product of benefit applies dropdown
    And I fill '10' to promotion value field
    And I fill '80' to promotion condition field
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then discount summary should equal to 'Get 10% off on Entire Order with purchase over NT$80'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Entire order over NT$80 get 10% off'
    Then 1st row of promotions should contain 'Never expires'

    Given I am on Promotion Create Page
    When I fill '(dirty data) Entire order over NT$70 get 1 free gift' to name field
    And I click on subtotal condition checkbox
    And I select minimum amount of condition type dropdown
    And I select free gift of benefit type dropdown
    And I fill '1' to promotion value field
    And I fill '70' to promotion condition field
    And I click on select button
    And I should see checkbox of product list
    And I input '1st Created Free Gift' to search free gift field
    Then 1st product of popover list should contain '1st Created Free Gift'
    And I click on 1st checkbox of product list
    And I click on popup confirm button
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then discount summary should equal to 'Get 1 Free Gift(s) (1st Created Free Gift) on Entire Order with purchase over NT$70'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Entire order over NT$70 get 1 free gift'
    Then 1st row of promotions should contain 'Never expires'

    Given I am on Free Shipping Create Page
    And I fill "(dirty data) Entire order over NT$60 get free shipping" to name field
    And I click on subtotal condition checkbox
    And I select minimum amount of condition type dropdown
    And I fill "60" to promotion condition field
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should equal to "(dirty data) Entire order over NT$60 get free shipping"
    Then promotion limitations end date should contain "Never expires"
    Then discount summary should equal to "Enjoy free shipping with purchase over NT$60"
    And I click on confirm button
    Then I should be redirected to Free Shipping Index Page
    Then I should see alert

    Given I am on Store Credit Page
    When I select credit amount rule dropdown option included 'Percentage %' of credit amount rule dropdown
    And I fill '5' to credit amount field
    And I click on update button
    Then I should see alert

    Given I am on Cart Add On Items Create Page
    And I click on valid date field
    Then I should see calendar table
    When I click on today button
    And I click on done button
    And I click on invalid date field
    Then I should see calendar table
    When I click on 3rd available date button
    And I click on done button
    And I fill "(dirty data) Add-on Item" to english name field
    When I click on select add on items button
    Then I should see search add on items field
    And I input "1st Addon for Checkout" to search add on items field
    When I click on search button
    Then add on items name should contain "1st Addon for Checkout"
    And I click on 1st add on items checkbox
    When I click on add on items save button
    Then I should see add on items price field
    And I fill '100' to add on items price field
    And I click on unlimited checkbox
    When I click on save button
    Then I should be redirected to Cart Add On Items Index Page
    Then I should see alert
    Then 1st row of cart addon list should contain "Add-on Item"
    Then 1st row of cart addon list should contain date

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

  Scenario: buy 8 items for check over Minimum Amount Promotion is correct application
    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'

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
    And I input '12th Product for Checkout' to search field
    Then 1st product of products list should contain '12th Product for Checkout'
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

    And I select country dropdown option included 'Taiwan' of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included 'Custom Delivery' of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included 'Custom' of payment method dropdown
    And I wait for 5 seconds for loading

    Then 1st item promotions should contain 'Buy 3 for $30'
    Then 2nd item promotions should contain 'Buy 3 for $30'
    Then 3rd item promotions should contain 'Buy 3 for $30'
    Then 4th item promotions should contain 'Buy selected categories over NT$90 get 20% off'
    Then 5th item promotions should contain 'Buy 3 for $90'
    Then 6th item promotions should contain 'Buy 3 for $90'
    Then 7th item promotions should contain 'Buy 3 for $90'
    Then 8th item promotions should contain 'Buy selected products over NT$100 get 15% off'
    Then 10th item promotions should contain 'Entire order over NT$70 get 1 free gift'

    Then promotion description should contain 'Buy 3 for $30'
    Then promotion description should contain '-NT$35'
    Then promotion description should contain 'Buy 3 for $90'
    Then promotion description should contain '-NT$53'
    Then promotion description should contain 'Buy selected products over NT$100 get 15% off'
    Then promotion description should contain '-NT$2'
    Then promotion description should contain 'Buy selected categories over NT$90 get 20% off'
    Then promotion description should contain '-NT$6'
    Then promotion description should contain 'Entire order over NT$70 get 1 free gift'
    Then promotion description should contain 'Entire order over NT$80 get 10% off'
    Then promotion description should contain '-NT$15'
    Then promotion description should contain 'Entire order over NT$60 get free shipping'
    Then applied store credits should contain '-NT$12'
    Then delivery fee should contain 'NT$0'

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
    Then discount applied should contain 'Buy selected products over NT$100 get 15% off'
    Then discount applied should contain 'Buy selected categories over NT$90 get 20% off'
    Then discount applied should contain '-NT$6'
    Then discount applied should contain 'Entire order over NT$70 get 1 free gift'
    Then discount applied should contain 'Entire order over NT$80 get 10% off'
    Then discount applied should contain '-NT$15'
    Then discount applied should contain 'Entire order over NT$60 get free shipping'
    Then item subtotal should contain 'NT$348'
    Then item discount applied should contain '-NT$111'
    Then applied store credits should contain '-NT$12'
    Then delivery fee should contain 'NT$0'
    Then total should contain 'NT$225'

    And ---ROLL BACK---
    Given I am on Bundle Pricing Index Page
    When I click on 1st row of select checkbox list
    And I click on 2nd row of select checkbox list
    Then I select delete of bulk actions dropdown
    Then I should see confirmation popover
    When I click on delete checkbox
    Then I click on confirm delete button
    Then I should see alert

    Given I am on Promotion Index Page
    When I click on 1st row of select checkbox list
    When I click on 2nd row of select checkbox list
    When I click on 3rd row of select checkbox list
    When I click on 4th row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

    Given I am on Cart Add On Items Index Page
    When I click on 1st select checkbox of cart addon list
    Then I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then cart add on items list should contain "No promotions yet"

    Given I am on Free Shipping Index Page
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
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
    When I fill "-8" to amount of credit field
    And I fill "Rollback amount of credits" to reason field
    And I click on credit save button
    Then I should see row of credit list
    Then credit balance amount should equal to '0'