@BaseCase @Storefront @Admin @Checkout @FastCheckout @fastCheckoutPDP-BuyNow @fixture-shop @fixture-product @fixture-payment @fixture-delivery @fixture-promotion @fixture-paypal-spb-checkout @fixture-mini-fast-checkout @fixture-buynow-checkout @theme-ultra-chic @baseLocation-US @smokeTest
Feature: Fast-Checkout Add to cart BundlePricing with promotion of freegift - Non login
  As a merchant
  I turn ON paypal spb checkout, mini fast checkout
  still can use add to cart checkout order

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
    When I input "1st Promotion" to search field
    Then I should see apply filter label
    Then 1st row of promotion list should contain "1st Promotion"
    Then I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

    Given I am on Design Page
    When I click on advanced setting tab
    And I click on buy it now checkbox
    And I click on submit button included "Save"
    And I click on submit button included "Publish"
    Then I should not see publish button
    Then buy it now checkbox should be checked

  @EAT-1274 @EAT-1274-7
  Scenario: Fast-Checkout Add to cart applied promotion  - Non-Login
    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    When I input "15th Product for Checkout" to search field
    Then 1st product of products list should contain '15th Product for Checkout'
    When I click on 1st product of products list

    Then I should be redirected to Shop Product Show Layout V Two Page
    And I fill '1' to product quantity field
    And I click on buy now button

    Then I should be redirected to Shop Fast Checkout Page
    When I click on delivery option included 'Custom'
    When I wait for 5 seconds for loading
    And I click on payment option included 'Custom'
    When I wait for 5 seconds for loading
    And I select recipient address dropdown option included 'Thailand' of recipient address dropdown
    When I wait for 5 seconds for loading
    And I select recipient address dropdown option included 'Bangkok' of 1st recipient address dropdown
    When I wait for 5 seconds for loading
    And I select recipient address dropdown option included 'Samphanthawong' of 2nd recipient address dropdown
    When I wait for 5 seconds for loading
    And I select recipient address dropdown option included 'Chakkrawat' of 3rd recipient address dropdown
    And I fill name to customer name field
    And I fill email to customer email field
    And I fill name to recipient name field
    And I fill phone to recipient phone field
    And I fill city to 1st recipient address field
    And I fill post code to recipient post code field
    Then delivery fee should contain 'US$10.00'
    Then payment fee should contain 'US$0'
    And I fill 'test remark' to order remark field
    Then product list title should contain 'Product List（1）'
    Then 1st row of product should contain '15th Product for Checkout'
    Then subtotal should contain 'Item Subtotal：US$25.00'
    Then subtotal should contain 'Discount Applied：-US$10.00'
    Then subtotal should contain 'Delivery Fee：US$10.00'
    Then promotion section should contain 'Promotion1st Promotion-US$10.00'
    Then total should contain 'Total：US$25.00'
    And agree terms checkbox should be checked
    When I click on place order button
    Then I should be redirected to Shop Order Confirm Layout V Two Page
    Then I should see remarks for shop content
    Then remarks for shop content should contain 'test remark'
    When I click on summary collapse
    Then delivery fee should contain "Delivery Fee:US$10.00"
    Then total should contain "Total:US$25.00"
    Then 1st row of product unit price should contain "US$25.00"
    Then 1st row of product subtotal should contain "US$25.00"
    Then 1st row of product quantity should equal to "1"
    Then 1st row of product items should contain "15th Product for Checkout"
    Then order summary should contain 'Item Subtotal:US$25.00'
    Then order summary should contain 'Discount Applied:-US$10.00'
    Then delivery detail should contain name
    Then delivery detail should contain '0912345***'
    Then delivery detail should contain 'Custom'
    Then delivery detail should contain "Unfulfilled"
    Then payment detail should contain 'Custom'
    Then payment detail should contain 'Unpaid'
    Then payment detail should contain 'testing instruction'
    Then 1st row of customer detail should contain '陳小明'
    Then 2nd row of customer detail should contain '0912345***'
    Then 1st row of order detail should contain order date
    Then 2nd row of order detail should contain 'Pending'

    And ---ROLL BACK---
    Given I am on Promotion Index Page
    When I input "1st Promotion" to search field
    Then I should see apply filter label
    Then I should see 1 row of promotion list
    Then 1st row of promotion list should contain "1st Promotion"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item

    Given I am on Design Page
    When I click on advanced setting tab
    And I click on buy it now checkbox
    And I click on submit button included "Save"
    And I click on submit button included "Publish"
    Then I should not see publish button
    Then buy it now checkbox should not be checked