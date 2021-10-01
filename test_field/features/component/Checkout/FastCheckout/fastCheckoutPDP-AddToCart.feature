@BaseCase @Storefront @Admin @Checkout @FastCheckout @fastCheckoutPDP-AddToCart @fixture-shop @fixture-product @fixture-payment @fixture-delivery @fixture-freegift @fixture-promotion@fixture-paypal-spb-checkout @fixture-mini-fast-checkout @fixture-buynow-checkout @theme-ultra-chic @baseLocation-US
Feature: Fast-Checkout Add to cart BundlePricing with promotion of freegift and send member points - Login at shop home page
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

    Given I am on Bundle Pricing Index Page
    When I select add promotion dropdown option included 'Bundle Group' of add promotion dropdown
    Then I should be redirected to Bundle Group Create Page
    And I fill '(dirty data)(fastcheckout)Buy 1 in Group A & 1 in Group B for US$5.00' to name field
    When I fill '1' to group a field
    When I fill '1' to group b field
    When I fill '5' to price field
    Then discount summary should contain 'Purchase 1 items of Selected Products in Group A and 1 items of Selected Products in Group B for US$5.00'
    And I should see group a tab
    Then select product button should contain 'Select Products in Group A'
    When I click on select product button
    Then I should see select product popup
    Then I input '19th Product for Checkout' to search field
    Then 1st product list should contain '19th Product for Checkout'
    Then I should see checkbox of product list
    Then product list should contain '19th Product for Checkout'
    Then I click on 1st checkbox of product list
    When I click on popup confirm button
    Then selected products should contain '19th Product for Checkout'
    When I click on group b tab
    Then select product button should contain 'Select Products in Group B'
    When I click on select product button
    Then I should see select product popup
    When I input '17th Product for Checkout' to search field
    Then 1st product list should contain '17th Product for Checkout'
    Then I should see checkbox of product list
    Then product list should contain '17th Product for Checkout'
    Then I click on 1st checkbox of product list
    When I click on popup confirm button
    Then selected products should contain '17th Product for Checkout'
    When I click on 1st countinue to button
    When I click on 2nd countinue to button
    Then I should see start date field
    And I click on start date field
    Then I should see calendar table
    When I click on 1st available date button
    And I click on done button
    When I click on 3rd countinue to button
    Then I scroll down to preview button
    When I click on preview button
    Then promotion name should contain '(dirty data)(fastcheckout)Buy 1 in Group A & 1 in Group B for US$5.00'
    When I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain '(dirty data)(fastcheckout)Buy 1 in Group A & 1 in Group B for US$5.00'

    Given I am on Promotion Index Page
    When I input "14th Free Gift Promotion" to search field
    Then I should see apply filter label
    Then I should see row of select checkbox list
    Then 1st row of promotion list should contain "14th Free Gift Promotion"
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

    Given I am on Member Points Setting Page
    When I check and click member point toggle off
    When I fill '10' to amount field
    And I fill '1' to point field
    And I fill '0' to point assign day field
    And I select month dropdown option included 'December' of month dropdown
    And I select date dropdown option included '31' of date dropdown
    And I fill 'member point' to point rule field
    And I click on update button
    Then I should see alert

  @EAT-1274 @EAT-1274-5
  Scenario: Fast-Checkout Add to cart BundlePricing with promotion of freegift and send member points - Login at shop home page
    Given I am on Shop Home Layout V Two Page
    When I click on member center button
    Then I should be redirected to Shop Login Layout V Two Page
    Then I click on switch sign up tab
    When I fill new account email to signup email field
    And I fill new account password to signup password field
    And I fill name to signup name field
    And I click on agree terms checkbox
    And I click on submit button
    Then I should be redirected to Sign Up Confirmation Page
    Then I should be redirected to Shop Home Layout V Two Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'

    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    When I input "17th Product for Checkout" to search field
    Then 1st product of products list should contain '17th Product for Checkout'
    When I click on 1st product of products list

    Then I should be redirected to Shop Product Show Layout V Two Page
    And I fill '2' to product quantity field
    And I click on addon checkbox
    And I click on buy together button
    Then I hover over cart panel
    Then 1st cart panel item list should contain '17th Product for Checkout'
    Then 1st cart panel price list should contain '2x US$10.00'
    Then 2nd cart panel item list should contain '3rd Addon for Checkout'
    Then 2nd cart panel price list should contain '1x US$10.00'
    Then I should see 2 cart panel image list

    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    When I input "19th Product for Checkout" to search field
    Then 1st product of products list should contain '19th Product for Checkout'
    When I click on 1st product of products list

    Then I should be redirected to Shop Product Show Layout V Two Page
    And I click on add to cart button
    And I hover over cart panel
    Then 1st cart panel item list should contain '17th Product for Checkout'
    Then 1st cart panel price list should contain '2x US$10.00'
    Then 2nd cart panel item list should contain '3rd Addon for Checkout'
    Then 2nd cart panel price list should contain '1x US$10.00'
    Then 3rd cart panel item list should contain '19th Product for Checkout'
    Then 3rd cart panel price list should contain '1x US$1.00'
    Then I should see 3 cart panel image list
    And I click on checkout button

    Then I should be redirected to Shop Fast Checkout Page
    Then customer name field should contain name
    Then customer email field should contain new account email
    When I click on delivery option included 'Custom'
    When I wait for 5 seconds for loading
    And I click on payment option included 'Custom'
    When I wait for 5 seconds for loading
    And I select recipient address dropdown option included 'Malaysia' of recipient address dropdown
    When I wait for 5 seconds for loading
    And I fill name to recipient name field
    And I fill phone to recipient phone field
    And I fill city to 1st recipient address field
    And I fill address to 2nd recipient address field
    And I select recipient address dropdown option included 'Wp Putrajaya' of 1st recipient address dropdown
    When I wait for 5 seconds for loading
    And I select recipient address dropdown option included 'Putrajaya' of 2nd recipient address dropdown
    When I wait for 5 seconds for loading
    And I fill post code to recipient post code field
    Then delivery fee should contain 'US$10.00'

    Then payment fee should contain 'US$0'
    Then product list title should contain 'Product List（5）'
    Then 1st row of product should contain '17th Product for Checkout'
    Then 2nd row of product should contain '3rd Addon for Checkout'
    Then 3rd row of product should contain '19th Product for Checkout'
    Then 4th row of product should contain '17th Product for Checkout'
    Then 5th row of product should contain '1st Created Free Gift'
    Then subtotal should contain 'Item Subtotal：US$31.00'
    Then subtotal should contain 'Discount Applied：-US$6.00'
    Then subtotal should contain 'Delivery Fee：US$10.00'
    Then promotion section should contain 'Bundle Group(dirty data)(fastcheckout)Buy 1 in Group A & 1 in Group B for US$5.00-US$6.00'
    Then promotion section should contain 'Promotion14th Free Gift Promotion'
    Then total should contain 'Total：US$35.00'
    Then agree terms checkbox should be checked
    When I click on place order button
    Then I should be redirected to Shop Order Confirm Layout V Two Page
    When I click on summary collapse
    Then 1st row of product unit price should contain "US$10.00"
    Then 1st row of product subtotal should contain "US$10.00"
    Then 1st row of product quantity should equal to "1"
    Then 1st row of product items should contain "17th Product for Checkout"
    Then 2nd row of product unit price should contain "US$10.00"
    Then 2nd row of product subtotal should contain "US$10.00"
    Then 2nd row of product quantity should equal to "1"
    Then 2nd row of product items should contain "3rd Addon for Checkout"
    Then 3rd row of product unit price should contain "US$1.00"
    Then 3rd row of product subtotal should contain "US$1.00"
    Then 3rd row of product quantity should equal to "1"
    Then 3rd row of product items should contain "19th Product for Checkout"
    Then 4th row of product unit price should contain "US$10.00"
    Then 4th row of product subtotal should contain "US$10.00"
    Then 4th row of product quantity should equal to "1"
    Then 4th row of product items should contain "17th Product for Checkout"
    Then order summary should contain 'Item Subtotal:US$31.00'
    Then order summary should contain 'Discount Applied:-US$6.00'
    Then delivery fee should contain 'US$10.00'
    Then total should contain 'US$35.00'
    Then order summary should contain '+2 point(s)'

    And ---ROLL BACK---
    Given I am on Promotion Index Page
    When I input "14th Free Gift Promotion" to search field
    Then I should see apply filter label
    Then I should see row of select checkbox list
    Then 1st row of promotion list should contain "14th Free Gift Promotion"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item

    Given I am on Bundle Pricing Index Page
    And I click on tab included 'Bundle Group Pricing'
    Then I click on 1st row of select checkbox list
    When I select delete of bulk actions dropdown
    Then I should see confirmation popover
    Then I click on delete checkbox
    When I click on confirm delete button
    Then promotions should contain 'No promotions yet'

    Given I am on Member Points Setting Page
    When I fill '1' to amount field
    And I fill '0' to point field
    And I fill '0' to point assign day field
    And I fill '' to point rule field
    When I click on member point toggle
    And I click on update button
    Then I should see alert

    Given I am on Customer List Page
    When I click on 1st row of select checkbox
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button