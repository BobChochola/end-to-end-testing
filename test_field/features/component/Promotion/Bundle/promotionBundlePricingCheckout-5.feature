@BaseCase @Storefront @Admin @Promotion @Bundle @CouponCode @promotionBundlePricingCheckout-5
@fixture-shop @fixture-product @fixture-delivery @fixture-payment @fixture-promotion @fixture-addon @EAT-473

Feature: Bundle Pricing Promotion
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

  @EAT-473-5
  Scenario: buy product with addon items can use BundlePricing Promotion but can't use 7th Promotion at the same time
    Given I am on Bundle Pricing Create Page
    And I fill '(dirty data) Buy 2 for $10' to name field
    And I fill '2' to promotion value field
    And I fill '10' to discounted price field
    When I click on countinue to button
    Then I should see alert
    And I fill '4th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '4th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should not see alert
    Then I should see row of selected product
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    When I click on preview button
    Then discount summary should equal to 'Purchase 2 items of Selected Products for NT$10'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 2 for $10'
    Then 1st row of promotions should contain 'Never expires'
    Given I am on Promotion Index Page
    When I input '7th Promotion' to search field
    And I should see apply filter label
    Then 1st row of promotion list should contain '7th Promotion'
    And I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

    Given I am on Shop Product Index Page
    And I input '4th Product for Checkout' to search field
    Then 1st product of products list should contain '4th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I fill '2' to product quantity field
    And I click on addon item checkbox
    And I click on buy together button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then 1st row of cart item should contain '4th Product for Checkout'
    Then 2nd row of cart item should contain '2nd Addon for Checkout'
    Then 1st item quantity field should equal to '2'
    Then 2nd item quantity field should equal to '1'
    Then promotion description should contain 'Buy 2 for $10'
    And I select country dropdown option included 'Taiwan' of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included 'Custom Delivery' of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included 'Custom' of payment method dropdown
    And I wait for 5 seconds for loading
    When I click on apply coupon code button
    And I input 'SelectedProduct' to coupon code field
    Then I should see promotion error info
    Then promotion error info should contain 'No valid product for Coupon SelectedProduct is found'
    Then promotion description should not contain '7th Promotion'
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
    Then 1st row of product items should contain '4th Product for Checkout'
    Then 1st row of product items should contain 'Buy 2 for $10'
    Then 1st row of product quantity should equal to '2'
    Then 1st row of product unit price should contain 'NT$10'
    Then 2nd row of product items should contain '2nd Addon for Checkout'
    Then 2nd row of product items should contain 'Add-on Item'
    Then 2nd row of product quantity should equal to '1'
    Then 2nd row of product unit price should contain 'NT$10'
    Then discount applied should contain 'Buy 2 for $10'
    Then item subtotal should contain 'NT$30'
    Then item discount applied should contain '-NT$10'
    Then delivery fee should contain 'NT$10'
    Then total should contain 'NT$30'

    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then discount field should contain 'Buy 2 for $10'
    Then discount field should not contain '7th Promotion'
    Then discount field should contain '-NT$10'
    Then total should contain 'NT$30'

    And ---ROLL BACK---
    Given I am on Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 2 for $10'
    When I click on 1st row of select checkbox list
    Then I select delete of bulk actions dropdown
    Then I should see confirmation popover
    When I click on delete checkbox
    Then I click on confirm delete button
    Then I should see alert
    Given I am on Promotion Index Page
    When I input '7th Promotion' to search field
    Then I should see apply filter label
    Then 1st row of promotion list should contain '7th Promotion'
    Then I should see row of select checkbox list
    When I click on 1st row of select checkbox list
    Then I select unpublish of bulk actions dropdown
    Then I should see alert