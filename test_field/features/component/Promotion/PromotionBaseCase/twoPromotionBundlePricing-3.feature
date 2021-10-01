@PromotionBaseCase @Admin @Storefront @Promotion @twoPromotionBundlePricing-3
@fixture-product @fixture-shop @fixture-payment @fixture-delivery @fixture-promotion @EAT-932 @C32207

Feature: Bundle pricing promotion price with selected product  > discounted price
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
    Then 1st product of popover list should contain '4th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then 1st row of selected product should contain '4th Product for Checkout'
    And I fill '15th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '15th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then 2nd row of selected product should contain '15th Product for Checkout'
    And I fill '5th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '5th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then 3rd row of selected product should contain '5th Product for Checkout'
    And I fill '12th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '12th Product for Checkout'
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
    Then 1st product of popover list should contain '14th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then 1st row of selected product should contain '14th Product for Checkout'
    And I fill '13th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '13th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then 2nd row of selected product should contain '13th Product for Checkou'
    And I fill '7th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '7th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then 3rd row of selected product should contain '7th Product for Checkout'
    And I fill '6th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '6th Product for Checkout'
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
    When I fill '(dirty data) Buy selected product for 8 items get 15% off' to name field
    And I click on subtotal condition checkbox
    And I select minimum items of condition type dropdown
    And I select selected product of benefit applies dropdown
    And I fill '15' to promotion value field
    And I fill '8' to promotion condition field
    When  I input '15th Product for Checkout' to search field
    And I click on search button
    Then 1st product of popover list should contain '15th Product for Checkout'
    And I should see checkbox of product list
    And I click on 1st checkbox of product list
    And I click on popup confirm button
    Then 1st row of selected product should contain '15th Product for Checkout'
    When I input '5th Product for Checkout' to search field
    And I click on search button
    Then 1st product of popover list should contain '5th Product for Checkout'
    And I should see checkbox of product list
    And I click on 1st checkbox of product list
    And I click on popup confirm button
    Then 2nd row of selected product should contain '5th Product for Checkout'
    When  I input '12th Product for Checkout' to search field
    And I click on search button
    Then 1st product of popover list should contain '12th Product for Checkout'
    And I should see checkbox of product list
    And I click on 1st checkbox of product list
    And I click on popup confirm button
    Then 3rd row of selected product should contain '12th Product for Checkout'
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then discount summary should equal to 'Get 15% off on Selected Products with purchase over 8 items'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy selected product for 8 items get 15% off'
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
    When I fill '(dirty data) Buy selected category for 8 items get 20% off' to name field
    And I click on subtotal condition checkbox
    And I select minimum items of condition type dropdown
    And I select selected category of benefit applies dropdown
    And I fill '20' to promotion value field
    And I fill '8' to promotion condition field
    And I click on 1st category checkbox
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then discount summary should equal to 'Get 20% off on Selected Categories with purchase over 8 items'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy selected category for 8 items get 20% off'
    Then 1st row of promotions should contain 'Never expires'

    Given I am on Promotion Create Page
    When I fill '(dirty data) Entire order over 9 items get 9% off' to name field
    And I click on subtotal condition checkbox
    And I select minimum items of condition type dropdown
    And I select all product of benefit applies dropdown
    And I fill '9' to promotion value field
    And I fill '9' to promotion condition field
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then discount summary should equal to 'Get 9% off on Entire Order with purchase over 9 items'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Entire order over 9 items get 9% off'
    Then 1st row of promotions should contain 'Never expires'

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
    And I fill '10' to add on items price field
    And I click on unlimited checkbox
    When I click on save button
    Then I should be redirected to Cart Add On Items Index Page
    Then I should see alert
    Then 1st row of cart addon list should contain "Add-on Item"
    Then 1st row of cart addon list should contain date

  Scenario: buy 9 items for check bundlePricing Promotion is correct application
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
    Then cart addon items price should contain 'NT$10'
    When I click on cart addon items button

    Then 1st item promotions should contain 'Buy 3 for $30'
    Then 2nd item promotions should contain 'Buy 3 for $30'
    Then 3rd item promotions should contain 'Buy 3 for $30'
    Then 4th item promotions should contain 'Buy selected category for 8 items get 20% off'
    Then 5th item promotions should contain 'Buy 3 for $90'
    Then 6th item promotions should contain 'Buy 3 for $90'
    Then 7th item promotions should contain 'Buy 3 for $90'
    Then 8th item promotions should contain 'Buy selected product for 8 items get 15% off'

    Then promotion description should contain 'Buy 3 for $30'
    Then promotion description should contain '-NT$35'
    Then promotion description should contain 'Buy 3 for $90'
    Then promotion description should contain '-NT$53'
    Then promotion description should contain 'Buy selected product for 8 items get 15% off'
    Then promotion description should contain '-NT$2'
    Then promotion description should contain 'Buy selected category for 8 items get 20% off'
    Then promotion description should contain '-NT$6'
    Then promotion description should not contain 'Entire order over 9 items get 9% off'

    And I select country dropdown option included 'Taiwan' of country list dropdown
    And I wait for 15 seconds for loading
    And I select delivery dropdown option included 'Custom Delivery' of delivery method dropdown
    And I wait for 15 seconds for loading
    And I select payment dropdown option included 'Custom' of payment method dropdown
    And I wait for 15 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then discount applied should contain 'Buy 3 for $30'
    Then discount applied should contain '-NT$35'
    Then discount applied should contain 'Buy 3 for $90'
    Then discount applied should contain '-NT$53'
    Then discount applied should contain 'Buy selected product for 8 items get 15% off'
    Then discount applied should contain '-NT$2'
    Then discount applied should contain 'Buy selected category for 8 items get 20% off'
    Then discount applied should contain '-NT$6'
    Then item subtotal should contain 'NT$258'
    Then item discount applied should contain '-NT$96'
    Then delivery fee should contain 'NT$10'
    Then total should contain 'NT$172'

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