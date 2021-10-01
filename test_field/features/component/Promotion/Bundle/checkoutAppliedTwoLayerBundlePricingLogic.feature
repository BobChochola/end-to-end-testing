@BaseCase @Admin @Storefornt @Promotion @Bundle @checkoutAppliedTwoLayerBundlePricingLogic
@fixture-payment @fixture-delivery @fixture-product @fixture-shop @fixture-freegift @fixture-bundle-logic
Feature: bundle group 2 layer checkout with promotion and check correct price showing when split order
  As a merchant
  When I want to apply two layer bundle pricing and the others promotion. So that, I can check split logic.

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

  @EAT-992 @EAT-992-3
  Scenario: Check bundle pricing stackable 2 layer logic
    Given I am on Bundle Pricing Index Page
    When I select add promotion dropdown option included 'Bundle Pricing' of add promotion dropdown
    Then I should be redirected to Bundle Pricing Create Page
    When I fill "(dirty data)(stackable)Buy 3 for $60, Buy 5 for $110" to name field
    And I fill "3" to 1st promotion value field
    And I fill "60" to 1st discounted price field
    And I click on add benefits
    And I fill '5' to 2nd promotion value field
    And I fill "110" to 2nd discounted price field
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
    And I fill '3' to product quantity field
    And I click on add to cart button

    Given I am on Shop Product Index Page
    And I input '9th Product for Checkout' to search field
    Then 1st product of products list should contain '9th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I fill '3' to product quantity field
    And I click on add to cart button

    Given I am on Shop Product Index Page
    And I input '12th Product for Checkout' to search field
    Then 1st product of products list should contain '12th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I fill '3' to product quantity field
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
    Then I should see 7 row of product items
    And 4th row of product items should contain 'Add-on Item'
    And 7th row of product items should contain 'Free Gift'
    And discount applied should contain '(stackable)Buy 3 for $60, Buy 5 for $110 - Selected Products: Buy 5 items for NT$110'
    And discount applied should contain '-NT$305'
    And discount applied should contain '(stackable)Buy 3 for $60, Buy 5 for $110 - Selected Products: Buy 3 items for NT$60'
    And discount applied should contain '-NT$19'
    And discount applied should contain 'Selected category 90% off'
    And discount applied should contain '-NT$9'
    And discount applied should contain '14th Free Gift Promotion'
    And discount applied should contain 'order 70% off'
    And discount applied should contain '-NT$120'
    And discount applied should contain '3rd Free Shipping'
    And item subtotal should contain 'NT$514'
    And item discount applied should contain '-NT$453'
    And total should contain 'NT$61'
    Then I mark the value of order confirm info as variable order info

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I click on split button
    Then I should be redirected to Order Split Page
    When I fill '1' to 1st row of split quantity field
    Then field title included 'Subtotal' and same order of original order should also contain 'NT$514 → NT$455'
    Then field title included 'Subtotal' and same order of new order should also contain 'NT$59'
    Then discount change block should contain '-NT$19 → -NT$5'
    Then discount change block should contain '-NT$14'
    Then field title included 'order 70% off' and same order of original order should also contain '-NT$120 → -NT$88'
    Then field title included 'order 70% off' and same order of new order should also contain '-NT$32'
    Then field title included 'Total' and same order of original order should also contain 'NT$61 → NT$48'
    Then field title included 'Total' and same order of new order should also contain 'NT$13'

    Then I fill '0' to 1st row of split quantity field
    Then I fill '3' to 2nd row of split quantity field
    Then field title included 'Subtotal' and same order of original order should also contain 'NT$514 → NT$217'
    Then field title included 'Subtotal' and same order of new order should also contain 'NT$297'
    Then discount change block should contain '-NT$305 → -NT$87'
    Then discount change block should contain '-NT$218'
    Then field title included 'order 70% off' and same order of original order should also contain '-NT$120 → -NT$65'
    Then field title included 'order 70% off' and same order of new order should also contain '-NT$55'
    Then field title included 'Total' and same order of original order should also contain 'NT$61 → NT$37'
    Then field title included 'Total' and same order of new order should also contain 'NT$24'

    Then I fill '0' to 2nd row of split quantity field
    Then I fill '1' to 3rd row of split quantity field
    Then field title included 'Subtotal' and same order of original order should also contain 'NT$514 → NT$504'
    Then field title included 'Subtotal' and same order of new order should also contain 'NT$10'
    Then field title included 'Selected category 90% off' and same order of original order should also contain '-NT$9 → -NT$0'
    Then field title included 'Selected category 90% off' and same order of new order should also contain '-NT$9'
    Then field title included 'order 70% off' and same order of original order should also contain '-NT$120 → -NT$119'
    Then field title included 'order 70% off' and same order of new order should also contain '-NT$1'
    Then field title included 'Total' and same order of original order should also contain 'NT$61'
    Then field title included 'Total' and same order of new order should also contain 'NT$0'

    Then I fill '0' to 3rd row of split quantity field
    Then I fill '1' to 4th row of split quantity field
    Then field title included 'Subtotal' and same order of original order should also contain 'NT$514 → NT$504'
    Then field title included 'Subtotal' and same order of new order should also contain 'NT$10'
    Then discount change block should contain '-NT$305'
    Then discount change block should contain '-'
    Then discount change block should contain '-NT$19'
    Then discount change block should contain '-'
    Then field title included 'Selected category 90% off' and same order of original order should also contain '-NT$9'
    Then field title included 'Selected category 90% off' and same order of new order should also contain '-'
    Then field title included 'order 70% off' and same order of original order should also contain '-NT$120'
    Then field title included 'order 70% off' and same order of new order should also contain '-'
    Then field title included 'Total' and same order of original order should also contain 'NT$61 → NT$51'
    Then field title included 'Total' and same order of new order should also contain 'NT$10'

    Then I fill '0' to 4th row of split quantity field
    Then I fill '2' to 5th row of split quantity field
    Then field title included 'Subtotal' and same order of original order should also contain 'NT$514 → NT$396'
    Then field title included 'Subtotal' and same order of new order should also contain 'NT$118'
    Then discount change block should contain '-NT$305 → -NT$218'
    Then discount change block should contain '-NT$87'
    Then field title included 'order 70% off' and same order of original order should also contain '-NT$120 → -NT$98'
    Then field title included 'order 70% off' and same order of new order should also contain '-NT$22'
    Then field title included 'Total' and same order of original order should also contain 'NT$61 → NT$52'
    Then field title included 'Total' and same order of new order should also contain 'NT$9'

    Then I fill '0' to 5th row of split quantity field
    Then I fill '2' to 6th row of split quantity field
    Then field title included 'Subtotal' and same order of original order should also contain 'NT$514 → NT$494'
    Then field title included 'Subtotal' and same order of new order should also contain 'NT$20'
    Then discount change block should contain '-NT$19 → -NT$14'
    Then discount change block should contain '-NT$5'
    Then field title included 'order 70% off' and same order of original order should also contain '-NT$120 → -NT$110'
    Then field title included 'order 70% off' and same order of new order should also contain '-NT$10'
    Then field title included 'Total' and same order of original order should also contain 'NT$61 → NT$56'
    Then field title included 'Total' and same order of new order should also contain 'NT$5'

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

  @EAT-992 @EAT-992-4
  Scenario: Check bundle pricing unstackable 2 layer logic
    Given I am on Bundle Pricing Index Page
    When I select add promotion dropdown option included 'Bundle Pricing' of add promotion dropdown
    Then I should be redirected to Bundle Pricing Create Page
    When I fill "(dirty data) (unstackable)Buy 3 for $60, Buy 5 for $110" to name field
    And I click on stackable off checkbox
    And I fill "3" to 1st promotion value field
    And I fill "60" to 1st discounted price field
    And I click on add benefits
    And I fill '5' to 2nd promotion value field
    And I fill "110" to 2nd discounted price field
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
    And I fill '3' to product quantity field
    And I click on add to cart button

    Given I am on Shop Product Index Page
    And I input '9th Product for Checkout' to search field
    Then 1st product of products list should contain '9th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I fill '3' to product quantity field
    And I click on add to cart button

    Given I am on Shop Product Index Page
    And I input '12th Product for Checkout' to search field
    Then 1st product of products list should contain '12th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I fill '3' to product quantity field
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
    And discount applied should contain '(dirty data) (unstackable)Buy 3 for $60, Buy 5 for $110 - Selected Products: Buy 5 items for NT$110'
    And discount applied should contain '-NT$305'
    And discount applied should contain '3 Selected products discount 118'
    And discount applied should contain '-NT$89'
    And discount applied should contain '14th Free Gift Promotion'
    And discount applied should contain 'order 70% off'
    And discount applied should contain '-NT$77'
    And discount applied should contain '3rd Free Shipping'
    And item subtotal should contain 'NT$514'
    And item discount applied should contain '-NT$471'
    And total should contain 'NT$43'
    Then I mark the value of order confirm info as variable order info

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I click on split button
    Then I should be redirected to Order Split Page

    When I fill '1' to 1st row of split quantity field
    Then field title included 'Subtotal' and same order of original order should also contain 'NT$514 → NT$455'
    Then field title included 'Subtotal' and same order of new order should also contain 'NT$59'
    Then field title included '3 Selected products discount 118' and same order of original order should also contain '-NT$89 → -NT$30'
    Then field title included '3 Selected products discount 118' and same order of new order should also contain '-NT$59'
    Then field title included 'order 70% off' and same order of original order should also contain '-NT$77'
    Then field title included 'order 70% off' and same order of new order should also contain '-'
    Then field title included 'Total' and same order of original order should also contain 'NT$43'
    Then field title included 'Total' and same order of new order should also contain 'NT$0'

    Then I fill '0' to 1st row of split quantity field
    Then I fill '2' to 2nd row of split quantity field
    Then field title included 'Subtotal' and same order of original order should also contain 'NT$514 → NT$316'
    Then field title included 'Subtotal' and same order of new order should also contain 'NT$198'
    Then discount change block should contain '-NT$305 → -NT$160'
    Then discount change block should contain '-NT$145'
    Then field title included 'order 70% off' and same order of original order should also contain '-NT$77 → -NT$40'
    Then field title included 'order 70% off' and same order of new order should also contain '-NT$37'
    Then field title included 'Total' and same order of original order should also contain 'NT$43 → NT$27'
    Then field title included 'Total' and same order of new order should also contain 'NT$16'

    Then I fill '0' to 2nd row of split quantity field
    Then I fill '3' to 3rd row of split quantity field
    Then field title included 'Subtotal' and same order of original order should also contain 'NT$514 → NT$484'
    Then field title included 'Subtotal' and same order of new order should also contain 'NT$30'
    Then field title included '3 Selected products discount 118' and same order of original order should also contain '-NT$89 → -NT$59'
    Then field title included '3 Selected products discount 118' and same order of new order should also contain '-NT$30'
    Then field title included 'Total' and same order of original order should also contain 'NT$43'
    Then field title included 'Total' and same order of new order should also contain 'NT$0'

    Then I fill '0' to 3rd row of split quantity field
    Then I fill '1' to 4th row of split quantity field
    Then field title included 'Subtotal' and same order of original order should also contain 'NT$514 → NT$504'
    Then field title included 'Subtotal' and same order of new order should also contain 'NT$10'
    Then discount change block should contain '-NT$305'
    Then discount change block should contain '-'
    Then field title included '3 Selected products discount 118' and same order of original order should also contain '-NT$89'
    Then field title included '3 Selected products discount 118' and same order of new order should also contain '-'
    Then field title included 'order 70% off' and same order of original order should also contain '-NT$77'
    Then field title included 'order 70% off' and same order of new order should also contain '-'
    Then field title included 'Total' and same order of original order should also contain 'NT$43 → NT$33'
    Then field title included 'Total' and same order of new order should also contain 'NT$10'

    Then I fill '0' to 4th row of split quantity field
    Then I fill '1' to 5th row of split quantity field
    Then field title included 'Subtotal' and same order of original order should also contain 'NT$514 → NT$455'
    Then field title included 'Subtotal' and same order of new order should also contain 'NT$59'
    Then discount change block should contain '-NT$305 → -NT$261'
    Then discount change block should contain '-NT$44'
    Then field title included 'order 70% off' and same order of original order should also contain '-NT$77 → -NT$66'
    Then field title included 'order 70% off' and same order of new order should also contain '-NT$11'
    Then field title included 'Total' and same order of original order should also contain 'NT$43 → NT$39'
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