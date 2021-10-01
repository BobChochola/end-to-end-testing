@BaseCase @Storefront @Admin @Checkout @FastCheckout @fastCheckoutPLP-BuyNow @fixture-shop @fixture-product @fixture-payment @fixture-delivery @fixture-promotion @fixture-paypal-spb-checkout @fixture-mini-fast-checkout @fixture-buynow-checkout @theme-ultra-chic @baseLocation-US
Feature: Fast-Checkout BundlePricing with promotion of freegift - Non-Login

  As a merchant
  I turn ON paypal spb checkout, mini fast checkout
  use paypal checkout to fast checkeout

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

    Given I am on Free Shipping Index Page
    When I input "3rd Free Shipping" to search field
    Then I should see apply filter label
    Then 1st row of free shipping list should contain "3rd Free Shipping"
    Then I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

    Given I am on Bundle Pricing Create Page
    And I fill '(dirty data) Buy 2 for $10' to name field
    And I fill '2' to promotion value field
    And I fill '10' to discounted price field
    When I click on countinue to button
    And I fill '17th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '17th Product for Checkout'

    And I click on 1st checkbox of product list
    When I click on popup confirm button
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on start date field
    Then I should see calendar table
    When I click on 1st available date button
    And I click on done button
    And I click on 3rd countinue to button
    When I click on preview button
    Then discount summary should equal to 'Purchase 2 items of Selected Products for US$10.00'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain '(dirty data) Buy 2 for $10'
    Then 1st row of promotions should contain 'Never expires'

    Given I am on Design Page
    When I click on advanced setting tab
    Then I should see instant add to cart checkbox
    When I click on instant add to cart checkbox
    And I click on current window checkbox
    And I click on buy it now checkbox
    And I click on submit button included "Save"
    And I click on submit button included "Publish"
    Then I should not see publish button
    Then buy it now checkbox should be checked

  @EAT-1274 @EAT-1274-6
  Scenario: Fast-Checkout BundlePricing with promotion of freegift - Non-Login
    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    When I input "17th Product for Checkout" to search field
    Then 1st product of products list should contain '17th Product for Checkout'
    And I hover over 1st product of products list
    When I click on 1st add to cart button
    Then I should see popover
    Then popover product info should contain '17th Product for Checkout'
    And I fill '2' to popover quantity field
    When I click on popover buy now button

    Then I should be redirected to Shop Fast Checkout Page
    When I click on delivery option included 'Custom'
    When I wait for 5 seconds for loading
    And I click on payment option included 'Custom'
    When I wait for 5 seconds for loading
    And I select recipient address dropdown option included 'Singapore' of recipient address dropdown
    And I fill 'tester' to recipient name field
    And I fill '81234567' to recipient phone field
    And I fill address to 1st recipient address field
    And I fill city to 2nd recipient address field
    And I fill '123456' to recipient post code field
    And I fill name to customer name field
    And I fill email to customer email field
    And I click on become member checkbox
    And I click on accept marketing checkbox
    Then delivery fee should contain 'US$0'
    Then payment fee should contain 'US$0'
    Then product list title should contain 'Product List（1）'
    Then 1st row of product should contain '17th Product for Checkout'
    Then subtotal should contain 'Item Subtotal：US$20.00'
    Then subtotal should contain 'Discount Applied：-US$10.00'
    Then promotion section should contain 'Bundle(dirty data) Buy 2 for $10-US$10.00'
    Then promotion section should contain 'Promotion3rd Free Shipping'
    Then total should contain 'Total：US$10.00'
    And agree terms checkbox should be checked
    When I click on place order button
    Then I should be redirected to Shop Order Confirm Layout V Two Page
    When I click on summary collapse
    Then delivery fee should contain "Delivery Fee:US$0"
    Then total should contain "Total:US$10.00"
    Then 1st row of product unit price should contain "US$10.00"
    Then 1st row of product subtotal should contain "US$20.00"
    Then 1st row of product quantity should equal to "2"
    Then 1st row of product items should contain "17th Product for Checkout"
    Then order summary should contain 'Item Subtotal:US$20.00'
    Then order summary should contain 'Discount Applied:-US$10.00'

    And ---ROLL BACK---
    Given I am on Design Page
    When I click on advanced setting tab
    Then I should see instant add to cart checkbox
    When I click on new window checkbox
    And I click on instant add to cart checkbox
    And I click on buy it now checkbox
    And I click on submit button included "Save"
    And I click on submit button included "Publish"
    Then I should not see publish button
    Then buy it now checkbox should not be checked

    Given I am on Free Shipping Index Page
    When I input "3rd Free Shipping" to search field
    Then I should see apply filter label
    Then I should see 1 row of free shipping list
    Then 1st row of free shipping list should contain "3rd Free Shipping"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item

    Given I am on Bundle Pricing Index Page
    Then 1st row of promotions should contain '(dirty data) Buy 2 for $10'
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert