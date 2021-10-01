@BaseCase @Admin @Storefront @Promotion @FreeGift @CouponCode @conflictBetweenPromotionLanguage
@fixture-payment @fixture-delivery @fixture-product @fixture-promotion @fixture-shop @fixture-multi-lang-ja @fixture-multi-lang-ms @fixture-multi-lang-vi
Feature: Cannot checkout because promotion crush if shop supporting language includes VN/JP/MY
  As a merchant
  I want to create different promotions
  and turn on language VN/JP/MY
  So that I cannot checkout

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

    Given I am on Basic Setting Page
    Then 1st supported shop languages title should contain 'English'
    Then 2nd supported shop languages title should contain 'Traditional Chinese'
    Then 3rd supported shop languages title should contain 'Vietnamese'
    Then 4th supported shop languages title should contain 'Bahasa Malaysia'
    Then 5th supported shop languages title should contain 'Japanese'

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

  @EAT-733
  Scenario: Cannot checkout because promotion crush if shop supporting language includes VN/JP/MY
    Given I am on Promotion Create Page
    And I fill "(dirty data) specific product get free gift" to name field
    And I click on selected products condition checkbox
    And I select minimum amount of condition type dropdown
    When I select free gift of benefit type dropdown
    And I click on select button
    Then I should see select product popup
    Then I scroll down to benefit type dropdown
    And I click checkbox of product list for the same order of product of popover list included '1st Created Free Gift'
    And I click on popup confirm button
    Then I fill "2" to 1st promotion value field
    And I fill "10" to 1st promotion condition field
    When I click on add tier button
    Then I should see 2 promotion value field
    Then I fill "3" to 2nd promotion value field
    And I fill "30" to 2nd promotion condition field
    And I click on 2nd select button
    Then I should see select product popup
    And I click checkbox of product list for the same order of product of popover list included '1st Created Free Gift'
    And I click on popup confirm button
    When I click on add tier button
    Then I should see 3 promotion value field
    Then I fill "5" to 3rd promotion value field
    And I fill "50" to 3rd promotion condition field
    And I click on 3rd select button
    Then I should see select product popup
    And I click checkbox of product list for the same order of product of popover list included '1st Created Free Gift'
    And I click on popup confirm button
    When I fill "7th Product for Checkout" to search field
    Then I click on search button
    And I should see select product popup
    Then 1st product of popover list should contain '7th Product for Checkout'
    And I click on 1st checkbox of product list
    Then I click on popup confirm button
    And I click on countinue to button
    And I click on 2nd countinue to button
    Then I click on never expires checkbox
    And I click on end date field
    Then I should see calendar table
    When I click on 3rd available date button
    And I click on done button
    Then I click on unlimited checkbox
    And I fill "5" to times of use field
    And I click on 3rd countinue to button
    And I click on preview button
    Then total usage limit should equal to "5 time(s)"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Get 2 Free Gift(s) (1st Created Free Gift) on Selected Products with purchase of Selected Products over NT$10"
    Then discount summary should contain "Get 3 Free Gift(s) (1st Created Free Gift) on Selected Products with purchase of Selected Products over NT$30"
    Then discount summary should contain "Get 5 Free Gift(s) (1st Created Free Gift) on Selected Products with purchase of Selected Products over NT$50"
    And selected product list should contain "7th Product for Checkout"
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page

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
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on apply coupon code button
    Then I should see coupon code field
    When I input "AmountDiscount" to coupon code field
    Then promotion description should contain "Buy 3 for $99"
    Then promotion description should contain "6th Promotion - Selected Products: Get NT$50 off over 2 items"
    Then promotion description should contain "13th Promotion"
    Then promotion description should contain "specific product get free gift - Selected Products: Get 5 Free Gift(s) (1st Created Free Gift) over NT$50"
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
    And ---ROLL BACK---
    Given I am on Bundle Pricing Index Page
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

    Given I am on Promotion Index Page
    And I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    Then I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

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