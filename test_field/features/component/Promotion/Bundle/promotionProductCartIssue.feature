@BaseCase @Admin @Storefront @Promotion @Bundle @CouponCode @promotionProductCartIssue
@fixture-shop @fixture-promotion @fixture-product @fixture-payment @fixture-delivery
Feature: Cart Add-on reload issue makes cart promotion unshown
  As a user of merchant
  I want to create promotion of bundle price for my customer
  but my customer use that in cart non-delete

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
    When I check and click no thanks button

  @EAT-736 @EAT-736-1
  Scenario: Delete apply promotion of bundle price product
    Given I am on Bundle Pricing Create Page
    And I fill '(dirty data) Buy 3 for $99' to name field
    And I fill '3' to promotion value field
    And I fill '99' to discounted price field
    And I fill '7th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '7th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should not see alert
    Then I should see row of selected product
    And I click on countinue to button
    When I click on 2nd countinue to button
    Then I click on never expires checkbox
    And I click on end date field
    Then I should see calendar table
    When I click on 3rd available date button
    And I click on done button
    And I click on 3rd countinue to button
    When I click on preview button
    Then discount summary should equal to 'Purchase 3 items of Selected Products for NT$99'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 3 for $99'
    Then 1st row of promotions should contain start date
    Then 1st row of promotions should contain end date

    Given I am on Shop Product Index Page
    When I input "7th Product for Checkout" to search field
    Then I should see product of products list
    Then 1st product of products list should contain '7th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see increase button
    And I click on increase button
    And I click on increase button
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And 1st item quantity field should equal to '3'
    Then promotion description should contain "Buy 3 for $99"
    When I click on remove button
    Then I should see delete confirmation popover
    When I click on ok button
    Then I should see empty message
    Then empty message should contain "Your shopping cart is empty"
    And ---ROLL BACK---
    Given I am on Bundle Pricing Index Page
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

  @EAT-736 @EAT-736-2
  Scenario: Apply two promotion and one bundle then still can delete
    Given I am on Promotion Index Page
    When I input "13th Promotion" to search field
    And I should see apply filter label
    Then I should see 1 row of promotion list
    Then 1st row of promotion list should contain '13th Promotion'
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert
    When I input "6th Promotion" to search field
    Then I should see apply filter label
    Then 1st row of promotion list should contain '6th Promotion'
    Then I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

    Given I am on Bundle Pricing Create Page
    And I fill '(dirty data) Buy 3 for $99' to name field
    And I fill '3' to promotion value field
    And I fill '99' to discounted price field
    And I fill '7th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '7th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should not see alert
    Then I should see row of selected product
    And I click on countinue to button
    When I click on 2nd countinue to button
    Then I click on never expires checkbox
    And I click on end date field
    Then I should see calendar table
    When I click on 3rd available date button
    And I click on done button
    And I click on 3rd countinue to button
    When I click on preview button
    Then discount summary should equal to 'Purchase 3 items of Selected Products for NT$99'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 3 for $99'
    Then 1st row of promotions should contain start date
    Then 1st row of promotions should contain end date

    Given I am on Shop Product Index Page
    When I input "7th Product for Checkout" to search field
    Then I should see product of products list
    Then 1st product of products list should contain '7th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see increase button
    And I click on increase button
    And I click on increase button
    And I click on increase button
    And I click on increase button
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on apply coupon code button
    Then I should see coupon code field
    When I input "AmountDiscount" to coupon code field
    Then promotion description should contain "Buy 3 for $99"
    Then promotion description should contain "6th Promotion - Selected Products: Get NT$50 off over 2 items"
    Then promotion description should contain "13th Promotion"
    When I click on remove button
    Then I should see delete confirmation popover
    When I click on ok button
    Then I should not see delete confirmation popover
    When I click on remove button
    Then I should see delete confirmation popover
    When I click on ok button
    Then empty message should contain "Your shopping cart is empty"
    And ---ROLL BACK---
    Given I am on Bundle Pricing Index Page
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

    Given I am on Promotion Index Page
    When I input "13th Promotion" to search field
    And I should see apply filter label
    Then I should see 1 row of promotion list
    And 1st row of promotion list should contain "13th Promotion"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item

    When I input "6th Promotion" to search field
    Then I should see apply filter label
    Then I should see 1 row of promotion list
    Then 1st row of promotion list should contain "6th Promotion"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item

  @EAT-736 @EAT-736-3 @fixture-addon
  Scenario: Apply three promotion, one bundle and free shipping then still can delete
    Given I am on Bundle Pricing Create Page
    And I fill '(dirty data) Buy 3 for $99' to name field
    And I fill '3' to promotion value field
    And I fill '99' to discounted price field
    And I fill '7th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '7th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should not see alert
    Then I should see row of selected product
    And I click on countinue to button
    When I click on 2nd countinue to button
    Then I click on never expires checkbox
    And I click on end date field
    Then I should see calendar table
    When I click on 3rd available date button
    And I click on done button
    And I click on 3rd countinue to button
    When I click on preview button
    Then discount summary should equal to 'Purchase 3 items of Selected Products for NT$99'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 3 for $99'
    Then 1st row of promotions should contain start date
    Then 1st row of promotions should contain end date

    Given I am on Promotion Index Page
    When I input "13th Promotion" to search field
    And I should see apply filter label
    Then I should see 1 row of promotion list
    Then 1st row of promotion list should contain '13th Promotion'
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert
    When I input "6th Promotion" to search field
    Then I should see apply filter label
    Then 1st row of promotion list should contain '6th Promotion'
    Then I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

    Given I am on Cart Add On Items Index Page
    When I click on add cart addon button
    Then I should be redirected to Cart Add On Items Create Page
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
    Then 1st row of cart addon list should contain date

    Given I am on Free Shipping Index Page
    When I input "2nd Free Shipping" to search field
    And I should see apply filter label
    Then 1st row of free shipping list should contain '2nd Free Shipping'
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    And I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'

    Given I am on Shop Product Index Page
    When I input "7th Product for Checkout" to search field
    Then I should see product of products list
    Then 1st product of products list should contain '7th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see increase button
    And I click on increase button
    And I click on increase button
    And I click on increase button
    And I click on increase button
    And I click on increase button
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on cart addon items button
    Then 2nd row of cart item should contain "2nd Addon for Checkout"
    Then I should see decrease button
    And I click on decrease button
    Then 1st row of cart item should contain "NT$98"
    Then I should see apply coupon code button
    And I click on apply coupon code button
    Then I should see coupon code field
    Then promotion description should contain "2nd Free Shipping"
    Then promotion description should contain "Buy 3 for $99"
    Then promotion description should contain "6th Promotion - Selected Products: Get NT$50 off over 2 items"
    When I input "AmountDiscount" to coupon code field
    Then promotion description should contain "13th Promotion"
    When I click on remove button
    Then I should see delete confirmation popover
    When I click on ok button
    Then I should see 2 remove button
    And I click on remove button
    Then I should see delete confirmation popover
    When I click on ok button
    Then I should see 1 remove button
    And I click on remove button
    Then I should see delete confirmation popover
    When I click on ok button
    Then empty message should contain "Your shopping cart is empty"
    And ---ROLL BACK---
    Given I am on Cart Add On Items Index Page
    When I click on 1st select checkbox of cart addon list
    Then I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then cart add on items list should contain "No promotions yet"

    Given I am on Bundle Pricing Index Page
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

    Given I am on Promotion Index Page
    When I input "13th Promotion" to search field
    And I should see apply filter label
    Then I should see 1 row of promotion list
    And 1st row of promotion list should contain "13th Promotion"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item
    When I input "6th Promotion" to search field
    Then I should see apply filter label
    Then I should see 1 row of promotion list
    Then 1st row of promotion list should contain "6th Promotion"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item

    Given I am on Free Shipping Index Page
    When I input "2nd Free Shipping" to search field
    And I should see apply filter label
    Then I should see 1 row of free shipping list
    And 1st row of free shipping list should contain "2nd Free Shipping"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see alert