@BaseCase @Storefront @Admin @FreeGift @Promotion @Bundle @promotionBundlePricingCheckout-2
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

  @EAT-473-2 @fixture-freegift
  Scenario: BundlePricing Promotion and 18th Free Gift Promotion
    Given I am on Bundle Pricing Create Page
    And I fill '(dirty data) Buy 2 for $50' to name field
    And I fill '2' to promotion value field
    And I fill '50' to discounted price field
    When I click on countinue to button
    Then I should see alert
    And I fill '10th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '10th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should not see alert
    Then I should see row of selected product
    And I click on countinue to button
    And I click on 2nd countinue to button
    Then I should see never expires checkbox
    And I click on 3rd countinue to button
    When I click on preview button
    Then discount summary should equal to 'Purchase 2 items of Selected Products for NT$50'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 2 for $50'
    Then 1st row of promotions should contain 'Never expires'
    Given I am on Promotion Create Page
    And I fill "19th Free Gift Promotion" to name field
    And I click on selected products condition checkbox
    And I select minimum items of condition type dropdown
    When I select free gift of benefit type dropdown
    And I click on select button
    Then I should see select product popup
    And I click checkbox of product list for the same order of product of popover list included '2nd Created Free Gift'
    And I click on popup confirm button
    Then I fill "1" to 1st promotion value field
    And I fill "1" to 1st promotion condition field
    When I click on add tier button
    Then I fill "3" to 2nd promotion value field
    And I fill "3" to 2nd promotion condition field
    And I click on 2nd select button
    Then I should see select product popup
    And I click on 1st checkbox of product list
    And I click on popup confirm button
    When I click on add tier button
    Then I fill "6" to 3rd promotion value field
    And I fill "5" to 3rd promotion condition field
    And I click on 3rd select button
    Then I should see select product popup
    And I click on 1st checkbox of product list
    And I click on popup confirm button

    When I fill "10th Product for Checkout" to search field
    Then I click on search button
    And I should see select product popup
    Then 1st product of popover list should contain '10th Product for Checkout'
    And I click on 1st checkbox of product list
    Then I click on popup confirm button

    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "19th Free Gift Promotion"
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Get 1 Free Gift(s) (2nd Created Free Gift) on Selected Products with purchase of Selected Products over 1 items"
    Then discount summary should contain "Get 3 Free Gift(s) (2nd Created Free Gift) on Selected Products with purchase of Selected Products over 3 items"
    Then discount summary should contain "Get 6 Free Gift(s) (2nd Created Free Gift) on Selected Products with purchase of Selected Products over 5 items"
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    When I input '9th Promotion' to search field
    And I should see apply filter label
    Then 1st row of promotion list should contain '9th Promotion'
    And I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert
    Given I am on Shop Product Index Page
    And I input '10th Product for Checkout' to search field
    Then 1st product of products list should contain '10th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I fill '2' to product quantity field
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included 'Taiwan' of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included '(DBW) - LocalDelivery' of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included 'Custom' of payment method dropdown
    And I wait for 5 seconds for loading
    Then 1st item quantity field should equal to '2'
    Then promotion description should contain 'Buy 2 for $50'
    Then promotion description should contain '19th Free Gift Promotion'
    Then promotion description should contain '9th Promotion'
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
    When I click on summary collapse
    Then 1st row of product items should contain '10th Product for Checkout'
    Then 1st row of product items should contain 'Buy 2 for $50'
    Then 1st row of product quantity should equal to '2'
    Then 1st row of product unit price should contain 'NT$50'
    Then 2nd row of product items should contain '2nd Created Free Gift'
    Then 2nd row of product items should contain '19th Free Gift Promotion'
    Then 2nd row of product quantity should equal to '1'
    Then 2nd row of product unit price should contain 'NT$0'
    Then discount applied should contain 'Buy 2 for $50'
    Then item subtotal should contain 'NT$100'
    Then item discount applied should contain '-NT$100'
    Then delivery fee should contain 'NT$10'
    Then total should contain 'NT$10'

    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then discount field should contain 'Buy 2 for $50'
    Then discount field should contain '19th Free Gift Promotion'
    Then discount field should contain '9th Promotion'
    Then discount field should contain '-NT$50'
    Then total should contain 'NT$10'

    And ---ROLL BACK---
    Given I am on Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 2 for $50'
    When I click on 1st row of select checkbox list
    Then I select delete of bulk actions dropdown
    Then I should see confirmation popover
    When I click on delete checkbox
    Then I click on confirm delete button
    Then I should see alert
    Given I am on Promotion Index Page
    When I input '19th Free Gift Promotion' to search field
    Then I should see apply filter label
    Then I should see row of select checkbox list
    Then 1st row of promotion list should contain '19th Free Gift Promotion'
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    Then I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert
    When I input '9th Promotion' to search field
    Then I should see apply filter label
    Then 1st row of promotion list should contain '9th Promotion'
    Then I should see row of select checkbox list
    When I click on 1st row of select checkbox list
    Then I select unpublish of bulk actions dropdown
    Then I should see alert