@BaseCase @Admin @Storefornt @Promotion @Bundle @checkoutAppliedBundleGroupPricingLogic-Stackable
@fixture-payment @fixture-delivery @fixture-product @fixture-shop @fixture-freegift @fixture-bundle-logic
Feature: bundle group/pricing no layer checkout with promotion and check correct price showing when split order
  As a merchant
  When I want to apply bundle and the others promotion. So that, I can check split logic.

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
    Then I should see 2 row of select checkbox list
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
    Then 2nd row of categories list should contain "Category for bundle"
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
    Then 1st row of cart addon list should contain "Add-on Item"

  @EAT-992 @EAT-992-5
  Scenario: Check bundle pricing stackable logic
    Given I am on Bundle Pricing Index Page
    When I select add promotion dropdown option included 'Bundle Group' of add promotion dropdown
    Then I should be redirected to Bundle Group Create Page
    And I fill '(dirty data)(stackable)Buy 2 in Group A & 1 in Group B for $49' to name field
    When I fill '2' to group a field
    When I fill '1' to group b field
    When I fill '49' to price field
    Then discount summary should contain 'Purchase 2 items of Selected Products in Group A and 1 items of Selected Products in Group B for NT$49'
    And I should see group a tab
    Then select product button should contain 'Select Products in Group A'
    When I click on select product button
    Then I should see select product popup
    Then I input '6th Product for Checkout' to search field
    Then 1st product list should contain '6th Product for Checkout'
    Then I click on 1st checkbox of product list
    Then I input '9th Product for Checkout' to search field
    Then 1st product list should contain '9th Product for Checkout'
    Then I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should not see select product popup
    When I click on group b tab
    Then select product button should contain 'Select Products in Group B'
    When I click on select product button
    Then I should see select product popup
    When I input '12th Product for Checkout' to search field
    Then 1st product list should contain '12th Product for Checkout'
    Then I click on 1st checkbox of product list
    When I click on popup confirm button
    When I click on 1st countinue to button
    When I click on 2nd countinue to button
    When I click on 3rd countinue to button
    Then I scroll down to preview button
    When I click on preview button
    Then promotion name should contain '(dirty data)(stackable)Buy 2 in Group A & 1 in Group B for $49'
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    When I click on preview group a tab
    Then preview selected products should contain '6th Product for Checkout'
    Then preview selected products should contain '9th Product for Checkout'
    When I click on preview group b tab
    Then preview selected products should contain '12th Product for Checkout'
    When I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain '(dirty data)(stackable)Buy 2 in Group A & 1 in Group B for $49'

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
    Then I should see cart panel
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
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill address to delivery address field
    Then I scroll down to place order button
    And I click on save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then I should see 5 row of product items
    And 4th row of product items should contain 'Add-on Item'
    And 5th row of product items should contain 'Free Gift'
    And discount applied should contain '(stackable)Buy 2 in Group A & 1 in Group B for $49'
    And discount applied should contain '-NT$357'
    And discount applied should contain '14th Free Gift Promotion'
    And discount applied should contain 'order 70% off'
    And discount applied should contain '-NT$103'
    And discount applied should contain '3rd Free Shipping'
    And item subtotal should contain 'NT$514'
    And item discount applied should contain '-NT$460'
    And total should contain 'NT$54'
    Then I mark the value of order confirm info as variable order info

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I click on split button
    Then I should be redirected to Order Split Page
    When I fill '3' to 1st row of split quantity field
    Then field title included 'Subtotal' and same order of original order should also contain 'NT$514 → NT$337'
    Then field title included 'Subtotal' and same order of new order should also contain 'NT$177'
    Then field title included '(stackable)Buy 2 in Group A & 1 in Group B for $49' and same order of original order should also contain '-NT$357 → -NT$232'
    Then field title included '(stackable)Buy 2 in Group A & 1 in Group B for $49' and same order of new order should also contain '-NT$125'
    Then field title included 'order 70% off' and same order of original order should also contain '-NT$103 → -NT$67'
    Then field title included 'order 70% off' and same order of new order should also contain '-NT$36'
    Then field title included 'Total' and same order of original order should also contain 'NT$54 → NT$38'
    Then field title included 'Total' and same order of new order should also contain 'NT$16'

    Then I fill '0' to 1st row of split quantity field
    Then I fill '3' to 2nd row of split quantity field
    Then field title included 'Subtotal' and same order of original order should also contain 'NT$514 → NT$217'
    Then field title included 'Subtotal' and same order of new order should also contain 'NT$297'
    Then field title included '(stackable)Buy 2 in Group A & 1 in Group B for $49' and same order of original order should also contain '-NT$357 → -NT$146'
    Then field title included '(stackable)Buy 2 in Group A & 1 in Group B for $49' and same order of new order should also contain '-NT$211'
    Then field title included 'order 70% off' and same order of original order should also contain '-NT$103 → -NT$42'
    Then field title included 'order 70% off' and same order of new order should also contain '-NT$61'
    Then field title included 'Total' and same order of original order should also contain 'NT$54 → NT$29'
    Then field title included 'Total' and same order of new order should also contain 'NT$25'

    Then I fill '0' to 2nd row of split quantity field
    Then I fill '3' to 3rd row of split quantity field
    Then field title included 'Subtotal' and same order of original order should also contain 'NT$514 → NT$484'
    Then field title included 'Subtotal' and same order of new order should also contain 'NT$30'
    Then field title included '(stackable)Buy 2 in Group A & 1 in Group B for $49' and same order of original order should also contain '-NT$357 → -NT$336'
    Then field title included '(stackable)Buy 2 in Group A & 1 in Group B for $49' and same order of new order should also contain '-NT$21'
    Then field title included 'order 70% off' and same order of original order should also contain '-NT$103 → -NT$97'
    Then field title included 'order 70% off' and same order of new order should also contain '-NT$6'
    Then field title included 'Total' and same order of original order should also contain 'NT$54 → NT$51'
    Then field title included 'Total' and same order of new order should also contain 'NT$3'
    Then field title included '(stackable)Buy 2 in Group A & 1 in Group B for $49' and same order of original order should also contain '-NT$357'

    Then I fill '0' to 3rd row of split quantity field
    Then I fill '1' to 4th row of split quantity field
    Then field title included 'Subtotal' and same order of original order should also contain 'NT$514 → NT$504'
    Then field title included 'Subtotal' and same order of new order should also contain 'NT$10'
    Then field title included '(stackable)Buy 2 in Group A & 1 in Group B for $49' and same order of original order should also contain '-NT$357'
    Then field title included '(stackable)Buy 2 in Group A & 1 in Group B for $49' and same order of new order should also contain '-'
    Then field title included 'order 70% off' and same order of original order should also contain '-NT$103'
    Then field title included 'order 70% off' and same order of new order should also contain '-'
    Then field title included 'Total' and same order of original order should also contain 'NT$54 → NT$44'
    Then field title included 'Total' and same order of new order should also contain 'NT$10'

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
    And I click on tab included 'Bundle Group Pricing'
    Then I click on 1st row of select checkbox list
    When I select delete of bulk actions dropdown
    Then I should see confirmation popover
    Then I click on delete checkbox
    When I click on confirm delete button
    Then promotions should contain 'No promotions yet'