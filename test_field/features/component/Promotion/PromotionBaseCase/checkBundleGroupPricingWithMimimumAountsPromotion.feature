@PromotionBaseCase @Admin @Storefront @Promotion @checkBundleGroupPricingWithMimimumAountsPromotion @fixture-shop @fixture-product @fixture-delivery @fixture-payment @fixture-addon @fixture-promotion @EAT-1125 @C25716
Feature: Minimum Amount = main product price - bundle price discount - selected product discount + addon price 
  As a system
  I need to be sure Minimum Amount logic is correct.

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

    Given I am on Bundle Pricing Index Page
    When I select add promotion dropdown option included 'Bundle Group' of add promotion dropdown
    Then I should be redirected to Bundle Group Create Page
    And I fill '(dirty data)Buy 2 in Group A(4, 5, 6th) & 1 in Group B(1, 3rd) for $100' to name field
    And I click on stackable off checkbox
    When I fill '2' to group a field
    When I fill '1' to group b field
    When I fill '100' to price field
    Then discount summary should contain 'Purchase 2 items of Selected Products in Group A and 1 items of Selected Products in Group B for NT$100'
    And I should see group a tab
    Then select product button should contain 'Select Products in Group A'
    When I click on select product button
    Then I should see select product popup
    Then I input '4th Product for Checkout' to search field
    Then 1st product list should contain '4th Product for Checkout'
    Then I click on 1st checkbox of product list
    Then I input '5th Product for Checkout' to search field
    Then 1st product list should contain '5th Product for Checkout'
    Then I click on 1st checkbox of product list
    Then I input '6th Product for Checkout' to search field
    Then 1st product list should contain '6th Product for Checkout'
    Then I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should not see select product popup
    When I click on group b tab
    Then select product button should contain 'Select Products in Group B'
    When I click on select product button
    Then I should see select product popup
    When I input '1st Product for Checkout' to search field
    Then 1st product list should contain '1st Product for Checkout'
    Then I click on 1st checkbox of product list
    Then I input '3rd Product for Checkout' to search field
    Then 1st product list should contain '3rd Product for Checkout'
    Then I click on 1st checkbox of product list
    When I click on popup confirm button
    When I click on 1st countinue to button
    When I click on 2nd countinue to button
    When I click on 3rd countinue to button
    Then I scroll down to preview button
    When I click on preview button
    Then promotion name should contain '(dirty data)Buy 2 in Group A(4, 5, 6th) & 1 in Group B(1, 3rd) for $100'
    When I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page

    Given I am on Promotion Create Page
    And I fill "(dirty data)Get 15% off on Selected Products(4th) with purchase of Selected Products(4th) over NT$10" to name field
    And I click on selected products condition checkbox
    And I select minimum amount of condition type dropdown
    When I select discount percent of benefit type dropdown
    Then I fill "15" to 1st promotion value field
    And I fill "10" to 1st promotion condition field
    When I fill '4th Product for Checkout' to search field
    Then I click on search button
    Then I should see select product popup
    And 1st product of popover list should contain '4th Product for Checkout'
    And I click on 1st checkbox of product list
    And I click on popup confirm button
    Then 1st row of selected product should contain '4th Product for Checkout'
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should equal to "(dirty data)Get 15% off on Selected Products(4th) with purchase of Selected Products(4th) over NT$10"
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page

    Given I am on Promotion Create Page
    And I fill "(dirty data)Get 10% off on Entire Order with purchase over $128" to name field
    And I click on subtotal condition checkbox
    And I select minimum amount of condition type dropdown
    When I select discount percent of benefit type dropdown
    When I select all product of benefit applies dropdown
    Then I fill "10" to 1st promotion value field
    And I fill "128" to 1st promotion condition field
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should equal to "(dirty data)Get 10% off on Entire Order with purchase over $128"
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page

    Given I am on Cart Add On Items Create Page
    And I fill "(dirty data)Add-on Item" to english name field
    When I click on select add on items button
    Then I should see search add on items field
    And I input "3rd Addon for Checkout" to search add on items field
    When I click on search button
    Then add on items name should contain "3rd Addon for Checkout"
    And I click on 1st add on items checkbox
    When I click on add on items save button
    Then I should see add on items price field
    And I fill '10' to add on items price field
    And I click on unlimited checkbox
    When I click on save button
    Then I should be redirected to Cart Add On Items Index Page
    Then I should see alert
    Then 1st row of cart addon list should contain "Add-on Item"

  Scenario: Be sure Minimum Amount logic is correct
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    When I input "3rd Product for Checkout" to search field
    Then 1st product of products list should contain '3rd Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    When I input "4th Product for Checkout" to search field
    Then 1st product of products list should contain '4th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    When I input "5th Product for Checkout" to search field
    Then 1st product of products list should contain '5th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    When I input "6th Product for Checkout" to search field
    Then 1st product of products list should contain '6th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel

    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I click on login button
    Then I should be redirected to Shop Login Page
    And I fill email to email field
    And I fill password to password field
    And I click on submit button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    Then I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    Then I wait for 5 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    When I click on cart addon items button
    Then I should see addon added to cart
    Then 6th row of cart item should contain '3rd Addon for Checkout'
    Then I scroll down to proceed to checkout button
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then I should see row of product items
    And 1st row of product items should contain '1st Product for Checkout'
    And 1st row of product items should contain 'Buy 2 in Group A(4, 5, 6th) & 1 in Group B(1, 3rd) for $100'
    And 2nd row of product items should contain '3rd Product for Checkout'
    And 3rd row of product items should contain '4th Product for Checkout'
    And 3rd row of product items should contain 'Get 15% off on Selected Products(4th) with purchase of Selected Products(4th) over NT$10'
    And 4th row of product items should contain '5th Product for Checkout'
    And 4th row of product items should contain 'Buy 2 in Group A(4, 5, 6th) & 1 in Group B(1, 3rd) for $100'
    And 5th row of product items should contain '6th Product for Checkout'
    And 5th row of product items should contain 'Buy 2 in Group A(4, 5, 6th) & 1 in Group B(1, 3rd) for $100'
    And 6th row of product items should contain '3rd Addon for Checkout'
    And I should see 3 row of applied discount
    And 1st row of applied discount should contain 'Buy 2 in Group A(4, 5, 6th) & 1 in Group B(1, 3rd) for $100'
    And 1st row of applied discount should contain '-NT$19'
    And 2nd row of applied discount should contain 'Get 15% off on Selected Products(4th) with purchase of Selected Products(4th) over NT$10'
    And 2nd row of applied discount should contain '-NT$2'
    And 3rd row of applied discount should contain 'Get 10% off on Entire Order with purchase over $128'
    And 3rd row of applied discount should contain '-NT$12'

    Then item subtotal should contain 'NT$149'
    Then delivery fee should contain 'NT$10'
    Then total should contain 'NT$126'

    And ---ROLL BACK---
    Given I am on Bundle Pricing Index Page
    And I click on tab included 'Bundle Group Pricing'
    And I click on row of select checkbox list
    When I select delete of bulk actions dropdown
    Then I should see confirmation popover
    And I click on delete checkbox
    When I click on confirm delete button
    Then promotions should contain 'No promotions yet'

    Given I am on Cart Add On Items Index Page
    When I click on 1st select checkbox of cart addon list
    Then I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then cart add on items list should contain "No promotions yet"

    Given I am on Promotion Index Page
    When I input '(dirty data)' to search field
    Then 1st row of promotion list should contain '(dirty data)'
    Then I click on select all checkbox
    When I select delete of bulk actions dropdown
    Then I should see confirmation popover
    And I click on delete checkbox
    When I click on confirm delete button
    Then row of promotions should not contain '(dirty data)Get 10% off on Entire Order with purchase over $128'