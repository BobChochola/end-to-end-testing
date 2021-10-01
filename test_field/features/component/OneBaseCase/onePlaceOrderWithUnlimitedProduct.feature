@OneBaseCase @OneQuickTest @Admin @Storefront @Product @onePlaceOrderWithUnlimitedProduct @fixture-sl-pos @fixture-sl-pos-admin @fixture-integration-one @fixture-product @fixture-shop @fixture-payment @fixture-delivery @theme-ultra-chic
Feature: Check place order and one quantity would sync
  As a merchant
  customer place order and the product quantity would sync in one

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

  @EAT-810 @EAT-810-2 @EAT-811 @EAT-811-2
  Scenario: Check place order and one quantity would sync
    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    When I input "15th Product for Checkout" to search field
    Then 1st product of products list should contain '15th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    When I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    When I input "16th Product for Checkout" to search field
    Then 1st product of products list should contain '16th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    When I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    When I input "11th Product for Checkout" to search field
    Then 1st product of products list should contain '11th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button

    Then I should be redirected to Shop Cart Layout V Two Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Family Mart Pickup and pay in store (C2C)" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button

    Then I should be redirected to Shop Checkout Layout V Two Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on pick store button

    Then I should be redirected to Family Mart Pick Store Page
    When I click on name search button
    And I fill store name to store name field
    And I click on search button
    Then I should see row of search store list
    And I click on row of search store list
    Then I should see confirm store button
    And I click on confirm store button
    Then I should be redirected to Shop Checkout Page
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Layout V Two Page
    Then I wait for 10 seconds for products sync

    Given I am on One Product Index Page
    When I input '15th Product for Checkout' to search field
    Then product list included '15th Product for Checkout' and same order of variants quantity should also equal to '0'
    Then product list included '15th Product for Checkout' and same order of pend to deliver quantity should also contain '1'
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
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "1"

    Given I am on One Product Index Page
    When I input '16th Product for Checkout' to search field
    Then product list included '16th Product for Checkout' and same order of variants quantity should also equal to '2'
    Then product list included '16th Product for Checkout' and same order of pend to deliver quantity should also equal to '1'
    Then I click manage button for the same order of product list included '16th Product for Checkout'

    Then I should be redirected to One Product Manage Page
    Then sales channel should contain shop name
    Then I should see 2 publish status
    Then I should see 2 variant
    Then I should see 2 product type
    Then variant included 'Blue' and same order of sales channel should also contain shop name
    Then variant included 'Blue' and same order of sales channel warehouse should also contain 'Primary'
    Then variant included 'Blue' and same order of sales channel available quantity should also contain '∞ Untracked'
    Then variant included 'Red' and same order of sales channel should also contain shop name
    Then variant included 'Red' and same order of sales channel warehouse should also contain 'Primary'
    Then variant included 'Red' and same order of sales channel available quantity should also contain '∞ Untracked'

    When I click on inventory tab
    Then inventory row of variant dropdown included 'Blue' and same order of inventory pend to deliver quantity should also equal to '1'
    Then inventory row of variant dropdown included 'Red' and same order of inventory pend to deliver quantity should also equal to '0'

    Given I am on One Product Index Page
    When I input '11th Product for Checkout' to search field
    Then product list included '11th Product for Checkout' and same order of variants quantity should also equal to '4'
    Then product list included '11th Product for Checkout' and same order of pend to deliver quantity should also equal to '1'
    Then I click manage button for the same order of product list included '11th Product for Checkout'

    Then I should be redirected to One Product Manage Page
    Then sales channel should contain shop name
    Then I should see 4 publish status
    Then I should see 4 variant
    Then I should see 4 product type
    Then variant included 'Blue, S' and same order of sales channel should also contain shop name
    Then variant included 'Blue, S' and same order of sales channel warehouse should also contain 'Primary'
    Then variant included 'Blue, S' and same order of sales channel available quantity should also contain '∞ Untracked'
    Then variant included 'Blue, M' and same order of sales channel should also contain shop name
    Then variant included 'Blue, M' and same order of sales channel warehouse should also contain 'Primary'
    Then variant included 'Blue, M' and same order of sales channel available quantity should also contain '∞ Untracked'
    Then variant included 'Red, S' and same order of sales channel should also contain shop name
    Then variant included 'Red, S' and same order of sales channel warehouse should also contain 'Primary'
    Then variant included 'Red, S' and same order of sales channel available quantity should also contain '∞ Untracked'
    Then variant included 'Red, M' and same order of sales channel should also contain shop name
    Then variant included 'Red, M' and same order of sales channel warehouse should also contain 'Primary'
    Then variant included 'Red, M' and same order of sales channel available quantity should also contain '∞ Untracked'

    When I click on inventory tab
    Then inventory row of variant dropdown included 'Blue, S' and same order of inventory pend to deliver quantity should also equal to '1'
    Then inventory row of variant dropdown included 'Blue, M' and same order of inventory pend to deliver quantity should also equal to '0'
    Then inventory row of variant dropdown included 'Red, S' and same order of inventory pend to deliver quantity should also equal to '0'
    Then inventory row of variant dropdown included 'Red, M' and same order of inventory pend to deliver quantity should also equal to '0'

    And ---ROLL BACK---
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I select Cancelled of order status dropdown
    And I click on send notification checkbox
    And I click on YES button
    Then order status should equal to "Cancelled"