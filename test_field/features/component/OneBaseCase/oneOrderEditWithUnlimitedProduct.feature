@OneBaseCase @OneQuickTest @Admin @Storefront @Order @OrderEdit @oneOrderEditWithUnlimitedProduct @fixture-sl-pos @fixture-sl-pos-admin @fixture-integration-one @fixture-product @fixture-shop @theme-ultra-chic @fixture-product @fixture-delivery @fixture-payment
Feature: Check order edit and one quantity would sync (unlimited)
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

  @EAT-812 @EAT-812-2
  Scenario: Check order edit and one quantity would sync
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    And I click on add product button
    Then I should see product of product list
    And I input "15th Product for Checkout" to search field
    Then I should see product of product list
    And I click on product of product list included '15th Product for Checkout'
    And I click on popup save button
    Then I should see 2 product quantity field
    Then I should see 2 product quantity reminder
    When I fill '500' to 2nd product quantity field
    Then 2nd product quantity reminder should contain "Unlimited Quantity"
    And I click on add product button
    Then I should see product of product list
    And I input "16th Product for Checkout" to search field
    Then I should see product of product list
    And I click on product of product list included '16th Product for Checkout'
    And I click on popup save button
    When I click on color dropdown option included 'Blue'
    Then I should see 3 product quantity field
    Then I should see 3 product quantity reminder
    When I fill '899' to 3rd product quantity field
    Then 3rd product quantity reminder should contain "Unlimited Quantity"
    And I click on product details save button
    Then I should see confirm popover
    And I click on yes button
    Then I wait for 30 seconds for quantity sync

    Given I am on One Product Index Page
    When I input '15th Product for Checkout' to search field
    Then product list included '15th Product for Checkout' and same order of variants quantity should also contain '0'
    Then product list included '15th Product for Checkout' and same order of pend to deliver quantity should also contain '500'
    Then I click manage button for the same order of product list included '15th Product for Checkout'
    Then I should be redirected to One Product Manage Page
    Then sales channel should contain shop name
    Then I should see 1 publish status
    Then I should see 1 product type
    Then 1st sales channel should contain shop name
    Then 1st variant should equal to '-'
    Then 1st sales channel warehouse should contain 'Primary'
    Then 1st sales channel available quantity should equal to '∞ Untracked'
    When I click on inventory tab
    Then 1st inventory warehouse should contain 'Primary'
    Then 1st inventory pend to deliver quantity should equal to '500'

    Given I am on One Product Index Page
    When I input '16th Product for Checkout' to search field
    Then product list included '16th Product for Checkout' and same order of variants quantity should also contain '2'
    Then product list included '16th Product for Checkout' and same order of pend to deliver quantity should also contain '899'
    Then I click manage button for the same order of product list included '16th Product for Checkout'
    Then I should be redirected to One Product Manage Page
    Then sales channel should contain shop name
    Then I should see 2 publish status
    Then I should see 2 variant
    Then I should see 2 product type
    Then 1st sales channel should contain shop name
    Then variant included 'Blue' and same order of sales channel warehouse should also contain 'Primary'
    Then variant included 'Blue' and same order of sales channel available quantity should also contain '∞ Untracked'
    Then variant included 'Blue' and same order of sales channel should also contain shop name
    Then variant included 'Red' and same order of sales channel warehouse should also contain 'Primary'
    Then variant included 'Red' and same order of sales channel available quantity should also contain '∞ Untracked'

    When I click on inventory tab
    Then inventory row of variant dropdown included 'Blue' and same order of inventory warehouse should also contain 'Primary'
    Then inventory row of variant dropdown included 'Blue' and same order of inventory pend to deliver quantity should also equal to '899'
    Then inventory row of variant dropdown included 'Red' and same order of inventory warehouse should also contain 'Primary'
    Then inventory row of variant dropdown included 'Red' and same order of inventory pend to deliver quantity should also equal to '0'

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

    Then I wait for 30 seconds for quantity sync
    Given I am on One Product Index Page
    When I input '15th Product for Checkout' to search field
    Then product list included '15th Product for Checkout' and same order of variants quantity should also contain '0'
    Then product list included '15th Product for Checkout' and same order of pend to deliver quantity should also contain '0'
    Then I click manage button for the same order of product list included '15th Product for Checkout'
    Then I should be redirected to One Product Manage Page
    Then sales channel should contain shop name
    Then I should see 1 publish status
    Then I should see 1 product type
    Then 1st sales channel should contain shop name
    Then 1st variant should equal to '-'
    Then 1st sales channel warehouse should contain 'Primary'
    Then 1st sales channel available quantity should equal to '∞ Untracked'
    When I click on inventory tab
    Then 1st inventory warehouse should contain 'Primary'
    Then 1st inventory pend to deliver quantity should equal to '500'

    Given I am on One Product Index Page
    When I input '16th Product for Checkout' to search field
    Then product list included '16th Product for Checkout' and same order of variants quantity should also contain '2'
    Then product list included '16th Product for Checkout' and same order of pend to deliver quantity should also contain '0'
    Then I click manage button for the same order of product list included '16th Product for Checkout'
    Then I should be redirected to One Product Manage Page
    Then sales channel should contain shop name
    Then I should see 2 publish status
    Then I should see 2 variant
    Then I should see 2 product type
    Then 1st sales channel should contain shop name
    Then variant included 'Blue' and same order of sales channel warehouse should also contain 'Primary'
    Then variant included 'Blue' and same order of sales channel available quantity should also contain '∞ Untracked'
    Then variant included 'Blue' and same order of sales channel should also contain shop name
    Then variant included 'Red' and same order of sales channel warehouse should also contain 'Primary'
    Then variant included 'Red' and same order of sales channel available quantity should also contain '∞ Untracked'

    When I click on inventory tab
    Then inventory row of variant dropdown included 'Blue' and same order of inventory warehouse should also contain 'Primary'
    Then inventory row of variant dropdown included 'Blue' and same order of inventory pend to deliver quantity should also equal to '899'
    Then inventory row of variant dropdown included 'Red' and same order of inventory warehouse should also contain 'Primary'
    Then inventory row of variant dropdown included 'Red' and same order of inventory pend to deliver quantity should also equal to '0'

    And ---ROLL BACK---
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I select Cancelled of order status dropdown
    And I click on send notification checkbox
    And I click on YES button
    Then order status should equal to "Cancelled"