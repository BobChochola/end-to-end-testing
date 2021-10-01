@BaseCase @Admin @Checkout @Storefront @Bundle @promotionCheckout-bundlePricing
@fixture-shop @fixture-product @fixture-delivery @fixture-payment @fixture-promotion
Feature: Checkout BundlePricing Promotion
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

    Given I am on Basic Setting Page
    And I mark the value of shop name field as variable shop name

  @EAT-470 @EAT-470-1
  Scenario: Checkout promotion of BundlePricing  - Buy 3 for $99 by date
    Given I am on Bundle Pricing Create Page
    And I fill '(dirty data) Buy 3 for $99' to name field
    And I fill '3' to promotion value field
    And I fill '99' to discounted price field
    And I fill '18th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '18th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see 1 row of selected product
    And I click on countinue to button
    And I click on 2nd countinue to button
    Then I click on never expires checkbox
    And I click on end date field
    Then I should see calendar table
    When I click on 3rd available date button
    And I click on done button
    And I click on 3rd countinue to button
    When I click on preview button
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain end date
    Then target group should equal to 'All Customers'
    Then discount summary should equal to 'Purchase 3 items of Selected Products for NT$99'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 3 for $99'
    Then 1st row of promotions should contain start date
    Then 1st row of promotions should contain end date

    Given I am on Shop Product Index Page
    And I input '18th Product for Checkout' to search field
    Then 1st product of products list should contain "18th Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I fill '3' to product quantity field
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button

    Then I should be redirected to Shop Cart Page
    And 1st item quantity field should equal to '3'
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included 'Custom Delivery' of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included 'Custom' of payment method dropdown
    And I wait for 5 seconds for loading
    Then promotion description should contain 'Buy 3 for $99'
    Then promotion description should contain '-NT$201'
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
    Then I mark the value of order confirm info as variable order info
    When I click on summary collapse
    Then 1st row of product unit price should contain 'NT$100'
    Then 1st row of product quantity should equal to '3'
    Then 1st row of product items should contain '18th Product for Checkout'
    Then item subtotal should contain 'NT$300'
    Then discount applied should contain 'Buy 3 for $99'
    Then delivery fee should contain 'NT$10'
    Then total should contain 'NT$109'

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then product details should contain 'Buy 3 for $99'
    Then product details should contain '-NT$201'
    Then total should contain 'NT$109'

    Given I am on Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 3 for $99'
    When I click on bundle price usage record
    Then I should be redirected to Bundle Pricing History Page
    Then bundle prmotion name should contain 'Buy 3 for $99'
    Then 1st row of bundle promotion should contain order number
    Then bundle promotion total should contain 'NT$109'
    Then bundle promotion discounted amount should contain 'NT$201'
    When I click on export promotions button
    Then I should see confirm button
    When I click on confirm button
    Then I wait for 100 seconds for mail sent

    Given I am on Google Mail Page
    Then I should see account field
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    Then I should see search mail list
    When I click on row of mail list included 'Download Promotion Report'
    Then I should see mail detail
    Then I should see download button
    And ---ROLL BACK---
    Given I am on Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 3 for $99'
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

  @EAT-470 @EAT-470-2
  Scenario: Checkout BundlePricing Promotion and change promotion info
    Given I am on Bundle Pricing Create Page
    And I fill '(dirty data) Buy 5 for $120' to name field
    And I fill '5' to promotion value field
    And I fill '120' to discounted price field
    And I fill '18th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '18th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see 1 row of selected product
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    When I click on preview button
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    Then target group should equal to 'All Customers'
    Then discount summary should equal to 'Purchase 5 items of Selected Products for NT$120'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 5 for $120'
    Then 1st row of promotions should contain 'Never expires'

    Given I am on Shop Product Index Page
    And I input '18th Product for Checkout' to search field
    Then 1st product of products list should contain "18th Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I fill '5' to product quantity field
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And 1st item quantity field should equal to '5'
    Then promotion description should contain 'Buy 5 for $120'
    Then promotion description should contain '-NT$380'
    Given I am on Bundle Pricing Index Page
    When I select bundle price edit dropdown option of bundle price edit dropdown

    Then I should be redirected to Bundle Pricing Create Page
    And I fill '(dirty data) Buy 3 for $120' to name field
    And I fill '3' to promotion value field
    And I fill '17th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '17th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    And I click on countinue to button
    And I click on 2nd countinue to button
    When I click on never expires checkbox
    And I click on end date field
    Then I should see calendar table
    When I click on 3rd available date button
    And I click on done button
    And I click on 3rd countinue to button
    When I click on preview button
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain end date
    Then target group should equal to 'All Customers'
    Then discount summary should equal to 'Purchase 3 items of Selected Products for NT$120'
    And I click on confirm button
    Then I should see alert

    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 3 for $120'
    Then 1st row of promotions should contain start date
    Then 1st row of promotions should contain end date

    Given I am on Shop Cart Page
    And 1st item quantity field should equal to '2'
    And 2nd item quantity field should equal to '3'
    Then promotion description should contain 'Buy 3 for $120'
    Then promotion description should contain '-NT$180'
    When I click on 1st remove button
    Then I should see delete confirmation popover
    When I click on ok button
    Then I should see item quantity field
    And I fill '2' to item quantity field
    And 1st item quantity field should equal to '2'

    Given I am on Shop Product Index Page
    And I input '17th Product for Checkout' to search field
    Then 1st product of products list should contain "17th Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I fill '1' to product quantity field
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button

    Then I should be redirected to Shop Cart Page
    And 1st item quantity field should equal to '2'
    And 2nd item quantity field should equal to '1'
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included 'Custom Delivery' of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included 'Custom' of payment method dropdown
    And I wait for 5 seconds for loading
    Then promotion description should contain 'Buy 3 for $120'
    Then promotion description should contain '-NT$90'
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
    Then I mark the value of order confirm info as variable order info
    When I click on summary collapse
    Then 1st row of product quantity should equal to '2'
    Then 2nd row of product quantity should equal to '1'
    Then 1st row of product items should contain '18th Product for Checkout'
    Then 2nd row of product items should contain '17th Product for Checkout'
    Then item subtotal should contain 'NT$210'
    Then discount applied should contain 'Buy 3 for $120'
    Then total should contain 'NT$130'

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then product details should contain 'Buy 3 for $120'
    Then product details should contain '-NT$90'
    Then total should contain 'NT$130'

    Given I am on Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 3 for $120'
    When I click on bundle price usage record
    Then I should be redirected to Bundle Pricing History Page
    Then bundle prmotion name should contain 'Buy 3 for $120'
    Then 1st row of bundle promotion should contain order number
    Then bundle promotion total should contain 'NT$130'
    Then bundle promotion discounted amount should contain 'NT$90'
    When I click on export promotions button
    Then I should see confirm button
    When I click on confirm button
    Then I wait for 60 seconds for mail sent

    Given I am on Google Mail Page
    Then I should see account field
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    Then I should see search mail list
    When I click on row of mail list included 'Download Promotion Report'
    Then I should see mail detail
    Then I should see download button
    And ---ROLL BACK---
    Given I am on Bundle Pricing Index Page
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert