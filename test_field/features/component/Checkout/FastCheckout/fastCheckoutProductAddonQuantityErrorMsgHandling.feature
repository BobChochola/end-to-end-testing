@BaseCase @Storefront @Admin @Checkout @FastCheckout @fastCheckoutProductAddonQuantityErrorMsgHandling 
@baseLocation-US @theme-ultra-chic @fixture-payment @fixture-delivery @fixture-product @fixture-paypal-spb-checkout @fixture-mini-fast-checkout @fixture-buynow-checkout @fixture-shop
Feature: Fast checkout error handling - product unavaiable quantiy
  As a customer
  I should see the error msg when quantity of product sold out

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

  @EAT-1274 @EAT-1274-10
  Scenario: Fast checkout error handling - product unavaiable quantiy
    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    When I input "17th Product for Checkout" to search field
    Then 1st product of products list should contain '17th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    And I fill '1000' to product quantity field
    And I click on addon checkbox
    When I scroll down the page till the bottom
    Then I hover over sticky add to cart button
    And I click on sticky add to cart button
    Then I should see cart panel
    And I click on checkout button
    Then I should be redirected to Shop Fast Checkout Page
    When I switch to 2 of tabs

    Given I am on Inventory Page
    And I input "17th Product for Checkout" to search field
    Then I should see row of product list
    Then 1st row of product list should contain "17th Product for Checkout"
    Then I should see apply search label
    When I click on 1st row of select checkbox list
    When I select bulk action dropdown options included 'Update Inventory' of bulk action dropdown
    Then I should see bulk set button
    And I click on bulk set button
    And I fill "0" to bulk quantity field
    And I click on bulk save button
    Then 1st row of product list should contain "0"

    When I switch to 1 of tabs
    Then I should be redirected to Shop Fast Checkout Page
    When I click on delivery option included 'Custom'
    When I wait for 5 seconds for loading
    When I click on payment option included 'Custom'
    When I wait for 5 seconds for loading
    And I select recipient address dropdown option included 'United States' of recipient address dropdown
    When I wait for 5 seconds for loading
    And I select recipient address dropdown option included "New York" of 2nd recipient address dropdown    
    And I fill name to customer name field
    And I fill email to customer email field
    And I click on become member checkbox
    And I click on accept marketing checkbox
    And I fill name to recipient name field
    And I fill '2015551234' to recipient phone field
    And I fill address to recipient address field
    And I fill city to 2nd recipient address field
    And I fill city to recipient city field
    And I fill '10001' to recipient post code field
    When I scroll down to place order button
    When I click on place order button
    Then I should see error alert
    Then error alert should contain 'There is at least one unavailable product in the shopping cart. Please adjust the cart items to checkout, or try to refresh page.'
    When I switch to 2 of tabs
    Then I should be redirected to Inventory Page
    When I click on 1st row of select checkbox list
    When I select bulk action dropdown options included 'Update Inventory' of bulk action dropdown
    Then I should see bulk set button
    And I click on bulk set button
    And I fill "9999" to bulk quantity field
    And I click on bulk save button
    Then 1st row of product list should contain "9999"
    When I click on tab included 'Add-on Item'
    Then I should see row of product list
    When I click row of select checkbox list for the same order of row of product list included '3rd Addon for Checkout'
    When I select bulk action dropdown options included 'Update Inventory' of bulk action dropdown
    Then I should see bulk set button
    And I click on bulk set button
    And I fill "0" to bulk quantity field
    And I click on bulk save button
    Then row of product list included '3rd Addon for Checkout' and same order of row of product list should also contain '0'
    When I switch to 1 of tabs
    Then I should be redirected to Shop Fast Checkout Page
    When I click on place order button
    Then I should see error alert
    Then error alert should contain 'There is at least one unavailable product in the shopping cart. Please adjust the cart items to checkout, or try to refresh page.'

    And ---ROLL BACK---
    When I switch to 2 of tabs
    Then I should be redirected to Inventory Page
    When I click row of select checkbox list for the same order of row of product list included '3rd Addon for Checkout'
    And I select update inventory of bulk action dropdown
    Then I should see bulk set button
    And I click on bulk set button
    And I fill "9999" to bulk quantity field
    And I click on bulk save button
    Then row of product list included '3rd Addon for Checkout' and same order of row of product list should also contain '9999'