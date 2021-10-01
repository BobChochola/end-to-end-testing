@BaseCase @Admin @Storefront @Promotion @addDifferentProductApplyPromotion-2 @fixture-shop @fixture-payment @fixture-delivery @fixture-addon @fixture-different-promotion-with-product
Feature: Add different prodcut into cart and apply all promotion
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
    When I check and click no thanks button

    Given I am on Bundle Pricing Index Page
    And I input '(do not delete) Buy 3~21 for $30~210' to search field
    Then row of promotions should contain '(do not delete) Buy 3~21 for $30~210'
    When I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

    Given I am on Promotion Index Page
    And I input '(do not delete)' to search field
    Then I should see 5 row of select checkbox list
    And I click on select all checkbox
    And I select publish of bulk actions dropdown
    Then I should see alert

    Given I am on Free Shipping Index Page
    When I input "(do not delete) test Free Shipping" to search field
    Then I should see apply filter label
    Then 1st row of free shipping list should contain 'test Free Shipping'
    Then I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

    Given I am on Promotion Index Page
    When I input "16th Free Gift Promotion" to search field
    Then I should see apply filter label
    Then 1st row of promotion list should contain '16th Free Gift Promotion'
    Then I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

    Given I am on Cart Add On Items Create Page
    And I fill "(dirty data) Add-on Item" to english name field
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
    Then 1st row of cart addon list should contain "(dirty data) Add-on Item"

  @EAT-793 @EAT-793-2
  Scenario: buy 25 items for check bundlePricing Promotion is correct application
    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page

    Given I am on Shop Product Index Page
    And I input '4th Product for Checkout' to search field
    Then 1st product of products list should contain '4th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see add to cart button
    When I click on add to cart button

    Given I am on Shop Product Index Page
    And I input '5th Product for Checkout' to search field
    Then 1st product of products list should contain '5th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see add to cart button
    When I click on add to cart button

    Given I am on Shop Product Index Page
    And I input '6th Product for Checkout' to search field
    Then 1st product of products list should contain '6th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see add to cart button
    When I click on add to cart button

    Given I am on Shop Product Index Page
    And I input '8th Product for Checkout' to search field
    Then 1st product of products list should contain '8th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see add to cart button
    When I click on add to cart button

    Given I am on Shop Product Index Page
    And I input '9th Product for Checkout' to search field
    Then 1st product of products list should contain '9th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see add to cart button
    When I click on add to cart button

    Given I am on Shop Product Index Page
    And I input '15th Product for Checkout' to search field
    Then 1st product of products list should contain '15th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see add to cart button
    When I click on add to cart button

    Given I am on Shop Product Index Page
    And I input '19th Product for Checkout' to search field
    Then 1st product of products list should contain '19th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see add to cart button
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then I should see cart addon items button
    Then cart addon items price should contain 'NT$10'
    When I click on cart addon items button

    And I select country dropdown option included 'Taiwan' of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Local Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included 'Custom' of payment method dropdown
    And I wait for 5 seconds for loading

    Then 1st item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 2nd item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 3rd item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 4th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 5th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 6th item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 7th item promotions should contain '(do not delete) Buy selected products over NT$100 get 90% off'

    Then promotion description should contain '(do not delete) Buy 3~21 for $30~210 - Selected Products: Buy 3 items for NT$30'
    Then promotion description should contain "-NT$35"
    Then promotion description should contain '(do not delete) Buy selected products over NT$100 get 90% off'
    Then promotion description should contain "-NT$1"
    Then promotion description should contain '(do not delete) Over $100~300 get $1~3 off - Selected Categories: Get NT$300 off over NT$3'
    Then promotion description should contain "-NT$208"
    Then promotion description should contain "(do not delete) test Free Shipping"

    Then order summary should contain 'Item Subtotal:NT$284'
    Then order summary should contain "Discount Applied:-NT$244"
    Then order summary should contain 'Delivery Fee:NT$0'
    Then order summary should contain 'Total:NT$40'

    And I click on 1st increase quantity button

    Then 1st item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 2nd item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 3rd item promotions should contain 'do not delete) Over $100~300 get $1~3 off'
    Then 4th item promotions should contain 'do not delete) Over $100~300 get $1~3 off'
    Then 5th item promotions should contain 'do not delete) Over $100~300 get $1~3 off'
    Then 6th item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 7th item promotions should contain '(do not delete) Buy 3~21 for $30~210'

    Then promotion description should contain '(do not delete) Buy 3~21 for $30~210 - Selected Products: Buy 5 items for NT$50'
    Then promotion description should contain "-NT$26"
    Then promotion description should contain '(do not delete) Over $100~300 get $1~3 off - Selected Categories: Get NT$300 off over NT$3'
    Then promotion description should contain "-NT$208"
    Then promotion description should contain '(do not delete) Over $50~100 get $9~28 off - Entire Order: Get NT$9 off over NT$50'
    Then promotion description should contain "-NT$9"
    Then promotion description should contain "(do not delete) test Free Shipping"

    Then order summary should contain 'Item Subtotal:NT$294'
    Then order summary should contain "Discount Applied:-NT$243"
    Then order summary should contain 'Delivery Fee:NT$0'
    Then order summary should contain 'Total:NT$51'

    Given I am on Shop Product Index Page
    And I input '18th Product for Checkout' to search field
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page

    Then 1st item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 2nd item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 3rd item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 4th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 5th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 6th item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 7th item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 9th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'

    Then promotion description should contain '(do not delete) Buy 3~21 for $30~210 - Selected Products: Buy 5 items for NT$50'
    Then promotion description should contain "-NT$26"

    Then promotion description should contain '(do not delete) Over $100~300 get $1~3 off - Selected Categories: Get NT$300 off over NT$3'
    Then promotion description should contain "-NT$300"

    Then promotion description should contain '(do not delete) Over $50~100 get $9~28 off - Entire Order: Get NT$9 off over NT$50'
    Then promotion description should contain "-NT$9"
    Then promotion description should contain "(do not delete) test Free Shipping"

    Then order summary should contain 'Item Subtotal:NT$394'
    Then order summary should contain "Discount Applied:-NT$335"
    Then order summary should contain 'Delivery Fee:NT$0'
    Then order summary should contain 'Total:NT$59'

    And I click on 3rd increase quantity button

    Then 1st item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 2nd item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 3rd item promotions should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off'
    Then 4th item promotions should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off'
    Then 5th item promotions should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off'
    Then 6th item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 7th item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 9th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'

    Then promotion description should contain '(do not delete) Buy 3~21 for $30~210 - Selected Products: Buy 5 items for NT$50'
    Then promotion description should contain "-NT$26"

    Then promotion description should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off - Selected Products: Get NT$90 off over 4 items'
    Then promotion description should contain "-NT$90"
    Then promotion description should contain '(do not delete) Over $100~300 get $1~3 off - Selected Categories: Get NT$300 off over NT$3'
    Then promotion description should contain "-NT$100"
    Then promotion description should contain "(do not delete) Over $50~100 get $9~28 off - Entire Order: Get NT$28 off over NT$100"
    Then promotion description should contain "-NT$28"
    Then promotion description should contain "(do not delete) test Free Shipping"

    Then order summary should contain 'Item Subtotal:NT$453'
    Then order summary should contain "Discount Applied:-NT$244"
    Then order summary should contain 'Delivery Fee:NT$0'
    Then order summary should contain 'Total:NT$209'

    And I click on 6th increase quantity button

    Then 1st item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 2nd item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 3rd item promotions should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off'
    Then 4th item promotions should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off'
    Then 5th item promotions should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off'
    Then 6th item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 7th item promotions should contain '(do not delete) Buy selected products over NT$100 get 90% off'
    Then 9th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'

    Then promotion description should contain '(do not delete) Buy 3~21 for $30~210 - Selected Products: Buy 5 items for NT$50'
    Then promotion description should contain "-NT$50"

    Then promotion description should contain "(do not delete) Buy selected products over NT$100 get 90% off"
    Then promotion description should contain "-NT$1"

    Then promotion description should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off - Selected Products: Get NT$90 off over 4 items'
    Then promotion description should contain "-NT$90"

    Then promotion description should contain '(do not delete) Over $100~300 get $1~3 off - Selected Categories: Get NT$300 off over NT$3'
    Then promotion description should contain "-NT$100"

    Then promotion description should contain "(do not delete) Over $50~100 get $9~28 off - Entire Order: Get NT$28 off over NT$100"
    Then promotion description should contain "-NT$28"
    Then promotion description should contain "(do not delete) test Free Shipping"

    Then order summary should contain 'Item Subtotal:NT$478'
    Then order summary should contain "Discount Applied:-NT$269"
    Then order summary should contain 'Delivery Fee:NT$0'
    Then order summary should contain 'Total:NT$209'

    And I click on 7th increase quantity button
    Then 1st item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 2nd item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 3rd item promotions should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off'
    Then 4th item promotions should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off'
    Then 5th item promotions should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off'
    Then 6th item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 7th item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 9th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'

    Then promotion description should contain '(do not delete) Buy 3~21 for $30~210 - Selected Products: Buy 7 items for NT$70'
    Then promotion description should contain "-NT$32"

    Then promotion description should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off - Selected Products: Get NT$90 off over 4 items'
    Then promotion description should contain "-NT$90"

    Then promotion description should contain '(do not delete) Over $100~300 get $1~3 off - Selected Categories: Get NT$300 off over NT$3'
    Then promotion description should contain "-NT$100"

    Then promotion description should contain "(do not delete) Over $50~100 get $9~28 off - Entire Order: Get NT$28 off over NT$100"
    Then promotion description should contain "-NT$28"
    Then promotion description should contain "(do not delete) test Free Shipping"

    Then order summary should contain 'Item Subtotal:NT$479'
    Then order summary should contain "Discount Applied:-NT$250"
    Then order summary should contain 'Delivery Fee:NT$0'
    Then order summary should contain 'Total:NT$229'

    And I click on 9th increase quantity button
    Then 1st item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 2nd item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 3rd item promotions should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off'
    Then 4th item promotions should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off'
    Then 5th item promotions should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off'
    Then 6th item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 7th item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 9th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'

    Then promotion description should contain '(do not delete) Buy 3~21 for $30~210 - Selected Products: Buy 7 items for NT$70'
    Then promotion description should contain "-NT$32"

    Then promotion description should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off - Selected Products: Get NT$90 off over 4 items'
    Then promotion description should contain "-NT$90"

    Then promotion description should contain '(do not delete) Over $100~300 get $1~3 off - Selected Categories: Get NT$300 off over NT$3'
    Then promotion description should contain "-NT$200"

    Then promotion description should contain "(do not delete) Over $50~100 get $9~28 off - Entire Order: Get NT$28 off over NT$100"
    Then promotion description should contain "-NT$28"
    Then promotion description should contain "(do not delete) test Free Shipping"

    Then order summary should contain 'Item Subtotal:NT$579'
    Then order summary should contain "Discount Applied:-NT$350"
    Then order summary should contain 'Delivery Fee:NT$0'
    Then order summary should contain 'Total:NT$229'

    And I click on 9th increase quantity button
    And I wait for 5 seconds for loading
    And I click on 9th increase quantity button
    And I wait for 5 seconds for loading
    Then 1st item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 2nd item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 3rd item promotions should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off'
    Then 4th item promotions should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off'
    Then 5th item promotions should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off'
    Then 6th item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 7th item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 9th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'

    Then promotion description should contain '(do not delete) Buy 3~21 for $30~210 - Selected Products: Buy 7 items for NT$70'
    Then promotion description should contain "-NT$32"

    Then promotion description should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off - Selected Products: Get NT$90 off over 4 items'
    Then promotion description should contain "-NT$90"

    Then promotion description should contain '(do not delete) Over $100~300 get $1~3 off - Selected Categories: Get NT$300 off over NT$3'
    Then promotion description should contain "-NT$300"

    Then promotion description should contain "(do not delete) Over $50~100 get $9~28 off - Entire Order: Get NT$28 off over NT$100"
    Then promotion description should contain "-NT$28"
    Then promotion description should contain "(do not delete) test Free Shipping"

    Then order summary should contain 'Item Subtotal:NT$779'
    Then order summary should contain "Discount Applied:-NT$450"
    Then order summary should contain 'Delivery Fee:NT$0'
    Then order summary should contain 'Total:NT$329'

    And I click on 2nd increase quantity button
    And I wait for 5 seconds for loading
    And I click on 2nd increase quantity button
    And I wait for 5 seconds for loading
    Then 1st item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 2nd item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 3rd item promotions should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off'
    Then 4th item promotions should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off'
    Then 5th item promotions should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off'
    Then 6th item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 7th item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 9th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'

    Then promotion description should contain '(do not delete) Buy 3~21 for $30~210 - Selected Products: Buy 9 items for NT$90'
    Then promotion description should contain "-NT$72"

    Then promotion description should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off - Selected Products: Get NT$90 off over 4 items'
    Then promotion description should contain "-NT$90"

    Then promotion description should contain '(do not delete) Over $100~300 get $1~3 off - Selected Categories: Get NT$300 off over NT$3'
    Then promotion description should contain "-NT$300"

    Then promotion description should contain "(do not delete) Over $50~100 get $9~28 off - Entire Order: Get NT$28 off over NT$100"
    Then promotion description should contain "-NT$28"
    Then promotion description should contain "(do not delete) test Free Shipping"

    Then order summary should contain 'Item Subtotal:NT$839'
    Then order summary should contain "Discount Applied:-NT$490"
    Then order summary should contain 'Delivery Fee:NT$0'
    Then order summary should contain 'Total:NT$349'

    Given I am on Shop Product Index Page
    And I input '1st Product for Checkout' to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see add to cart button
    When I click on add to cart button

    Given I am on Shop Product Index Page
    And I input '2nd Product for Checkout' to search field
    Then 1st product of products list should contain '2nd Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see add to cart button
    When I click on add to cart button

    Given I am on Shop Product Index Page
    And I input '3rd Product for Checkout' to search field
    Then 1st product of products list should contain '3rd Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see add to cart button
    When I click on add to cart button

    Given I am on Shop Product Index Page
    And I input '7th Product for Checkout' to search field
    Then 1st product of products list should contain '7th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see add to cart button
    When I click on add to cart button

    Given I am on Shop Product Index Page
    And I input '10th Product for Checkout' to search field
    Then 1st product of products list should contain '10th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see add to cart button
    When I click on add to cart button

    Given I am on Shop Product Index Page
    And I input '12th Product for Checkout' to search field
    Then 1st product of products list should contain '12th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see add to cart button
    When I click on add to cart button

    Given I am on Shop Product Index Page
    And I input '13th Product for Checkout' to search field
    Then 1st product of products list should contain '13th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see add to cart button
    When I click on add to cart button

    Given I am on Shop Product Index Page
    And I input '14th Product for Checkout' to search field
    Then 1st product of products list should contain '14th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see add to cart button
    When I click on add to cart button

    Given I am on Shop Product Index Page
    And I input '16th Product for Checkout' to search field
    Then 1st product of products list should contain '16th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see add to cart button
    When I click on add to cart button

    Given I am on Shop Product Index Page
    And I input '17th Product for Checkout' to search field
    Then 1st product of products list should contain '17th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see add to cart button
    When I click on add to cart button

    Given I am on Shop Product Index Page
    And I input '18th Product for Checkout' to search field
    Then 1st product of products list should contain '18th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see add to cart button
    When I click on add to cart button

    Given I am on Shop Product Index Page
    And I input '25 different items -1' to search field
    Then 1st product of products list should contain '25 different items -1'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see add to cart button
    When I click on add to cart button

    Given I am on Shop Product Index Page
    And I input '25 different items -2' to search field
    Then 1st product of products list should contain '25 different items -2'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see add to cart button
    When I click on add to cart button

    Given I am on Shop Product Index Page
    And I input '25 different items -3' to search field
    Then 1st product of products list should contain '25 different items -3'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see add to cart button
    When I click on add to cart button

    Given I am on Shop Product Index Page
    And I input '25 different items -4' to search field
    Then 1st product of products list should contain '25 different items -4'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see add to cart button
    When I click on add to cart button

    Given I am on Shop Product Index Page
    And I input '25 different items -5' to search field
    Then 1st product of products list should contain '25 different items -5'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see add to cart button
    When I click on add to cart button

    Given I am on Shop Product Index Page
    And I input '25 different items -6' to search field
    Then 1st product of products list should contain '25 different items -6'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see add to cart button
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page

    Then 1st item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 2nd item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 3rd item promotions should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off'
    Then 4th item promotions should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off'
    Then 5th item promotions should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off'
    Then 6th item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 7th item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 9th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 12th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 13th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 14th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 15th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 16th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 17th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 18th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 19th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 20th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 21th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 22th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 23th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 24th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 25th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'

    Then promotion description should contain '(do not delete) Buy 3~21 for $30~210 - Selected Products: Buy 9 items for NT$90'
    Then promotion description should contain "-NT$72"

    Then promotion description should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off - Selected Products: Get NT$90 off over 4 items'
    Then promotion description should contain "-NT$90"

    Then promotion description should contain '(do not delete) Over $100~300 get $1~3 off - Selected Categories: Get NT$300 off over NT$3'
    Then promotion description should contain "-NT$300"

    Then promotion description should contain "(do not delete) Over $50~100 get $9~28 off - Entire Order: Get NT$28 off over NT$100"
    Then promotion description should contain "-NT$28"
    Then promotion description should contain "(do not delete) test Free Shipping"

    Then order summary should contain 'Item Subtotal:NT$1,279'
    Then order summary should contain "Discount Applied:-NT$490"
    Then order summary should contain 'Delivery Fee:NT$0'
    Then order summary should contain 'Total:NT$789'

    And I click on 11th increase quantity button
    And I wait for 10 seconds for loading
    And I click on 11th increase quantity button
    And I wait for 10 seconds for loading

    Then 1st item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 2nd item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 3rd item promotions should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off'
    Then 4th item promotions should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off'
    Then 5th item promotions should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off'
    Then 6th item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 7th item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 9th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 12th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 13th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 14th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 15th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 16th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 17th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 18th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 19th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 20th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 21th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 22th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 23th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 24th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 25th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 26th item promotions should contain '16th Free Gift Promotion'

    Then promotion description should contain '(do not delete) Buy 3~21 for $30~210 - Selected Products: Buy 9 items for NT$90'
    Then promotion description should contain "-NT$72"

    Then promotion description should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off - Selected Products: Get NT$90 off over 4 items'
    Then promotion description should contain "-NT$90"

    Then promotion description should contain '(do not delete) Over $100~300 get $1~3 off - Selected Categories: Get NT$300 off over NT$3'
    Then promotion description should contain "-NT$300"

    Then promotion description should contain "(do not delete) Over $50~100 get $9~28 off - Entire Order: Get NT$28 off over NT$100"
    Then promotion description should contain "-NT$28"
    Then promotion description should contain "(do not delete) test Free Shipping"
    Then promotion description should contain "16th Free Gift Promotion - Selected Products: Get 1 Free Gift(s) (1st Created Free Gift) over 3 items"
    Then promotion description should contain "(do not delete) test Free Shipping"

    Then order summary should contain 'Item Subtotal:NT$1,281'
    Then order summary should contain "Discount Applied:-NT$490"
    Then order summary should contain 'Delivery Fee:NT$0'
    Then order summary should contain 'Total:NT$791'

    Given I am on Shop Product Index Page
    And I input '4th Product for Checkout' to search field
    Then 1st product of products list should contain '4th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on addon item checkbox
    And I click on buy together button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page

    Then 1st item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 3rd item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 4th item promotions should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off'
    Then 5th item promotions should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off'
    Then 6th item promotions should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off'
    Then 7th item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 8th item promotions should contain '(do not delete) Buy selected products over NT$100 get 90% off'
    Then 10th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 13th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 14th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 15th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 16th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 17th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 18th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 19th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 20th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 21th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 22th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 23th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 24th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 25th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 26th item promotions should contain '(do not delete) Over $100~300 get $1~3 off'
    Then 27th item promotions should contain '(do not delete) Buy 3~21 for $30~210'
    Then 28th item promotions should contain '16th Free Gift Promotion'

    Then promotion description should contain '(do not delete) Buy 3~21 for $30~210 - Selected Products: Buy 9 items for NT$90'
    Then promotion description should contain "-NT$81"

    Then promotion description should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off - Selected Products: Get NT$90 off over 4 items'
    Then promotion description should contain "-NT$90"

    Then promotion description should contain '(do not delete) Buy selected products over NT$100 get 90% off'
    Then promotion description should contain '-NT$1'

    Then promotion description should contain '(do not delete) Over $100~300 get $1~3 off - Selected Categories: Get NT$300 off over NT$3'
    Then promotion description should contain "-NT$300"

    Then promotion description should contain "(do not delete) Over $50~100 get $9~28 off - Entire Order: Get NT$28 off over NT$100"
    Then promotion description should contain "-NT$28"
    Then promotion description should contain "(do not delete) test Free Shipping"
    Then promotion description should contain "16th Free Gift Promotion - Selected Products: Get 1 Free Gift(s) (1st Created Free Gift) over 3 items"

    Then order summary should contain 'Item Subtotal:NT$1,301'
    Then order summary should contain "Discount Applied:-NT$500"
    Then order summary should contain 'Delivery Fee:NT$0'
    Then order summary should contain 'Total:NT$801'

    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
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
    Then discount applied should contain '(do not delete) Buy 3~21 for $30~210 - Selected Products: Buy 9 items for NT$90'
    Then discount applied should contain '-NT$81'
    Then discount applied should contain '(do not delete) Buy selected product for 4~12 items get NT$90~NT$70 off - Selected Products: Get NT$90 off over 4 items'
    Then discount applied should contain '-NT$90'
    Then discount applied should contain '(do not delete) Buy selected products over NT$100 get 90% off'
    Then discount applied should contain '-NT$1'


    Then discount applied should contain '(do not delete) Over $100~300 get $1~3 off - Selected Categories: Get NT$300 off over NT$3'
    Then discount applied should contain '-NT$300'
    Then discount applied should contain "16th Free Gift Promotion - Selected Products: Get 1 Free Gift(s) (1st Created Free Gift) over 3 items"
    Then discount applied should contain '-'
    Then discount applied should contain '(do not delete) Over $50~100 get $9~28 off - Entire Order: Get NT$28 off over NT$100'
    Then discount applied should contain '-NT$28'
    Then discount applied should contain '(do not delete) test Free Shipping'
    Then discount applied should contain '-'
    Then item subtotal should contain 'NT$1,301'
    Then item discount applied should contain '-NT$500'
    Then delivery fee should contain 'NT$0'
    Then total should contain 'NT$801'

    And ---ROLL BACK---
    Given I am on Bundle Pricing Index Page
    And I input '(do not delete) Buy 3~21 for $30~210' to search field
    Then 1st row of promotions should contain 'Buy 3~21 for $30~210'
    When I click on 1st row of select checkbox list
    Then I select unpublish of bulk actions dropdown
    Then I should see alert

    Given I am on Promotion Index Page
    And I input '(do not delete)' to search field
    When I click on select all checkbox
    And I select unpublish of bulk actions dropdown
    Then I should see alert

    Given I am on Free Shipping Index Page
    When I input "(do not delete) test Free Shipping" to search field
    Then I should see apply filter label
    Then I should see 1 row of free shipping list
    Then 1st row of free shipping list should contain "(do not delete) test Free Shipping"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see alert

    Given I am on Promotion Index Page
    When I input "16th Free Gift Promotion" to search field
    Then I should see apply filter label
    Then I should see 1 row of promotion list
    Then 1st row of promotion list should contain "16th Free Gift Promotion"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item

    Given I am on Cart Add On Items Index Page
    When I click on 1st select checkbox of cart addon list
    Then I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then cart add on items list should contain "No promotions yet"