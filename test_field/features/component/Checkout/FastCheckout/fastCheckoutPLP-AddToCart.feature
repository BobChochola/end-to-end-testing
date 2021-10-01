@BaseCase @Storefront @Admin @Checkout @FastCheckout @fastCheckoutPLP-AddToCart @fixture-shop @fixture-product @fixture-payment @fixture-delivery @fixture-promotion @fixture-paypal-spb-checkout @fixture-mini-fast-checkout @fixture-buynow-checkout @theme-ultra-chic @baseLocation-US
Feature: Fast-Checkout Add to cart tax setting and credit - Login at fast checkout page
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

    Given I am on Customer List Page
    When I input email to search field
    Then I should see view button
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    When I click on assign credits button
    Then I should see popover
    When I fill "20" to amount of credit field
    And I click on never expires button
    And I fill "Testing amount of credits" to reason field
    And I click on credit save button
    Then I should see row of credit list

    Given I am on Promotion Create Page
    And I fill "(dirty data)invalid payment/delivery coupon" to name field
    And I fill "20" to promotion value field
    Then I should see countinue to button
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on apply method checkbox included 'codes'
    Then I should see coupon code field
    And I fill "invalidCoupon" to coupon code field
    And I click on 3rd countinue to button
    And I check delivery options checkbox and click all of them
    And I click on payment options checkbox included 'Custom'
    And I click on preview button
    Then I should see confirm button
    And I click on confirm button
    Then I should be redirected to Promotion Index Page
    When I input "7th Promotion" to search field
    Then I should see apply filter label
    Then I should see row of select checkbox list
    Then 1st row of promotion list should contain "7th Promotion"
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

    Given I am on Taxes Setting Page
    When I click on add region button
    Then I should see tax area popover
    When I click on country item included 'Hong Kong'
    When I click edit button for the same order of row of country list included 'Hong Kong'
    Then I should be redirected to Taxes Setting Edit Page
    Then auto tax rates toggle should not be checked
    And I fill 'Hong Kong tax' to tax name field
    And I fill '10' to tax rate field
    Then I click on update button
    Then I should see alert
    Then I should be redirected to Taxes Setting Page
    When I check and click all shop need tax toggle off
    Then I should see popover
    Then popover should contain 'Apply tax to all shop products'
    Then I click on confirm button
    Then all shop need tax toggle should be checked

    Given I am on Design Page
    When I click on advanced setting tab
    Then I should see instant add to cart checkbox
    When I click on instant add to cart checkbox
    And I click on current window checkbox
    And I click on save button
    And I click on publish button
    Then I should not see publish button

  @EAT-1274 @EAT-1274-4
  Scenario: Fast-Checkout Add to cart tax setting and credit - Login at fast checkout page
    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    When I input "17th Product for Checkout" to search field
    Then 1st product of products list should contain '17th Product for Checkout'
    And I hover over 1st product of products list
    When I click on 1st add to cart button
    Then I should see popover
    Then popover product info should contain '17th Product for Checkout'
    And I fill '4' to popover quantity field
    When I click on popover add to cart button
    And I hover over cart panel
    Then cart panel item list should contain '17th Product for Checkout'
    Then cart panel price list should contain '4x US$10.00'
    Then I should see 1 cart panel image list
    And I click on checkout button

    Then I should be redirected to Shop Fast Checkout Page
    When I click on login button

    Then I should be redirected to Shop Login Layout V Two Page
    And I fill email to email field
    And I fill password to password field 
    When I click on submit button

    Then I should be redirected to Shop Fast Checkout Page
    When I click on delivery option included 'Custom Delivery'
    When I click on paypal checkbox
    When I fill 'invalidCoupon' to coupon field
    When I click on coupon validate button
    Then I should see coupon error message
    And coupon error message should contain 'Coupon invalidCoupon is not valid for this delivery method'
    When I click on payment option included 'Custom'
    When I wait for 5 seconds for loading
    When I fill 'invalidCoupon' to coupon field
    When I click on coupon validate button
    Then I should see coupon error message
    And coupon error message should contain 'Coupon invalidCoupon is not valid for this payment method'
    When I input 'SelectedProduct' to coupon field
    Then I should see coupon error message
    And coupon error message should contain 'No valid product for Coupon SelectedProduct is found'

    Then customer name field should contain name
    Then customer email field should contain email
    When I click on delivery option included 'Custom'
    When I wait for 5 seconds for loading
    And I select recipient address dropdown option included 'Hong Kong' of recipient address dropdown
    When I wait for 5 seconds for loading
    And I select recipient address dropdown option included 'Hong Kong Island' of 2nd recipient address dropdown
    When I wait for 5 seconds for loading
    And I select recipient address dropdown option included 'Central and Western' of 3rd recipient address dropdown
    When I wait for 5 seconds for loading
    And I select recipient address dropdown option included 'The Peak' of 4th recipient address dropdown
    And I fill name to recipient name field
    And I fill phone to recipient phone field
    And I fill address to recipient address field
    Then delivery fee should contain 'US$10.00'
    And I click on save address checkbox
    Then payment fee should contain 'US$0'
    Then product list title should contain 'Product List（1）'
    Then row of product should contain '17th Product for Checkout'
    Then subtotal should contain 'Item Subtotal：US$40.00'
    Then subtotal should contain 'Tax fee：US$4.00'
    Then subtotal should contain 'Applied Store Credit：-US$20.00'
    Then subtotal should contain 'Delivery Fee：US$10.00'
    Then total should contain 'Total：US$34.00'
    Then agree terms checkbox should be checked
    When I click on place order button

    Then I should be redirected to Shop Order Confirm Layout V Two Page
    And I click on summary collapse
    Then 1st row of product unit price should contain "US$10.00"
    Then 1st row of product subtotal should contain "US$40.00"
    Then 1st row of product quantity should equal to "4"
    Then 1st row of product items should contain "17th Product for Checkout"
    Then item subtotal should contain 'Item Subtotal:'
    Then item subtotal should contain 'US$40.00'
    Then order summary should contain 'Applied Store Credits:-US$20.00'
    Then order summary should contain 'Tax feeUS$4.00'
    Then order summary should contain 'Delivery Fee:US$10.0'
    Then total should contain 'US$34.00'
    And ---ROLL BACK---
    And ---I NEED TO ROLLBACK store credit---
    Given I am on Taxes Setting Page
    Then I check and click all shop need tax toggle on
    Then all shop need tax toggle should not be checked
    And I click remove button for the same order of row of country list included 'Hong Kong'
    Then I should see popover
    Then I click on remove area checkbox
    Then I click on remove confirm button

    Given I am on Design Page
    When I click on advanced setting tab
    Then I should see instant add to cart checkbox
    When I click on new window checkbox
    And I click on instant add to cart checkbox
    And I click on submit button included "Save"
    And I click on submit button included "Publish"
    Then I should not see publish button

    Given I am on Promotion Index Page
    When I input "7th Promotion" to search field
    Then I should see apply filter label
    Then I should see row of select checkbox list
    Then 1st row of promotion list should contain "7th Promotion"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item
    When I input "(dirty data)invalid payment/delivery coupon" to search field
    Then I should see apply filter label
    Then I should see row of select checkbox list
    Then 1st row of promotion list should contain "(dirty data)invalid payment/delivery coupon"
    And I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    Then I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert