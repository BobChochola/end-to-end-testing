@OneBaseCase @Admin @Storefront @Product @oneChangeDeliveryStatusToShipped @fixture-payment @fixture-delivery @fixture-sl-pos @fixture-sl-pos-admin @fixture-integration-one @fixture-shop
Feature: One Change Delivery Status To Shipped
  As I am a merchant
  I change an order delivery status to Shipped and check the change from one product page

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

    Given I am on Basic Setting Page
    And I mark the value of shop name field as variable shop name

  @EAT-814 @EAT-814-1
  Scenario: One Change Delivery Status To Shipped with no layer.
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) no layer product" to english name field
    And I click on quantity and pricing tab
    And I fill "20" to regular price field
    And I fill "10" to quantity field
    And I fill "A0001" to product sku field
    Then I should see quantity of retail store reminder
    And I scroll down to breadcrumb
    And I click on add button
    Then I should be redirected to Product Index Page
    Then 1st row of regular price list should contain '20'
    Then 1st row of quantity list should contain '10'
    Then 1st row of product name should contain 'no layer product'

    Then I wait for 10 seconds for products sync
    Given I am on One Product Index Page
    When I input 'no layer product' to search field
    Then product list included 'no layer product' and same order of variants quantity should also equal to '0'
    Then product list included 'no layer product' and same order of stock quantity should also equal to '10'
    Then product list included 'no layer product' and same order of pend to deliver quantity should also equal to '0'
    Then product list included 'no layer product' and same order of available quantity should also equal to '10'
    Then I click manage button for the same order of product list included 'no layer product'
    Then I should be redirected to One Product Manage Page
    Then I should see 1 publish status
    Then I should see 1 product type
    Then 1st sales channel should contain shop name
    Then 1st sku should contain 'A0001'
    Then 1st product name should contain 'no layer product'
    Then 1st sales channel warehouse should contain 'Primary'
    Then 1st sales channel available quantity should equal to '10'
    When I click on inventory tab
    Then 1st inventory warehouse should contain 'Primary'
    Then 1st inventory stock quantity should equal to '10'
    Then 1st inventory pend to deliver quantity should equal to '0'
    Then 1st inventory available quantity should equal to '10'

    Given I am on Shop Product Index Page
    And I input 'no layer product' to search field
    Then 1st product of products list should contain 'no layer product'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on increase button
    And I click on increase button
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And 1st item quantity field should equal to '3'
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included 'Custom Delivery' of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included 'Custom' of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on become member checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page

    Then I wait for 10 seconds for products sync
    Given I am on One Product Index Page
    When I input 'no layer product' to search field
    Then product list included 'no layer product' and same order of variants quantity should also equal to '0'
    Then product list included 'no layer product' and same order of stock quantity should also equal to '10'
    Then product list included 'no layer product' and same order of pend to deliver quantity should also equal to '3'
    Then product list included 'no layer product' and same order of available quantity should also equal to '7'
    Then I click manage button for the same order of product list included 'no layer product'
    Then I should be redirected to One Product Manage Page
    Then 1st sku should contain 'A0001'
    Then I should see 1 publish status
    Then I should see 1 product type
    Then 1st sales channel should contain shop name
    Then 1st sales channel warehouse should contain 'Primary'
    Then 1st sales channel available quantity should equal to '7'
    When I click on inventory tab
    Then 1st inventory warehouse should contain 'Primary'
    Then 1st inventory stock quantity should equal to '10'
    Then 1st inventory pend to deliver quantity should equal to '3'
    Then 1st inventory available quantity should equal to '7'

    Given I am on Orders Page
    And I mark the value of 1st row of order links as variable order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I select update order delivery status option included 'Shipped' of update order delivery status dropdown
    When I click on yes button
    Then delivery status should contain 'Shipped'

    Given I am on One Product Index Page
    When I input 'no layer product' to search field
    Then product list included 'no layer product' and same order of variants quantity should also equal to '0'
    Then product list included 'no layer product' and same order of stock quantity should also equal to '7'
    Then product list included 'no layer product' and same order of pend to deliver quantity should also equal to '0'
    Then product list included 'no layer product' and same order of available quantity should also equal to '7'
    Then I click manage button for the same order of product list included 'no layer product'
    Then I should be redirected to One Product Manage Page
    Then 1st sku should contain 'A0001'
    Then I should see 1 publish status
    Then I should see 1 product type
    Then 1st sales channel should contain shop name
    Then 1st sales channel warehouse should contain 'Primary'
    Then 1st sales channel available quantity should equal to '7'
    When I click on inventory tab
    Then 1st inventory warehouse should contain 'Primary'
    Then 1st inventory stock quantity should equal to '7'
    Then 1st inventory pend to deliver quantity should equal to '0'
    Then 1st inventory available quantity should equal to '7'

    And ---ROLL BACK---
    Given I am on Product Index Page
    When I input 'no layer product' to search field
    Then 1st row of product list should contain 'no layer product'
    And I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    When I click on confirm delete button
    Then product list should not contain 'no layer product'

  @EAT-814 @EAT-814-2
  Scenario: One Change Delivery Status To Shipped with one layer.
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "1 layer product" to english name field
    And I click on variations tab
    When I click on variations toggle
    And I input "Blue" to add options field
    And I click on variations same price checkbox
    And I fill "10" to 1st row of variation quantity field
    And I fill "60" to row of variation price field
    And I fill "A0002" to row of variation sku field
    And I click on add button
    Then I should be redirected to Product Index Page
    Then popup title should contain "1 layer product"
    Then 1st popup panel should contain "Create Purchase Order"
    Then 2nd popup panel should contain "Directly Edit Inventory of Each Warehouse"
    Then 3rd popup panel should contain "Add Another Product"
    And I click on back to my products panel
    Then 1st row of product list should contain "1 layer product"
    Then 1st row of regular price list should contain "NT$60"
    Then 1st row of quantity list should contain "10"
    Then I wait for 15 seconds for products sync

    Given I am on One Product Index Page
    When I input '1 layer product' to search field
    Then product list included '1 layer product' and same order of variants quantity should also equal to '1'
    Then product list included '1 layer product' and same order of stock quantity should also equal to '10'
    Then product list included '1 layer product' and same order of pend to deliver quantity should also equal to '0'
    Then product list included '1 layer product' and same order of available quantity should also equal to '10'
    Then I click manage button for the same order of product list included '1 layer product'
    Then I should be redirected to One Product Manage Page
    Then I should see 1 publish status
    Then I should see 1 variant
    Then I should see 1 product type
    Then 1st sales channel should contain shop name
    Then 1st sku should contain 'A0002'
    Then 1st sales channel warehouse should contain 'Primary'
    Then 1st variant should equal to 'Blue'
    Then 1st sales channel available quantity should equal to '10'
    When I click on inventory tab
    Then 1st inventory warehouse should contain 'Primary'
    Then 1st inventory stock quantity should equal to '10'
    Then 1st inventory pend to deliver quantity should equal to '0'
    Then 1st inventory available quantity should equal to '10'

    Given I am on Shop Product Index Page
    And I input '1 layer product' to search field
    Then 1st product of products list should contain '1 layer product'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on increase button
    And I click on increase button
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And 1st item quantity field should equal to '3'
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included 'Custom Delivery' of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included 'Custom' of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on become member checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page

    Then I wait for 10 seconds for products sync
    Given I am on One Product Index Page
    When I input '1 layer product' to search field
    Then product list included '1 layer product' and same order of variants quantity should also equal to '1'
    Then product list included '1 layer product' and same order of stock quantity should also equal to '10'
    Then product list included '1 layer product' and same order of pend to deliver quantity should also equal to '3'
    Then product list included '1 layer product' and same order of available quantity should also equal to '7'
    Then I click manage button for the same order of product list included '1 layer product'
    Then I should be redirected to One Product Manage Page
    Then 1st sku should contain 'A0002'
    Then I should see 1 publish status
    Then I should see 1 variant
    Then I should see 1 product type
    Then 1st sales channel should contain shop name
    Then 1st sales channel warehouse should contain 'Primary'
    Then 1st variant should equal to 'Blue'
    Then 1st sales channel available quantity should equal to '7'
    When I click on inventory tab
    Then 1st inventory warehouse should contain 'Primary'
    Then 1st inventory stock quantity should equal to '10'
    Then 1st inventory pend to deliver quantity should equal to '3'
    Then 1st inventory available quantity should equal to '7'    

    Given I am on Orders Page
    And I mark the value of 1st row of order links as variable order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I select update order delivery status option included 'Shipped' of update order delivery status dropdown
    When I click on yes button
    Then delivery status should contain 'Shipped'

    Given I am on One Product Index Page
    When I input '1 layer product' to search field
    Then product list included '1 layer product' and same order of variants quantity should also equal to '1'
    Then product list included '1 layer product' and same order of stock quantity should also equal to '7'
    Then product list included '1 layer product' and same order of pend to deliver quantity should also equal to '0'
    Then product list included '1 layer product' and same order of available quantity should also equal to '7'
    Then I click manage button for the same order of product list included '1 layer product'
    Then I should be redirected to One Product Manage Page
    Then 1st sku should contain 'A0002'
    Then I should see 1 publish status
    Then I should see 1 variant
    Then I should see 1 product type
    Then 1st sales channel should contain shop name
    Then 1st sales channel warehouse should contain 'Primary'
    Then 1st variant should equal to 'Blue'
    Then 1st sales channel available quantity should equal to '7'
    When I click on inventory tab
    Then 1st inventory warehouse should contain 'Primary'
    Then 1st inventory stock quantity should equal to '7'
    Then 1st inventory pend to deliver quantity should equal to '0'
    Then 1st inventory available quantity should equal to '7'

    And ---ROLL BACK---
    Given I am on Product Index Page
    When I input '1 layer product' to search field
    Then 1st row of product list should contain '1 layer product'
    And I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    When I click on confirm delete button
    Then product list should not contain '1 layer product' 

  @EAT-814 @EAT-814-3
  Scenario: One Change Delivery Status To Shipped with two layer.
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "2 layer product" to english name field
    And I click on variations tab
    And I click on variations toggle
    And I input "R" to add options field
    And I input "G" to add options field
    And I click on add variation button
    And I input "S" to 2nd add options field
    And I input "M " to 2nd add options field
    When I click on variations same price checkbox
    And I fill '100' to 1st row of variation price field
    And I fill '100' to 2nd row of variation price field
    And I fill '100' to 3rd row of variation price field
    And I fill '100' to 4th row of variation price field

    And I fill 'test1' to 1st row of variation sku field
    And I fill 'test2' to 2nd row of variation sku field
    And I fill 'test3' to 3rd row of variation sku field
    And I fill 'test4' to 4th row of variation sku field

    And I fill "100" to 1st row of variation quantity field
    And I fill "100" to 2nd row of variation quantity field
    And I fill "100" to 3th row of variation quantity field
    And I fill "100" to 4rd row of variation quantity field

    And I click on add button
    Then I should be redirected to Product Index Page
    Then popup title should contain "2 layer product"
    Then 1st popup panel should contain "Create Purchase Order"
    Then 2nd popup panel should contain "Directly Edit Inventory of Each Warehouse"
    Then 3rd popup panel should contain "Add Another Product"
    And I click on back to my products panel
    Then 1st row of product list should contain "2 layer product"
    Then 1st row of regular price list should contain "100"
    Then I wait for 20 seconds for products sync

    Given I am on One Product Index Page
    Then 1st product list should contain '2 layer product'
    Then variants quantity should equal to '4'
    Then 1st stock quantity should equal to '400'
    Then 1st pend to deliver quantity should equal to "0"
    Then 1st available quantity should equal to '400'
    Then I click manage button for the same order of product list included '2 layer product'
    Then I should be redirected to One Product Manage Page
    Then I should see 4 publish status
    Then I should see 4 variant
    Then I should see 4 product type
    Then 1st sales channel should contain shop name
    Then 1st variant should equal to 'R, S'
    Then 1st sku should equal to 'test1'
    Then 1st sales channel warehouse should contain 'Primary'
    Then 1st sales channel available quantity should equal to '100'
    Then 2nd sales channel should contain shop name
    Then 2nd variant should equal to 'R, M'
    Then 2nd sku should equal to 'test2'
    Then 2nd sales channel warehouse should contain 'Primary'
    Then 2nd sales channel available quantity should equal to '100'
    Then 3rd sales channel should contain shop name
    Then 3rd variant should equal to 'G, S'
    Then 3rd sku should equal to 'test3'
    Then 3rd sales channel warehouse should contain 'Primary'
    Then 3rd sales channel available quantity should equal to '100'
    Then 4th sales channel should contain shop name
    Then 4th variant should equal to 'G, M'
    Then 4th sku should equal to 'test4'
    Then 4th sales channel warehouse should contain 'Primary'
    Then 4th sales channel available quantity should equal to '100'
    
    When I click on inventory tab
    Then 1st inventory row of variant dropdown should contain 'R, S'
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to '100'
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to '0'
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to '100'

    Then 2nd inventory row of variant dropdown should contain 'R, M'
    Then 2nd inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to '100'
    Then 2nd inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to '0'
    Then 2nd inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to '100'

    Then 3rd inventory row of variant dropdown should contain 'G, S'
    Then 3rd inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to '100'
    Then 3rd inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to '0'
    Then 3rd inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to '100'

    Then 4th inventory row of variant dropdown should contain 'G, M'
    Then 4th inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to '100'
    Then 4th inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to '0'
    Then 4th inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to '100'

    Given I am on Shop Product Index Page
    When I input "2 layer product" to search field
    Then 1st product of products list should contain '2 layer product'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill new customer email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on become member checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info

    Then I wait for 10 seconds for products sync
    Given I am on One Product Index Page
    Then 1st product list should contain '2 layer product'
    Given I am on One Product Index Page
    Then 1st product list should contain '2 layer product'
    Then variants quantity should equal to '4'
    Then 1st stock quantity should equal to '400'
    Then 1st pend to deliver quantity should equal to "1"
    Then 1st available quantity should equal to '399'
    Then I click manage button for the same order of product list included '2 layer product'
    Then I should be redirected to One Product Manage Page
    Then I should see 4 publish status
    Then I should see 4 variant
    Then I should see 4 product type
    Then 1st sales channel should contain shop name
    Then 1st variant should contain 'R, S'
    Then 1st sku should equal to 'test1'
    Then 1st sales channel warehouse should contain 'Primary'
    Then 1st sales channel available quantity should equal to '99'
    Then 2nd sales channel should contain shop name
    Then 2nd variant should equal to 'R, M'
    Then 2nd sku should equal to 'test2'
    Then 2nd sales channel warehouse should contain 'Primary'
    Then 2nd sales channel available quantity should equal to '100'
    Then 3rd sales channel should contain shop name
    Then 3rd variant should equal to 'G, S'
    Then 3rd sku should equal to 'test3'
    Then 3rd sales channel warehouse should contain 'Primary'
    Then 3rd sales channel available quantity should equal to '100'
    Then 4th sales channel should contain shop name
    Then 4th variant should equal to 'G, M'
    Then 4th sku should equal to 'test4'
    Then 4th sales channel warehouse should contain 'Primary'
    Then 4th sales channel available quantity should equal to '100'
    
    When I click on inventory tab
    Then 1st inventory row of variant dropdown should contain 'R, S'
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to '100'
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to '1'
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to '99'

    Then 2nd inventory row of variant dropdown should contain 'R, M'
    Then 2nd inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to '100'
    Then 2nd inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to '0'
    Then 2nd inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to '100'

    Then 3rd inventory row of variant dropdown should contain 'G, S'
    Then 3rd inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to '100'
    Then 3rd inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to '0'
    Then 3rd inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to '100'

    Then 4th inventory row of variant dropdown should contain 'G, M'
    Then 4th inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to '100'
    Then 4th inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to '0'
    Then 4th inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to '100'

    Given I am on Orders Page
    And I mark the value of 1st row of order links as variable order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I select update order delivery status option included 'Shipped' of update order delivery status dropdown
    When I click on yes button
    Then delivery status should contain 'Shipped'
    Then I wait for 15 seconds for products sync

    Given I am on One Product Index Page
    Then 1st product list should contain '2 layer product'
    Given I am on One Product Index Page
    Then 1st product list should contain '2 layer product'
    Then variants quantity should equal to '4'
    Then 1st stock quantity should equal to '399'
    Then 1st pend to deliver quantity should equal to "0"
    Then 1st available quantity should equal to '399'
    Then I click manage button for the same order of product list included '2 layer product'
    Then I should be redirected to One Product Manage Page
    Then I should see 4 publish status
    Then I should see 4 variant
    Then I should see 4 product type
    Then 1st sales channel should contain shop name
    Then 1st variant should equal to 'R, S'
    Then 1st sku should equal to 'test1'
    Then 1st sales channel warehouse should contain 'Primary'
    Then 1st sales channel available quantity should equal to '99'

    Then 2nd sales channel should contain shop name
    Then 2nd variant should equal to 'R, M'
    Then 2nd sku should equal to 'test2'
    Then 2nd sales channel warehouse should contain 'Primary'
    Then 2nd sales channel available quantity should equal to '100'

    Then 3rd sales channel should contain shop name
    Then 3rd variant should equal to 'G, S'
    Then 3rd sku should equal to 'test3'
    Then 3rd sales channel warehouse should contain 'Primary'
    Then 3rd sales channel available quantity should equal to '100'

    Then 4th sales channel should contain shop name
    Then 4th variant should equal to 'G, M'
    Then 4th sku should equal to 'test4'
    Then 4th sales channel warehouse should contain 'Primary'
    Then 4th sales channel available quantity should equal to '100'

    When I click on inventory tab
    Then 1st inventory row of variant dropdown should contain 'R, S'
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to '99'
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to '0'
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to '99'

    Then 2nd inventory row of variant dropdown should contain 'R, M'
    Then 2nd inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to '100'
    Then 2nd inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to '0'
    Then 2nd inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to '100'

    Then 3rd inventory row of variant dropdown should contain 'G, S'
    Then 3rd inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to '100'
    Then 3rd inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to '0'
    Then 3rd inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to '100'

    Then 4th inventory row of variant dropdown should contain 'G, M'
    Then 4th inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to '100'
    Then 4th inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to '0'
    Then 4th inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to '100'
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I input '2 layer product' to search field
    Then 1st row of product list should contain '2 layer product'
    And I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    When I click on confirm delete button
    Then product list should not contain '2 layer product' 