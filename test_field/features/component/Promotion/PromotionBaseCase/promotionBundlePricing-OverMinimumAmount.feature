@PromotionBaseCase @Admin @Storefront @Promotion @promotionBundlePricing-OverMinimumAmount
@fixture-shop @fixture-product @fixture-promotion @EAT-930 @C32225

Feature: Bundle Pricing & Over Minimum Amount Promotion
  As a user of Shopline
  I want to create bundle pricing promotion and over minimum amount promotion for my customer
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
    And I fill '1st Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '1st Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see row of selected product
    And I fill '2nd Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '2nd Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see 2 row of selected product
    And I fill '3rd Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '3rd Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see 3 row of selected product
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

    Given I am on Promotion Create Page
    When I fill '(dirty data) Buy selected product for $30 get 15% off' to name field
    And I click on selected products condition checkbox
    And I fill '15' to promotion value field
    And I fill '30' to promotion condition field
    And I input '5th Product for Checkout' to search field
    And I click on search button
    Then 1st product of popover list should contain '5th Product for Checkout'
    And I should see checkbox of product list
    And I click on 1st checkbox of product list
    And I click on popup confirm button
    Then I should see row of selected product
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then discount summary should equal to 'Get 15% off on Selected Products with purchase of Selected Products over NT$30'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy selected product for $30 get 15% off'
    Then 1st row of promotions should contain 'Never expires'

    Given I am on Promotion Create Page
    When I fill '(dirty data) Total order over $60 get 10% off' to name field
    And I click on subtotal condition checkbox
    And I fill '10' to promotion value field
    And I fill '60' to promotion condition field
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then discount summary should equal to 'Get 10% off on Entire Order with purchase over NT$60'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Total order over $60 get 10% off'
    Then 1st row of promotions should contain 'Never expires'

  Scenario: buy 4 items for check bundlePricing Promotion and overMinimumAmount are correct application
    Given I am on Shop Product Index Page
    And I input '1st Product for Checkout' to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button

    Given I am on Shop Product Index Page
    And I input '2nd Product for Checkout' to search field
    Then 1st product of products list should contain '2nd Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    And I input '3rd Product for Checkout' to search field
    Then 1st product of products list should contain '3rd Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    And I input '4th Product for Checkout' to search field
    Then 1st product of products list should contain '4th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on addon item checkbox
    And I click on buy together button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    And I input '5th Product for Checkout' to search field
    Then 1st product of products list should contain '5th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see checkout button
    When I click on checkout button
    Then I should be redirected to Shop Cart Page

    Then 1st item promotions should contain 'Buy 3 for $30'
    Then 2nd item promotions should contain 'Buy 3 for $30'
    Then 3rd item promotions should contain 'Buy 3 for $30'
    Then 6th item promotions should contain 'Buy selected product for $30 get 15% off'

    Then promotion description should contain 'Buy 3 for $30'
    Then promotion description should contain '-NT$11'
    Then promotion description should contain 'Buy selected product for $30 get 15% off'
    Then promotion description should contain '-NT$4'
    Then promotion description should contain 'Total order over $60 get 10% off'
    Then promotion description should contain '-NT$7'

    And I select country dropdown option included 'Taiwan' of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included 'Custom Delivery' of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included 'Custom' of payment method dropdown
    And I wait for 5 seconds for loading
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
    Then discount applied should contain '-NT$11'
    Then discount applied should contain 'Buy selected product for $30 get 15% off'
    Then discount applied should contain '-NT$4'
    Then discount applied should contain 'Total order over $60 get 10% off'
    Then discount applied should contain '-NT$7'
    Then item subtotal should contain 'NT$91'
    Then item discount applied should contain '-NT$22'
    Then total should contain 'NT$79'
    
    And ---ROLL BACK---
    Given I am on Bundle Pricing Index Page
    When I click on 1st row of select checkbox list
    Then I select delete of bulk actions dropdown
    Then I should see confirmation popover
    When I click on delete checkbox
    Then I click on confirm delete button
    Then I should see alert

    Given I am on Promotion Index Page
    When I click on 1st row of select checkbox list
    And I click on 2nd row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert