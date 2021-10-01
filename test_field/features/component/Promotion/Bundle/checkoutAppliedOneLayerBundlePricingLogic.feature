@BaseCase @Admin @Storefornt @Promotion @Bundle @checkoutAppliedOneLayerBundlePricingLogic
@fixture-payment @fixture-delivery @fixture-product @fixture-shop @fixture-freegift @fixture-bundle-logic
Feature: bundle group 1 layer checkout with promotion and check correct price showing when split order
  As a merchant
  When I want to apply one layer bundle pricing and the others promotion. So that, I can check split logic.

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
    When I check and click no thanks

    Given I am on Promotion Index Page
    When I input '(do not delete)' to search field
    Then I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I click on 2nd row of select checkbox list
    And I select publish of bulk actions dropdown
    When I input '14th Free Gift Promotion' to search field
    Then 1st row of promotion list should contain '14th Free Gift Promotion'
    Then I should see row of select checkbox list
    And I click on row of select checkbox list
    And I select publish of bulk actions dropdown
    When I input '11th Promotion' to search field
    Then 1st row of promotion list should contain '11th Promotion'
    Then I should see row of select checkbox list
    And I click on row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

    Given I am on Free Shipping Index Page
    When I input '(do not delete) selected product free ship' to search field
    Then 1st row of free shipping list should contain 'selected product free ship'
    Then I should see row of select checkbox list
    And I click on row of select checkbox list
    And I select publish of bulk actions dropdown
    When I input '3rd Free Shipping' to search field
    Then 1st row of free shipping list should contain '3rd Free Shipping'
    Then I should see row of select checkbox list
    And I click on row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

    Given I am on Category Create Page
    And I fill "(dirty data)Category for bundle" to category name field
    And I click on add button
    Then I should be redirected to Category List Page
    Then 2nd row of categories list should contain "(dirty data)Category for bundle"
    Then I should see 2 view products button of categories list
    When I click view products button of categories list for the same order of row of categories list included "(dirty data)Category for bundle"
    Then I should be redirected to Category View Products Page
    When I click on add product to category button
    Then I should see popover search field
    When I input '6th Product for Checkout' to popover search field
    Then 1st list of popup product list should contain '6th Product for Checkout'
    And I click on 1st checkbox of product list
    When I input '9th Product for Checkout' to popover search field
    Then 1st list of popup product list should contain '9th Product for Checkout'
    And I click on 1st checkbox of product list
    When I input '12th Product for Checkout' to popover search field
    Then 1st list of popup product list should contain '12th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on confirm button
    Then I should see 3 row of selected product list

    Given I am on Promotion Create Page
    When I fill "(dirty data)Selected category 90% off" to name field
    And I click on selected categories condition checkbox
    And I select minimum amount of condition type dropdown
    And I select discount percent of benefit type dropdown
    And I fill "90" to promotion value field
    And I fill "10" to promotion condition field
    Then I should see category checkbox
    And I click on 2nd category checkbox
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then discount summary should contain "Get 90% off on Selected Categories with purchase of products in Selected Categories over NT$10"
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page

    Given I am on Cart Add On Items Create Page
    And I fill "(dirty data)Add-on Item" to english name field
    When I click on select add on items button
    Then I should see search add on items field
    And I input "2nd Addon for Checkout" to search add on items field
    When I click on search button
    Then add on items name should contain "2nd Addon for Checkout"
    And I click on 1st add on items checkbox
    When I click on add on items save button
    Then I should see add on items price field
    And I fill '10' to add on items price field
    And I click on unlimited checkbox
    When I click on save button
    Then I should be redirected to Cart Add On Items Index Page
    Then I should see alert
    Then 1st row of cart addon list should contain "(dirty data)Add-on Item"

  @EAT-992 @EAT-992-1
  Scenario: Check bundle pricing stackable 1 layer logic
    Given I am on Bundle Pricing Index Page
    When I select add promotion dropdown option included 'Bundle Pricing' of add promotion dropdown
    Then I should be redirected to Bundle Pricing Create Page
    When I fill "(dirty data)(stackable)Buy 3 for $60" to name field
    And I fill "3" to 1st promotion value field
    And I fill "60" to 1st discounted price field
    And I fill '6th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '6th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    And I fill '9th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '9th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    And I fill '12th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '12th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see 3 row of selected product
    When I click on 1st countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    When I click on preview button
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    Then target group should equal to 'All Customers'
    When I click on confirm button
    Then I should be redirected to Bundle Pricing Index Page

    Given I am on Shop Product Index Page
    And I input '6th Product for Checkout' to search field
    Then 1st product of products list should contain '6th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I fill '2' to product quantity field
    And I click on add to cart button

    Given I am on Shop Product Index Page
    And I input '9th Product for Checkout' to search field
    Then 1st product of products list should contain '9th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I fill '2' to product quantity field
    And I click on add to cart button

    Given I am on Shop Product Index Page
    And I input '12th Product for Checkout' to search field
    Then 1st product of products list should contain '12th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I fill '2' to product quantity field
    And I click on add to cart button
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I click on login button
    Then I should be redirected to Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included 'Taiwan' of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included 'LocalDelivery' of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included 'Bank Transfer' of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on cart addon items button
    And I wait for 5 seconds for loading
    When I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill address to delivery address field
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then I should see 5 row of product items
    And 4th row of product items should contain 'Add-on Item'
    And 5th row of product items should contain 'Free Gift'
    And discount applied should contain 'Buy 3 for $60'
    And discount applied should contain '-NT$216'
    And discount applied should contain '14th Free Gift Promotion'
    And discount applied should contain 'order 70% off'
    And discount applied should contain '-NT$84'
    And discount applied should contain '3rd Free Shipping'
    And item subtotal should contain 'NT$346'
    And item discount applied should contain '-NT$300'
    And total should contain 'NT$46'
    Then I mark the value of order confirm info as variable order info

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I click on split button
    Then I should be redirected to Order Split Page
    When I fill '2' to 1st row of split quantity field
    Then field title included 'Subtotal' and same order of original order should also contain 'NT$346 → NT$228'
    Then field title included 'Subtotal' and same order of new order should also contain 'NT$118'
    Then field title included '(stackable)Buy 3 for $60' and same order of original order should also contain '-NT$216 → -NT$140'
    Then field title included '(stackable)Buy 3 for $60' and same order of new order should also contain '-NT$76'
    Then field title included 'order 70% off' and same order of original order should also contain '-NT$84 → -NT$55'
    Then field title included 'order 70% off' and same order of new order should also contain '-NT$29'
    Then field title included 'Total' and same order of original order should also contain 'NT$46 → NT$33'
    Then field title included 'Total' and same order of new order should also contain 'NT$13'

    Then I fill '0' to 1st row of split quantity field
    Then I fill '2' to 2nd row of split quantity field
    Then field title included 'Subtotal' and same order of original order should also contain 'NT$346 → NT$148'
    Then field title included 'Subtotal' and same order of new order should also contain 'NT$198'
    Then field title included '(stackable)Buy 3 for $60' and same order of original order should also contain '-NT$216 → -NT$89'
    Then field title included '(stackable)Buy 3 for $60' and same order of new order should also contain '-NT$127'
    Then field title included 'order 70% off' and same order of original order should also contain '-NT$84 → -NT$34'
    Then field title included 'order 70% off' and same order of new order should also contain '-NT$50'
    Then field title included 'Total' and same order of original order should also contain 'NT$46 → NT$25'
    Then field title included 'Total' and same order of new order should also contain 'NT$21'

    Then I fill '0' to 2nd row of split quantity field
    Then I fill '2' to 3rd row of split quantity field
    Then field title included 'Subtotal' and same order of original order should also contain 'NT$346 → NT$326'
    Then field title included 'Subtotal' and same order of new order should also contain 'NT$20'
    Then field title included '(stackable)Buy 3 for $60' and same order of original order should also contain '-NT$216 → -NT$203'
    Then field title included '(stackable)Buy 3 for $60' and same order of new order should also contain '-NT$13'
    Then field title included 'order 70% off' and same order of original order should also contain '-NT$84 → -NT$79'
    Then field title included 'order 70% off' and same order of new order should also contain '-NT$5'
    Then field title included 'Total' and same order of original order should also contain 'NT$46 → NT$44'
    Then field title included 'Total' and same order of new order should also contain 'NT$2'

    Then I fill '0' to 3rd row of split quantity field
    Then I fill '1' to 4th row of split quantity field
    Then field title included 'Subtotal' and same order of original order should also contain 'NT$346 → NT$336'
    Then field title included 'Subtotal' and same order of new order should also contain 'NT$10'
    Then field title included '(stackable)Buy 3 for $60' and same order of original order should also contain '-NT$216'
    Then field title included '(stackable)Buy 3 for $60' and same order of new order should also contain '-'
    Then field title included 'order 70% off' and same order of original order should also contain '-NT$84'
    Then field title included 'order 70% off' and same order of new order should also contain '-'
    Then field title included 'Total' and same order of original order should also contain 'NT$46 → NT$36'
    Then field title included 'Total' and same order of new order should also contain 'NT$10'

    Then I fill '0' to 4th row of split quantity field
    Then I fill '1' to 5th row of split quantity field
    Then field title included 'Subtotal' and same order of original order should also contain 'NT$346'
    Then field title included 'Subtotal' and same order of new order should also contain 'NT$0'
    Then field title included '(stackable)Buy 3 for $60' and same order of original order should also contain '-NT$216'
    Then field title included '(stackable)Buy 3 for $60' and same order of new order should also contain '-'
    Then field title included 'order 70% off' and same order of original order should also contain '-NT$84'
    Then field title included 'order 70% off' and same order of new order should also contain '-'
    Then field title included 'Total' and same order of original order should also contain 'NT$46'
    Then field title included 'Total' and same order of new order should also contain 'NT$0'

    And ---ROLL BACK---
    Given I am on Promotion Index Page
    Then 1st row of promotion list should contain '(dirty data)Selected category 90% off'
    And I click on 1st row of select checkbox list
    When I select delete of bulk actions dropdown
    Then I should see confirmation popover
    And I click on delete checkbox
    When I click on confirm delete button
    Then row of promotion list should not contain '(dirty data)Selected category 90% off'
    When I input '(do not delete)' to search field
    Then I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I click on 2nd row of select checkbox list
    And I select unpublish of bulk actions dropdown
    When I input '14th Free Gift Promotion' to search field
    Then 1st row of promotion list should contain '14th Free Gift Promotion'
    Then I should see row of select checkbox list
    And I click on row of select checkbox list
    And I select unpublish of bulk actions dropdown
    When I input '11th Promotion' to search field
    Then 1st row of promotion list should contain '11th Promotion'
    Then I should see row of select checkbox list
    And I click on row of select checkbox list
    And I select unpublish of bulk actions dropdown

    Given I am on Free Shipping Index Page
    When I input '(do not delete) selected product free ship' to search field
    Then 1st row of free shipping list should contain 'selected product free ship'
    Then I should see row of select checkbox list
    And I click on row of select checkbox list
    And I select unpublish of bulk actions dropdown
    When I input '3rd Free Shipping' to search field
    Then 1st row of free shipping list should contain '3rd Free Shipping'
    Then I should see row of select checkbox list
    And I click on row of select checkbox list
    And I select unpublish of bulk actions dropdown

    Given I am on Category List Page
    When I click delete button of categories list for the same order of row of categories list included "(dirty data)Category for bundle"
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then row of categories list should not contain '(dirty data)Category for bundle'

    Given I am on Cart Add On Items Index Page
    Then 1st row of cart addon list should contain '(dirty data)Add-on Item'
    And I click on 1st select checkbox of cart addon list
    When I select delete of bulk actions dropdown
    Then I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then cart add on items list should contain 'No promotions yet'

    Given I am on Bundle Pricing Index Page
    And I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    Then I should see confirmation popover
    And I click on delete checkbox
    When I click on confirm delete button
    Then promotions should contain 'No promotions yet'

  @EAT-992 @EAT-992-2
  Scenario: Check bundle pricing unstackable 1 layer logic
    Given I am on Bundle Pricing Index Page
    When I select add promotion dropdown option included 'Bundle Pricing' of add promotion dropdown
    Then I should be redirected to Bundle Pricing Create Page
    When I fill "(dirty data)(unstackable)Buy 3 for $60" to name field
    And I click on stackable off checkbox
    And I fill "3" to 1st promotion value field
    And I fill "60" to 1st discounted price field
    And I fill '6th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '6th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    And I fill '9th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '9th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    And I fill '12th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '12th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see 3 row of selected product
    When I click on 1st countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    When I click on preview button
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    Then target group should equal to 'All Customers'
    When I click on confirm button
    Then I should be redirected to Bundle Pricing Index Page

    Given I am on Shop Product Index Page
    And I input '6th Product for Checkout' to search field
    Then 1st product of products list should contain '6th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I fill '2' to product quantity field
    And I click on add to cart button

    Given I am on Shop Product Index Page
    And I input '9th Product for Checkout' to search field
    Then 1st product of products list should contain '9th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I fill '2' to product quantity field
    And I click on add to cart button

    Given I am on Shop Product Index Page
    And I input '12th Product for Checkout' to search field
    Then 1st product of products list should contain '12th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I fill '2' to product quantity field
    And I click on add to cart button
    Then I should see checkout button
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I click on login button
    Then I should be redirected to Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included 'Taiwan' of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included 'LocalDelivery' of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included 'Bank Transfer' of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on cart addon items button
    And I wait for 5 seconds for loading
    When I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill address to delivery address field
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then I should see 6 row of product items
    And 4th row of product items should contain 'Add-on Item'
    And 6th row of product items should contain 'Free Gift'
    And discount applied should contain 'Buy 3 for $60'
    And discount applied should contain '-NT$197'
    And discount applied should contain '3 Selected products discount 118'
    And discount applied should contain '-NT$79'
    And discount applied should contain '14th Free Gift Promotion'
    And discount applied should contain 'order 70% off'
    And discount applied should contain '-NT$42'
    And discount applied should contain '3rd Free Shipping'
    And item subtotal should contain 'NT$346'
    And item discount applied should contain '-NT$318'
    And total should contain 'NT$28'
    Then I mark the value of order confirm info as variable order info

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I click on split button
    Then I should be redirected to Order Split Page

    When I fill '1' to 1st row of split quantity field
    Then field title included 'Subtotal' and same order of original order should also contain 'NT$346 → NT$287'
    Then field title included 'Subtotal' and same order of new order should also contain 'NT$59'
    Then field title included '(unstackable)Buy 3 for $60' and same order of original order should also contain '-NT$197'
    Then field title included '(unstackable)Buy 3 for $60' and same order of new order should also contain '-'
    Then field title included '3 Selected products discount 118' and same order of original order should also contain '-NT$79 → -NT$20'
    Then field title included '3 Selected products discount 118' and same order of new order should also contain '-NT$59'
    Then field title included 'order 70% off' and same order of original order should also contain '-NT$42'
    Then field title included 'order 70% off' and same order of new order should also contain '-'
    Then field title included 'Total' and same order of original order should also contain 'NT$28'
    Then field title included 'Total' and same order of new order should also contain 'NT$0'

    Then I fill '0' to 1st row of split quantity field
    Then I fill '2' to 2nd row of split quantity field
    Then field title included 'Subtotal' and same order of original order should also contain 'NT$346 → NT$148'
    Then field title included 'Subtotal' and same order of new order should also contain 'NT$198'
    Then field title included '(unstackable)Buy 3 for $60' and same order of original order should also contain '-NT$197 → -NT$45'
    Then field title included '(unstackable)Buy 3 for $60' and same order of new order should also contain '-NT$152'
    Then field title included 'order 70% off' and same order of original order should also contain '-NT$42 → -NT$10'
    Then field title included 'order 70% off' and same order of new order should also contain '-NT$32'
    Then field title included 'Total' and same order of original order should also contain 'NT$28 → NT$14'
    Then field title included 'Total' and same order of new order should also contain 'NT$14'

    Then I fill '0' to 2nd row of split quantity field
    Then I fill '2' to 3rd row of split quantity field
    Then field title included 'Subtotal' and same order of original order should also contain 'NT$346 → NT$326'
    Then field title included 'Subtotal' and same order of new order should also contain 'NT$20'
    Then field title included 'Buy 3 for $60' and same order of original order should also contain '-NT$197'
    Then field title included '3 Selected products discount 118' and same order of original order should also contain '-NT$79 → -NT$59'
    Then field title included '3 Selected products discount 118' and same order of new order should also contain '-NT$20'
    Then field title included 'order 70% off' and same order of original order should also contain '-NT$42'
    Then field title included 'order 70% off' and same order of new order should also contain '-'
    Then field title included 'Total' and same order of original order should also contain 'NT$28'
    Then field title included 'Total' and same order of new order should also contain 'NT$0'

    Then I fill '0' to 3rd row of split quantity field
    Then I fill '1' to 4th row of split quantity field
    Then field title included 'Subtotal' and same order of original order should also contain 'NT$346 → NT$336'
    Then field title included 'Subtotal' and same order of new order should also contain 'NT$10'
    Then field title included '(unstackable)Buy 3 for $60' and same order of original order should also contain '-NT$197'
    Then field title included '(unstackable)Buy 3 for $60' and same order of new order should also contain '-'
    Then field title included '3 Selected products discount 118' and same order of original order should also contain '-NT$79'
    Then field title included 'order 70% off' and same order of original order should also contain '-NT$42'
    Then field title included 'order 70% off' and same order of new order should also contain '-'
    Then field title included 'Total' and same order of original order should also contain 'NT$28 → NT$18'
    Then field title included 'Total' and same order of new order should also contain 'NT$10'

    Then I fill '0' to 4th row of split quantity field
    Then I fill '1' to 5th row of split quantity field
    Then field title included 'Subtotal' and same order of original order should also contain 'NT$346 → NT$287'
    Then field title included 'Subtotal' and same order of new order should also contain 'NT$59'
    Then field title included '(unstackable)Buy 3 for $60' and same order of original order should also contain '-NT$197 → -NT$152'
    Then field title included '(unstackable)Buy 3 for $60' and same order of new order should also contain '-NT$45'
    Then field title included '3 Selected products discount 118' and same order of original order should also contain '-NT$79'
    Then field title included 'order 70% off' and same order of original order should also contain '-NT$42 → -NT$32'
    Then field title included 'order 70% off' and same order of new order should also contain '-NT$10'
    Then field title included 'Total' and same order of original order should also contain 'NT$28 → NT$24'
    Then field title included 'Total' and same order of new order should also contain 'NT$4'

    And ---ROLL BACK---
    Given I am on Promotion Index Page
    Then 1st row of promotion list should contain '(dirty data)Selected category 90% off'
    And I click on 1st row of select checkbox list
    When I select delete of bulk actions dropdown
    Then I should see confirmation popover
    And I click on delete checkbox
    When I click on confirm delete button
    Then row of promotion list should not contain '(dirty data)Selected category 90% off'
    When I input '(do not delete)' to search field
    Then I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I click on 2nd row of select checkbox list
    And I select unpublish of bulk actions dropdown
    When I input '14th Free Gift Promotion' to search field
    Then 1st row of promotion list should contain '14th Free Gift Promotion'
    Then I should see row of select checkbox list
    And I click on row of select checkbox list
    And I select unpublish of bulk actions dropdown
    When I input '11th Promotion' to search field
    Then 1st row of promotion list should contain '11th Promotion'
    Then I should see row of select checkbox list
    And I click on row of select checkbox list
    And I select unpublish of bulk actions dropdown

    Given I am on Free Shipping Index Page
    When I input '(do not delete) selected product free ship' to search field
    Then 1st row of free shipping list should contain 'selected product free ship'
    Then I should see row of select checkbox list
    And I click on row of select checkbox list
    And I select unpublish of bulk actions dropdown
    When I input '3rd Free Shipping' to search field
    Then 1st row of free shipping list should contain '3rd Free Shipping'
    Then I should see row of select checkbox list
    And I click on row of select checkbox list
    And I select unpublish of bulk actions dropdown

    Given I am on Category List Page
    When I click delete button of categories list for the same order of row of categories list included "(dirty data)Category for bundle"
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then row of categories list should not contain '(dirty data)Category for bundle'

    Given I am on Cart Add On Items Index Page
    Then 1st row of cart addon list should contain '(dirty data)Add-on Item'
    And I click on 1st select checkbox of cart addon list
    When I select delete of bulk actions dropdown
    Then I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then cart add on items list should contain 'No promotions yet'

    Given I am on Bundle Pricing Index Page
    And I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    Then I should see confirmation popover
    And I click on delete checkbox
    When I click on confirm delete button
    Then promotions should contain 'No promotions yet'