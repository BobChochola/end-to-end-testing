@OneBaseCase @Order @Admin @Storefront @oneOrderEditWithLimitedProduct @fixture-sl-pos @fixture-sl-pos-admin @fixture-integration-one @fixture-product @fixture-shop @fixture-payment @fixture-delivery @theme-ultra-chic
Feature: Check order edit and one quantity would sync (limited)
  As a merchant
    Order edit and the product quantity would sync in one

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

    Given I am on Basic Setting Page
    And I mark the value of shop name field as variable shop name

    Given I am on Inventory Page
    And I input "1st Product for Checkout" to search field
    Then I should see row of product list
    Then 1st row of product list should contain "1st Product for Checkout"
    And I click on 1st set button
    And I fill "1000" to 1st row of quantity field
    And I scroll down to tab
    And I click on save button
    Then I Refresh
    Then 1st row of product list should contain "1000"
    Given I am on Inventory Page
    And I input "10th Product for Checkout" to search field
    Then 1st row of product list should contain "10th Product for Checkout"
    When I click on 1st row of select checkbox list
    And I select update inventory of bulk action dropdown
    Then I should see bulk set button
    And I click on bulk set button
    And I fill "1000" to bulk quantity field
    And I click on bulk save button
    Then I Refresh
    Then 1st row of product list should contain "1000"

    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    When I input "3rd Product for Checkout" to search field
    Then 1st product of products list should contain '3rd Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Layout V Two Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "(DBW) - LocalDelivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Layout V Two Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill address to delivery address field
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Layout V Two Page
    Then I wait for 10 seconds for order created

  @EAT-812 @EAT-812-1
  Scenario: Check order edit and one quantity would sync
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    And I click on add product button
    Then I should see product of product list
    And I input "1st Product for Checkout" to search field
    Then I should see product of product list
    And I click on product of product list included '1st Product for Checkout'
    And I click on popup save button
    Then I should see 2 product quantity field
    Then I should see 2 product quantity reminder
    When I fill '5' to 2nd product quantity field
    Then 2nd product quantity reminder should contain "1000 items left (including quantity of this order)"
    And I click on add product button
    Then I should see product of product list
    And I input "10th Product for Checkout" to search field
    Then I should see product of product list
    And I click on product of product list included '10th Product for Checkout'
    And I click on popup save button
    When I click on color dropdown option included 'Blue'
    When I click on color dropdown option included 'M'
    Then I should see 3 product quantity field
    Then I should see 3 product quantity reminder
    When I fill '10' to 3rd product quantity field
    Then 3rd product quantity reminder should contain "1000 items left (including quantity of this order)"
    And I click on product details save button
    Then I should see confirm popover
    And I click on yes button
    Then I wait for 30 seconds for quantity sync

    Given I am on One Product Index Page
    When I input '1st Product for Checkout' to search field
    Then product list included '1st Product for Checkout' and same order of variants quantity should also equal to '0'
    Then product list included '1st Product for Checkout' and same order of stock quantity should also contain '1000'
    Then product list included '1st Product for Checkout' and same order of pend to deliver quantity should also contain '5'
    Then product list included '1st Product for Checkout' and same order of available quantity should also contain '995'
    Then I click manage button for the same order of product list included '1st Product for Checkout'
    Then I should be redirected to One Product Manage Page
    Then sales channel should contain shop name
    Then I should see 1 publish status
    Then I should see 1 product type
    Then 1st sales channel should contain shop name
    Then 1st variant should equal to '-'
    Then 1st sales channel warehouse should contain 'Primary'
    Then 1st sales channel available quantity should equal to '995'
    When I click on inventory tab
    Then 1st inventory warehouse should contain 'Primary'
    Then 1st inventory stock quantity should equal to '1000'
    Then 1st inventory pend to deliver quantity should equal to '5'
    Then 1st inventory available quantity should equal to '995'
    Given I am on One Product Index Page
    When I input '10th Product for Checkout' to search field
    Then product list included '10th Product for Checkout' and same order of variants quantity should also contain '4'
    Then product list included '10th Product for Checkout' and same order of stock quantity should also contain '4000'
    Then product list included '10th Product for Checkout' and same order of pend to deliver quantity should also contain '10'
    Then product list included '10th Product for Checkout' and same order of available quantity should also contain '3990'
    Then I click manage button for the same order of product list included '10th Product for Checkout'
    Then I should be redirected to One Product Manage Page
    Then sales channel should contain shop name
    Then I should see 4 publish status
    Then I should see 4 variant
    Then I should see 4 product type
    Then 1st sales channel should contain shop name
    Then 2nd sales channel should contain shop name
    Then 3rd sales channel should contain shop name
    Then 4th sales channel should contain shop name
    Then variant included 'Blue, S' and same order of sales channel warehouse should also contain "Primary"
    Then variant included 'Blue, M' and same order of sales channel warehouse should also contain "Primary"
    Then variant included 'Red, S' and same order of sales channel warehouse should also contain "Primary"
    Then variant included 'Red, M' and same order of sales channel warehouse should also contain "Primary"
    Then variant included 'Blue, S' and same order of sales channel available quantity should also contain "1000"
    Then variant included 'Blue, M' and same order of sales channel available quantity should also contain "990"
    Then variant included 'Red, S' and same order of sales channel available quantity should also contain "1000"
    Then variant included 'Red, M' and same order of sales channel available quantity should also contain "1000"
    When I click on inventory tab
    Then inventory row of variant dropdown included 'Blue, S' and same order of primary inventory stock quantity should also equal to '1000'
    Then inventory row of variant dropdown included 'Blue, S' and same order of primary inventory pend to deliver quantity should also equal to '0'
    Then inventory row of variant dropdown included 'Blue, S' and same order of primary inventory available quantity should also equal to '1000'
    Then inventory row of variant dropdown included 'Blue, M' and same order of primary inventory stock quantity should also equal to '1000'
    Then inventory row of variant dropdown included 'Blue, M' and same order of primary inventory pend to deliver quantity should also equal to '10'
    Then inventory row of variant dropdown included 'Blue, M' and same order of primary inventory available quantity should also equal to '990'
    Then inventory row of variant dropdown included 'Red, S' and same order of primary inventory stock quantity should also equal to '1000'
    Then inventory row of variant dropdown included 'Red, S' and same order of primary inventory pend to deliver quantity should also equal to '0'
    Then inventory row of variant dropdown included 'Red, S' and same order of primary inventory available quantity should also equal to '1000'
    Then inventory row of variant dropdown included 'Red, M' and same order of primary inventory stock quantity should also equal to '1000'
    Then inventory row of variant dropdown included 'Red, M' and same order of primary inventory pend to deliver quantity should also equal to '0'
    Then inventory row of variant dropdown included 'Red, M' and same order of primary inventory available quantity should also equal to '1000'
    # Then 1st inventory warehouse should contain 'Primary'
    # Then 1st inventory row of variant dropdown should contain 'Blue, S'
    # Then 1st inventory stock quantity should equal to '1000'
    # Then 1st inventory pend to deliver quantity should equal to '0'
    # Then 1st inventory available quantity should equal to '1000'
    # Then 2nd inventory warehouse should contain 'Primary'
    # Then 2nd inventory row of variant dropdown should contain 'Blue, M'
    # Then 2nd inventory stock quantity should equal to '1000'
    # Then 2nd inventory pend to deliver quantity should equal to '10'
    # Then 2nd inventory available quantity should equal to '990'
    # Then 3rd inventory warehouse should contain 'Primary'
    # Then 3rd inventory row of variant dropdown should contain 'Red, S'
    # Then 3rd inventory stock quantity should equal to '1000'
    # Then 3rd inventory pend to deliver quantity should equal to '0'
    # Then 3rd inventory available quantity should equal to '1000'
    # Then 4th inventory warehouse should contain 'Primary'
    # Then 4th inventory row of variant dropdown should contain 'Red, M'
    # Then 4th inventory stock quantity should equal to '1000'
    # Then 4th inventory pend to deliver quantity should equal to '0'
    # Then 4th inventory available quantity should equal to '1000'

    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    Then I should see 3 product quantity field
    When I click on 3rd delete product button
    And I should see delete product ok button
    And I click on 3rd delete product ok button
    Then I should see 2 product quantity field
    When I click on 2nd delete product button
    And I should see delete product ok button
    And I click on 2nd delete product ok button
    Then I should see 1 product quantity field
    And I click on product details save button
    Then I should see confirm popover
    And I click on yes button
    And I should see alert

    Then I wait for 10 seconds for quantity sync
    Given I am on One Product Index Page
    When I input '1st Product for Checkout' to search field
    Then product list included '1st Product for Checkout' and same order of variants quantity should also equal to '0'
    Then product list included '1st Product for Checkout' and same order of stock quantity should also contain '1000'
    Then product list included '1st Product for Checkout' and same order of pend to deliver quantity should also equal to '0'
    Then product list included '1st Product for Checkout' and same order of available quantity should also contain '1000'
    Then I click manage button for the same order of product list included '1st Product for Checkout'
    Then I should be redirected to One Product Manage Page
    Then sales channel should contain shop name
    Then I should see 1 publish status
    Then I should see 1 product type
    Then 1st sales channel should contain shop name
    Then 1st variant should equal to '-'
    Then 1st sales channel warehouse should contain 'Primary'
    Then 1st sales channel available quantity should equal to '1000'
    When I click on inventory tab
    Then 1st inventory warehouse should contain 'Primary'
    Then 1st inventory stock quantity should equal to '1000'
    Then 1st inventory pend to deliver quantity should equal to '0'
    Then 1st inventory available quantity should equal to '1000'
    Given I am on One Product Index Page
    When I input '10th Product for Checkout' to search field
    Then product list included '10th Product for Checkout' and same order of variants quantity should also contain '4'
    Then product list included '10th Product for Checkout' and same order of stock quantity should also contain '4000'
    Then product list included '10th Product for Checkout' and same order of pend to deliver quantity should also equal to '0'
    Then product list included '10th Product for Checkout' and same order of available quantity should also contain '4000'
    Then I click manage button for the same order of product list included '10th Product for Checkout'
    Then I should be redirected to One Product Manage Page
    Then sales channel should contain shop name
    Then I should see 4 publish status
    Then I should see 4 variant
    Then I should see 4 product type
    Then 1st sales channel should contain shop name
    Then 2nd sales channel should contain shop name
    Then 3rd sales channel should contain shop name
    Then 4th sales channel should contain shop name
    Then variant included 'Blue, S' and same order of sales channel warehouse should also contain "Primary"
    Then variant included 'Blue, M' and same order of sales channel warehouse should also contain "Primary"
    Then variant included 'Red, S' and same order of sales channel warehouse should also contain "Primary"
    Then variant included 'Red, M' and same order of sales channel warehouse should also contain "Primary"
    Then variant included 'Blue, S' and same order of sales channel available quantity should also contain "1000"
    Then variant included 'Blue, M' and same order of sales channel available quantity should also contain "1000"
    Then variant included 'Red, S' and same order of sales channel available quantity should also contain "1000"
    Then variant included 'Red, M' and same order of sales channel available quantity should also contain "1000"
    When I click on inventory tab
    Then inventory row of variant dropdown included 'Blue, S' and same order of primary inventory stock quantity should also equal to '1000'
    Then inventory row of variant dropdown included 'Blue, S' and same order of primary inventory pend to deliver quantity should also equal to '0'
    Then inventory row of variant dropdown included 'Blue, S' and same order of primary inventory available quantity should also equal to '1000'
    Then inventory row of variant dropdown included 'Blue, M' and same order of primary inventory stock quantity should also equal to '1000'
    Then inventory row of variant dropdown included 'Blue, M' and same order of primary inventory pend to deliver quantity should also equal to '0'
    Then inventory row of variant dropdown included 'Blue, M' and same order of primary inventory available quantity should also equal to '1000'
    Then inventory row of variant dropdown included 'Red, S' and same order of primary inventory stock quantity should also equal to '1000'
    Then inventory row of variant dropdown included 'Red, S' and same order of primary inventory pend to deliver quantity should also equal to '0'
    Then inventory row of variant dropdown included 'Red, S' and same order of primary inventory available quantity should also equal to '1000'
    Then inventory row of variant dropdown included 'Red, M' and same order of primary inventory stock quantity should also equal to '1000'
    Then inventory row of variant dropdown included 'Red, M' and same order of primary inventory pend to deliver quantity should also equal to '0'
    Then inventory row of variant dropdown included 'Red, M' and same order of primary inventory available quantity should also equal to '1000'
    And ---ROLL BACK---
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I select Cancelled of order status dropdown
    And I click on send notification checkbox
    And I click on YES button
    Then order status should equal to "Cancelled"