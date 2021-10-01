@BaseCase @Storefront @Admin @Promotion @Bundle @promotionBundlePricingCheckout-3
@fixture-shop @fixture-product @fixture-delivery @fixture-payment @fixture-promotion @EAT-473
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

  @EAT-473-3
  Scenario: Buy 3 for $100 and Buy 5 for $300
    Given I am on Bundle Pricing Create Page
    And I fill '(dirty data) Buy 3 for $100' to name field
    And I fill '3' to promotion value field
    And I fill '100' to discounted price field
    And I click on stackable off checkbox
    When I click on countinue to button
    Then I should see alert
    And I fill '10th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '10th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see 1 row of selected product
    Then 1st row of selected product should contain '10th Product for Checkout'
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    When I click on preview button
    Then discount summary should equal to 'Purchase 3 items of Selected Products for NT$100'
    And I click on confirm button
    Then I should see alert

    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 3 for $100'
    Then 1st row of promotions should contain 'Never expires'
    When I select add promotion dropdown option included 'Bundle Pricing' of add promotion dropdown
    Then I should be redirected to Bundle Pricing Create Page
    And I fill '(dirty data) Buy 5 for $200' to name field
    And I fill '5' to promotion value field
    And I fill '200' to discounted price field
    When I click on countinue to button
    Then I should see alert
    And I fill '10th Product for Checkout' to search field
    When I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '10th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see 1 row of selected product
    Then 1st row of selected product should contain '10th Product for Checkout'
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    When I click on preview button
    Then discount summary should equal to 'Purchase 5 items of Selected Products for NT$200'
    And I click on confirm button
    Then I should see alert
    Then alert should contain alert message
    When I click on delete selected button
    Then alert should contain 'Selected products is required'
    And I fill '18th Product for Checkout' to search field
    When I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '18th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see 1 row of selected product
    Then 1st row of selected product should contain '18th Product for Checkout'
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    When I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 5 for $200'
    Then 1st row of promotions should contain 'Never expires'
    Then 2nd row of promotions should contain 'Buy 3 for $100'
    Then 2nd row of promotions should contain 'Never expires'

    Given I am on Shop Product Index Page
    And I input '10th Product for Checkout' to search field
    Then 1st product of products list should contain '10th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I fill '6' to product quantity field
    And I click on add to cart button
    Given I am on Shop Product Index Page
    And I input '18th Product for Checkout' to search field
    Then 1st product of products list should contain '18th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I fill '5' to product quantity field
    And I click on add to cart button
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then 1st row of cart item should contain '10th Product for Checkout'
    Then 1st item quantity field should equal to '3'
    Then 2nd row of cart item should contain '18th Product for Checkout'
    Then 2nd item quantity field should equal to '5'
    Then 3rd row of cart item should contain '10th Product for Checkout'
    Then 3rd item quantity field should equal to '3'
    Then 2nd item promotions should contain 'Buy 5 for $200'
    Then 3rd item promotions should contain 'Buy 3 for $100'
    Then promotion description should contain 'Buy 5 for $200'
    Then promotion description should contain 'Buy 3 for $100'
    And I select country dropdown option included 'Taiwan' of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included '(DBW) - LocalDelivery' of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included 'Custom' of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill address to delivery address field
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button

    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info
    When I click on summary collapse
    Then 1st row of product items should contain '10th Product for Checkout'
    Then 1st row of product quantity should equal to '3'
    Then 1st row of product unit price should contain 'NT$50'
    Then 1st row of product items should contain 'NT$150'
    Then 2nd row of product items should contain '18th Product for Checkout'
    Then 2nd row of product quantity should equal to '5'
    Then 2nd row of product items should contain 'Buy 5 for $200'
    Then 2nd row of product unit price should contain 'NT$100'
    Then 2nd row of product items should contain 'NT$500'
    Then 3rd row of product items should contain '10th Product for Checkout'
    Then 3rd row of product items should contain 'Buy 3 for $100'
    Then 3rd row of product items should contain 'NT$150'
    Then 3rd row of product quantity should equal to '3'
    Then 3rd row of product unit price should contain 'NT$50'
    Then discount applied should contain 'Buy 3 for $100'
    Then discount applied should contain 'Buy 5 for $200'
    Then item subtotal should contain 'NT$800'
    Then item discount applied should contain '-NT$350'
    Then delivery fee should contain 'NT$10'
    Then total should contain 'NT$460'

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then discount field should contain 'Buy 3 for $100'
    Then discount field should contain 'Buy 5 for $200'
    Then total should contain 'NT$460'
    Given I am on Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 5 for $200'
    When I click on bundle price usage record
    Then I should be redirected to Bundle Pricing History Page
    Then bundle prmotion name should contain 'Buy 5 for $200'
    Then 1st row of bundle promotion should contain order number
    Then bundle promotion total should contain 'NT$460'
    Then bundle promotion discounted amount should contain 'NT$300'
    When I click on export promotions button
    Then I should see confirm button
    When I click on confirm button
    When I click on back to bundle pricing index button
    Then I should be redirected to Bundle Pricing Index Page
    Then 2nd row of promotions should contain 'Buy 3 for $100'
    When I click on 2nd bundle price usage record
    Then I should be redirected to Bundle Pricing History Page
    Then bundle prmotion name should contain 'Buy 3 for $100'
    Then 1st row of bundle promotion should contain order number
    Then bundle promotion total should contain 'NT$460'
    Then bundle promotion discounted amount should contain 'NT$50'
    When I click on export promotions button
    Then I should see confirm button
    When I click on confirm button
    When I click on back to bundle pricing index button
    Then I should be redirected to Bundle Pricing Index Page

    And ---ROLL BACK---
    And I click on 1st row of select checkbox list
    And I click on 2nd row of select checkbox list
    Then I select delete of bulk actions dropdown
    Then I should see confirmation popover
    When I click on delete checkbox
    Then I click on confirm delete button
    Then I should see alert