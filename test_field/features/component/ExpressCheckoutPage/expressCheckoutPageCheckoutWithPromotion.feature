@BaseCase @Admin @Storefront @ExpressCheckoutPage @CouponCode @expressCheckoutPageCheckoutWithPromotion
@fixture-payment @fixture-delivery @fixture-product @fixture-promotion @fixture-shop
Feature: Checkout express checkout page
  As a guest
  I want to checkout in express checkout page

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
    
    Given I am on Promotion Index Page
    When I input "7th Promotion" to search field
    Then I should see apply filter label
    Then 1st row of promotion list should contain "7th Promotion"
    Then I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert
    Given I am on Free Shipping Index Page
    When I input "3rd Free Shipping" to search field
    Then I should see apply filter label
    Then 1st row of free shipping list should contain "3rd Free Shipping"
    Then I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

  @C3857
  Scenario: Create new express checkout page and checkout
    Given I am on Express Checkout Pages Page
    When I click on create button
    Then I should be redirected to Express Checkout Builder Page
    Then I click on skip the guide button
    Then I should see product picker
    And I input "10th Product for Checkout" to search field
    And I click on search button
    Then 1st product of product list should contain '10th Product for Checkout'
    And I click on 1st product of product list
    And I click on popup save button
    Then I should be on Express Checkout Builder Page
    When I click on side menu button
    Then I should see page seo button
    When I click on page seo button included "Page Title"
    Then I should see page en title field
    When I fill "testing" to page en title field
    And I click on close side menu
    Then I should see save page button
    When I click on save page button
    Then I should see view page button
    And I click on view page button
    And I switch to 2 of tabs
    Then I should be on Shop Express Checkout Page
    Then I Refresh
    When I select option included "Red" of first option dropdown
    And I select option included "M" of second option dropdown
    And I click on add quantity button
    And I wait for 3 seconds for loading
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "7-11 Pickup and pay in store (B2C)" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Pay on 7-11 Store Pickup (B2C)" of payment method dropdown
    And I scroll down to apply coupon code button
    And I click on apply coupon code button
    Then I should see coupon code field
    And I input "SelectedProduct" to coupon code field
    And I wait for 3 seconds for loading
    Then coupon error message should contain 'No valid product for Coupon SelectedProduct is found'
    When I click on buy now button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
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
    When I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then 1st row of product unit price should contain "NT$25"
    Then 1st row of product quantity should equal to "2"
    Then 1st row of product items should contain "10th Product for Checkout"
    Then item subtotal should contain "NT$50"
    Then delivery fee should contain "NT$0"
    Then total should contain "NT$50"
    And ---ROLL BACK---
    Given I am on Express Checkout Pages Page
    When I click on delete button
    Then I should see popup
    And I click on reconfirm checkbox
    When I click on ok button
    Then I should not see popup
    Given I am on Promotion Index Page
    When I input "7th Promotion" to search field
    Then I should see apply filter label
    Then I should see 1 row of promotion list
    Then 1st row of promotion list should contain "7th Promotion"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item
    Given I am on Free Shipping Index Page
    When I input "3rd Free Shipping" to search field
    Then I should see apply filter label
    Then I should see 1 row of free shipping list
    Then 1st row of free shipping list should contain "3rd Free Shipping"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item