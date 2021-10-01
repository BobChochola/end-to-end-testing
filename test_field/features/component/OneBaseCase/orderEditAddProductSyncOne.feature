@OneBaseCase @OneQuickTest @ImageService @Admin @Storefront @Order @OrderEdit @orderEditAddProductSyncOne @fixture-payment @fixture-delivery @fixture-sl-pos @fixture-sl-pos-admin @fixture-integration-one @fixture-shop @fixture-payment @fixture-delivery
Feature: Order edit increase or decrease products
  As I am a merchant
  I will add product and increase, decrease quantity on order edit, check One sync correct

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

  @EAT-966 @EAT-966-1
  Scenario: Order edit add 2layer product sync One
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) order edit product" to english name field
    And I click on quantity and pricing tab
    And I fill "20" to regular price field
    And I fill "10" to quantity field
    And I fill "A0001" to product sku field
    Then I should see quantity of retail store reminder
    And I scroll down to breadcrumb
    And I click on add button
    Then I should be redirected to Product Index Page
    Then I should see popup panel
    Then I click on back to my products panel
    Then 1st row of regular price list should contain '20'
    Then 1st row of quantity list should contain '10'
    Then 1st row of product name should contain 'order edit product'

    Then I wait for 10 seconds for products sync
    Given I am on One Product Index Page
    When I input 'order edit product' to search field
    Then product list included 'order edit product' and same order of variants quantity should also equal to '0'
    Then product list included 'order edit product' and same order of stock quantity should also equal to '10'
    Then product list included 'order edit product' and same order of pend to deliver quantity should also equal to '0'
    Then product list included 'order edit product' and same order of available quantity should also equal to '10'
    Then I click manage button for the same order of product list included 'order edit product'
    
    Then I should be redirected to One Product Manage Page
    Then I should see 1 publish status
    Then I should see 1 product type
    Then 1st sales channel should contain shop name
    Then 1st sku should contain 'A0001'
    Then 1st product name should contain 'order edit product'
    Then 1st sales channel warehouse should contain 'Primary'
    Then 1st sales channel available quantity should equal to '10'
    When I click on inventory tab
    Then 1st inventory warehouse should contain 'Primary'
    Then 1st inventory stock quantity should equal to '10'
    Then 1st inventory pend to deliver quantity should equal to '0'
    Then 1st inventory available quantity should equal to '10'

    Given I am on One Product Index Page
    When I input '10th Product for Checkout' to search field
    Then product list included '10th Product for Checkout' and same order of variants quantity should also equal to '4'
    And I mark the value of stock quantity as variable all origin quantity
    Then product list included '10th Product for Checkout' and same order of pend to deliver quantity should also equal to '0'
    And I mark the value of available quantity as variable all before checkout
    Then I click manage button for the same order of product list included '10th Product for Checkout'
    
    Then I should be redirected to One Product Manage Page
    Then I should see 4 publish status
    Then I should see 4 product type
    Then 2nd sales channel should contain shop name
    Then 2nd product name should contain '10th Product for Checkout'
    Then variant included 'Blue, M' and same order of sales channel warehouse should also contain "Primary"
    Then I mark the value of sales channel available quantity for the same order of variant equal to 'Blue, M' as variable before checkout
    When I click on inventory tab
    Then inventory row of variant dropdown included 'Blue, M' and same order of primary inventory stock quantity should also contain before checkout
    Then inventory row of variant dropdown included 'Blue, M' and same order of primary inventory pend to deliver quantity should also equal to '0'
    Then inventory row of variant dropdown included 'Blue, M' and same order of primary inventory available quantity should also contain before checkout

    Given I am on Shop Product Index Page
    And I input 'order edit product' to search field
    Then 1st product of products list should contain 'order edit product'
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
    Then I mark the value of order confirm info as variable order info

    Then I wait for 10 seconds for products sync
    Given I am on One Product Index Page
    When I input 'order edit product' to search field
    Then product list included 'order edit product' and same order of variants quantity should also equal to '0'
    Then product list included 'order edit product' and same order of stock quantity should also equal to '10'
    Then product list included 'order edit product' and same order of pend to deliver quantity should also equal to '3'
    Then product list included 'order edit product' and same order of available quantity should also equal to '7'
    Then I click manage button for the same order of product list included 'order edit product'
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
    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    And I fill "4" to product quantity field
    And I should see add product button
    And I click on add product button
    Then I should see product of product list
    And I input "10th Product for Checkout" to search field
    Then I should see product of product list
    Then 1st product of product list should contain '10th Product for Checkout'
    And I click on 1st product of product list
    And I click on popup save button
    Then I click on color dropdown option included 'Blue'
     Then I click on size dropdown option included 'M' 
    Then I should see 2 product quantity field
    Then I should see 2 product quantity reminder
    And I click on product details save button
    Then I should see confirm popover
    And I click on YES button
    Then I wait for 10 seconds for products sync

    Given I am on One Product Index Page
    When I input 'order edit product' to search field
    Then product list included 'order edit product' and same order of variants quantity should also equal to '0'
    Then product list included 'order edit product' and same order of stock quantity should also equal to '10'
    Then product list included 'order edit product' and same order of pend to deliver quantity should also equal to '4'
    Then product list included 'order edit product' and same order of available quantity should also equal to '6'
    Then I click manage button for the same order of product list included 'order edit product'
    Then I should be redirected to One Product Manage Page
    Then 1st sku should contain 'A0001'
    Then I should see 1 publish status
    Then I should see 1 product type
    Then 1st sales channel should contain shop name
    Then 1st sales channel warehouse should contain 'Primary'
    Then 1st sales channel available quantity should equal to '6'
    When I click on inventory tab
    Then 1st inventory warehouse should contain 'Primary'
    Then 1st inventory stock quantity should equal to '10'
    Then 1st inventory pend to deliver quantity should equal to '4'
    Then 1st inventory available quantity should equal to '6' 

    Given I am on One Product Index Page
    When I input '10th Product for Checkout' to search field
    Then product list included '10th Product for Checkout' and same order of variants quantity should also equal to '4'
    Then stock quantity should equal to all origin quantity
    Then product list included '10th Product for Checkout' and same order of pend to deliver quantity should also equal to '1'
    Then available quantity should contain all checkout count
    Then I click manage button for the same order of product list included '10th Product for Checkout'
    
    Then I should be redirected to One Product Manage Page
    Then I should see 4 publish status
    Then I should see 4 product type
    Then 2nd sales channel should contain shop name
    Then 2nd product name should contain '10th Product for Checkout'
    Then variant included 'Blue, M' and same order of sales channel warehouse should also contain "Primary"
    Then variant included 'Blue, M' and same order of sales channel available quantity should also contain checkout count
    When I click on inventory tab
    Then inventory row of variant dropdown included 'Blue, M' and same order of primary inventory stock quantity should also contain before checkout
    Then inventory row of variant dropdown included 'Blue, M' and same order of primary inventory pend to deliver quantity should also equal to '1'
    Then inventory row of variant dropdown included 'Blue, M' and same order of primary inventory available quantity should also contain checkout count
    And ---ROLL BACK---
    Given I am on Orders Page
    Then 1st row of order links should contain order number
    And I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I select Cancelled of order status dropdown
    And I click on YES button
    Then I should not see YES button
    Then order status should equal to "Cancelled"

    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain '(dirty data)'

  @EAT-966 @EAT-966-2
  Scenario: order edit add product unlimited prdouct and decrease origin product quantity
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "order edit 2layer 2option product" to english name field
    And I fill "order edit 2layer 2option product" to chinese name field
    And I click on variations tab
    And I click on variations toggle
    When I input "R" to 1st add options field
    And I input "G" to 1st add options field
    And I click on add variation button
    When I input "M" to 2nd add options field
    And I input "L" to 2nd add options field
    And I click on variations same price checkbox
    Then I should see row of variation price field
    Then I should see row of variation member price field
    And I fill "50" to 1st row of variation price field
    And I fill "50" to 2nd row of variation price field
    And I fill "50" to 3rd row of variation price field
    And I fill "50" to 4th row of variation price field
    And I fill "10" to 1st row of variation member price field
    And I fill "10" to 2nd row of variation member price field
    And I fill "10" to 3rd row of variation member price field
    And I fill "10" to 4th row of variation member price field
    And I fill "10" to 1st row of variation quantity field
    And I fill "20" to 2nd row of variation quantity field
    And I fill "30" to 3nd row of variation quantity field
    And I fill "40" to 4th row of variation quantity field
    And I fill "A001" to 1st row of variation sku field
    And I fill "A002" to 2nd row of variation sku field
    And I fill "A003" to 3rd row of variation sku field
    And I fill "A004" to 4th row of variation sku field
    And I scroll down to breadcrumb
    And I click on add button
    Then I should be redirected to Product Index Page
    Then popup title should contain "order edit 2layer 2option product"
    Then 1st popup panel should contain "Create Purchase Order"
    Then 2nd popup panel should contain "Directly Edit Inventory of Each Warehouse"
    Then 3rd popup panel should contain "Add Another Product"
    And I click on back to my products panel
    Then I should see row of product photo list
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain "order edit 2layer 2option product"
    Then 1st row of regular price list should contain "NT$50"
    Then 1st row of quantity list should contain "100"
    Then I wait for 20 seconds for products sync

    Given I am on One Product Index Page
    Then product list should contain "order edit 2layer 2option product"
    Then variants quantity should contain "4"
    Then stock quantity should contain "100"
    Then pend to deliver quantity should equal to "0"
    Then available quantity should contain "100"
    Then I click on manage button

    Then I should be redirected to One Product Manage Page
    Then 1st sales channel row of variant dropdown should contain "R, M"
    Then 2nd sales channel row of variant dropdown should contain "R, L"
    Then 3rd sales channel row of variant dropdown should contain "G, M"
    Then 4th sales channel row of variant dropdown should contain "G, L"
    Then 1st sales channel should contain shop name
    Then 2nd sales channel should contain shop name
    Then 3nd sales channel should contain shop name
    Then 4th sales channel should contain shop name
    Then 1st country should contain "Taiwan"
    Then 2nd country should contain "Taiwan"
    Then 3nd country should contain "Taiwan"
    Then 4th country should contain "Taiwan"

    Then 1st product name should contain "order edit 2layer 2option product"
    Then 2nd product name should contain "order edit 2layer 2option product"
    Then 3th product name should contain "order edit 2layer 2option product"
    Then 4rd product name should contain "order edit 2layer 2option product"

    Then I should see 4 product type
    Then I should see 4 publish status
    Then 1st variant should contain "R, M"
    Then 2nd variant should contain "R, L"
    Then 3th variant should contain "G, M"
    Then 4th variant should contain "G, L"
    Then 1st sku should contain "A001"
    Then 2nd sku should contain "A002"
    Then 3th sku should contain "A003"
    Then 4rd sku should contain "A004"
    Then 1st sales channel warehouse should contain "Primary"
    Then 2nd sales channel warehouse should contain "Primary"
    Then 3th sales channel warehouse should contain "Primary"
    Then 4rd sales channel warehouse should contain "Primary"
    Then 1st sales channel available quantity should contain "10"
    Then 2nd sales channel available quantity should contain "20"
    Then 3rd sales channel available quantity should contain "30"
    Then 4th sales channel available quantity should contain "40"

    When I click on inventory tab
    Then 1st inventory row of variant dropdown should equal to 'R, M'
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to '10'
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to '0'
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to '10'

    Then 2nd inventory row of variant dropdown should equal to 'R, L'
    Then 2nd inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to '20'
    Then 2nd inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to '0'
    Then 2nd inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to '20'

    Then 3rd inventory row of variant dropdown should equal to 'G, M'
    Then 3rd inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to '30'
    Then 3rd inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to '0'
    Then 3rd inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to '30'

    Then 4th inventory row of variant dropdown should equal to 'G, L'
    Then 4th inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to '40'
    Then 4th inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to '0'
    Then 4th inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to '40'

    Given I am on One Product Index Page
    When I input '14th Product for Checkout' to search field
    Then product list included '14th Product for Checkout' and same order of variants quantity should also equal to '0'
    Then product list included '14th Product for Checkout' and same order of stock quantity should also equal to '0'
    Then product list included '14th Product for Checkout' and same order of pend to deliver quantity should also equal to '0'
    Then product list included '14th Product for Checkout' and same order of available quantity should also equal to '0'
    Then I click manage button for the same order of product list included '14th Product for Checkout'
    Then I should be redirected to One Product Manage Page
    Then I should see 1 publish status
    Then I should see 1 product type
    Then 1st sales channel should contain shop name
    Then 1st sales channel warehouse should contain 'Primary'
    Then 1st sales channel available quantity should equal to '∞ Untracked'
    When I click on inventory tab
    Then 1st inventory warehouse should contain 'Primary'
    Then 1st inventory stock quantity should equal to '0'
    Then 1st inventory pend to deliver quantity should equal to '0'
    Then 1st inventory available quantity should equal to '0' 

    Given I am on Shop Product Index Page
    And I input 'order edit 2layer 2option product' to search field
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I select dropdown option included 'R' of variation dropdown
    And I select dropdown option included 'M' of variation dropdown
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
    Then I mark the value of order confirm info as variable order info
    Then I wait for 10 seconds for products sync

    Given I am on One Product Index Page
    Then product list should contain "order edit 2layer 2option product"
    Then variants quantity should contain "4"
    Then stock quantity should contain "100"
    Then pend to deliver quantity should equal to "3"
    Then available quantity should contain "97"
    Then I click on manage button
    Then I should be redirected to One Product Manage Page
    Then 1st sales channel available quantity should contain "7"

    When I click on inventory tab
    Then 1st inventory row of variant dropdown should contain "R, M"
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to '10'
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to '3'
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to '7'

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    And I fill "2" to product quantity field
    And I should see add product button
    And I click on add product button
    Then I should see product of product list
    And I input "14th Product for Checkout" to search field
    Then I should see product of product list
    And I click on 1st product of product list
    And I click on popup save button
    Then I should see 2 product quantity field
    Then I should see 2 product quantity reminder
    And I click on product details save button
    Then I should see confirm popover
    And I click on YES button
    Then I wait for 15 seconds for products sync

    Given I am on One Product Index Page
    When I input 'order edit 2layer 2option product' to search field
    Then product list included 'order edit 2layer 2option product' and same order of variants quantity should also equal to '4'
    Then product list included 'order edit 2layer 2option product' and same order of stock quantity should also equal to '100'
    Then product list included 'order edit 2layer 2option product' and same order of pend to deliver quantity should also equal to '2'
    Then product list included 'order edit 2layer 2option product' and same order of available quantity should also equal to '98'
    Then I click manage button for the same order of product list included 'order edit 2layer 2option product'
    Then I should be redirected to One Product Manage Page
    Then 1st sku should contain 'A001'
    Then I should see 4 publish status
    Then I should see 4 product type
    Then 1st sales channel should contain shop name
    Then 1st sales channel warehouse should contain 'Primary'
    Then 1st sales channel available quantity should equal to '8'
    When I click on inventory tab
    Then 1st inventory row of variant dropdown should equal to 'R, M'
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to '10'
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to '2'
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to '8'

    Given I am on One Product Index Page
    When I input '14th Product for Checkout' to search field
    Then product list included '14th Product for Checkout' and same order of variants quantity should also equal to '0'
    Then product list included '14th Product for Checkout' and same order of stock quantity should also equal to '0'
    Then product list included '14th Product for Checkout' and same order of pend to deliver quantity should also equal to '1'
    Then product list included '14th Product for Checkout' and same order of available quantity should also equal to '0'
    Then I click manage button for the same order of product list included '14th Product for Checkout'
    
    Then I should be redirected to One Product Manage Page
    Then I should see 1 publish status
    Then I should see 1 product type
    Then 1st sales channel should contain shop name
    Then 1st product name should contain '14th Product for Checkout'
    Then 1st sales channel warehouse should contain 'Primary'
    Then 1st sales channel available quantity should contain '∞ Untracked'
    When I click on inventory tab
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to '0'
    # Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to '1'    waiting for SL-10940
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to '0'
    And ---ROLL BACK---
    Given I am on Orders Page
    Then 1st row of order links should contain order number
    And I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I select Cancelled of order status dropdown
    And I click on YES button
    Then I should not see YES button
    Then order status should equal to "Cancelled"

    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain '(dirty data)'
