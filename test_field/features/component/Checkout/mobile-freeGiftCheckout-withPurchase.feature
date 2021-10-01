@BaseCase @Admin @Storefront @FreeGift @Checkout @CouponCode @mobile-freeGiftCheckout-withPurchase
@fixture-mobile-signup-p2 @fixture-shop @fixture-product @fixture-delivery @fixture-payment @fixture-promotion
Feature: Mobile member Checkout - Shop Checkout use coupon with three free gifts product
  As a merchant
  I want to publish free gifts product promotion
  So that member customers can buy my product along with free gift and free shipping

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

    Given I am on Promotion Index Page
    When I input "15th Free Gift Promotion" to search field
    Then 1st row of promotion list should contain "15th Free Gift Promotion"
    Then I should see apply filter label
    Then I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

    Given I am on Free Shipping Index Page
    When I input "2nd Free Shipping" to search field
    Then 1st row of free shipping list should contain "2nd Free Shipping"
    And I wait for 5 seconds for data show
    Then I should see apply filter label
    Then I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

    Given I am on Shop Home Page
    When I click on sign in button
    Then I should be redirected to Shop Login Page
    And I fill test phone to email field
    And I fill password to password field
    And I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'

  Scenario: After create free gifts product and promotin, checkout product freeshippng and get free gifts
    Given I am on Shop Product Index Page
    When I input "8th Product for Checkout" to search field
    Then 1st product of products list should contain "8th Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I select dropdown option included "Red" of variation dropdown
    Then I should see product quantity field
    When I fill "3" to product quantity field
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "7-11 Pickup and pay in store (B2C)" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Pay on 7-11 Store Pickup (B2C)" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on apply coupon code button
    Then I should see coupon code field
    And I input "freegiftgo" to coupon code field
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I click on pick store button
    Then I should be redirected to Seven Pick Store Page
    When I click on id search button
    And I switch to main frame frame
    Then I should see store id field
    And I fill store id to store id field
    And I click on search button
    And I click on 1st store list
    When I switch to default frame
    Then I should see store confirm button
    And I click on store confirm button
    And I click on agree button
    And I click on submit button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then 1st row of product unit price should contain "NT$30"
    Then 1st row of product quantity should equal to "3"
    Then 1st row of product items should contain "8th Product for Checkout"
    Then 2nd row of product unit price should contain "NT$0"
    Then 2nd row of product quantity should equal to "3"
    Then 2nd row of product items should contain "1st Created Free Gift"
    Then item subtotal should contain "NT$90"
    Then delivery fee should contain "NT$0"
    Then discount applied should contain "2nd Free Shipping"
    Then total should contain "NT$90"
    Then discount applied should contain "15th Free Gift Promotion"
    And ---ROLL BACK---
    Given I am on Promotion Index Page
    When I input "15th Free Gift Promotion" to search field
    Then I should see apply filter label
    Then 1st row of promotion list should contain "15th Free Gift Promotion"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item
    Given I am on Free Shipping Index Page
    When I input "2nd Free Shipping" to search field
    And I wait for 5 seconds for data show
    Then I should see apply filter label
    Then 1st row of free shipping list should contain "2nd Free Shipping"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item