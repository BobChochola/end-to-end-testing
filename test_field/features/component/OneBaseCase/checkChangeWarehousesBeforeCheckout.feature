@OneBaseCase @Admin @Storefront @Product @checkChangeWarehousesBeforeCheckout @fixture-shop @fixture-product @fixture-delivery @fixture-payment @fixture-warehouse @fixture-sl-pos @fixture-sl-pos-admin @fixture-integration-one
Feature: Checkout product before change warehouse, checkout again and check UI
  As a user of Shopline
  I checkout before change warehouse, chekcout again still correct

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

  @EAT-980 @EAT-980-1
  Scenario: Checkout novariation product before change warehouse, checkout again and check UI
    Given I am on One Product Index Page
    When I input '15th Product for Checkout' to search field
    Then product list included '15th Product for Checkout' and same order of stock quantity should also equal to "0"
    Then product list included '15th Product for Checkout' and same order of variants quantity should also equal to "0"
    Then product list included '15th Product for Checkout' and same order of pend to deliver quantity should also equal to "0"
    Then product list included '15th Product for Checkout' and same order of available quantity should also equal to "0"
    Then I click manage button for the same order of product list included '15th Product for Checkout'

    Then I should be redirected to One Product Manage Page
    Then I should see 1 publish status
    Then I should see 1 product type
    Then 1st sales channel should contain shop name
    Then 1st variant should equal to '-'
    Then 1st sales channel warehouse should equal to 'Primary'
    Then 1st sales channel available quantity should contain '∞'

    And I click on inventory tab
    Then 1st inventory warehouse should contain "Primary"
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "0"

    Then 2nd inventory warehouse should contain "testQA"
    Then 1st inventory warehouse included 'testQA' and same order of inventory stock quantity should also equal to "0"
    Then 1st inventory warehouse included 'testQA' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 1st inventory warehouse included 'testQA' and same order of inventory available quantity should also equal to "0"

    Given I am on Shop Product Index Page
    When I input "15th Product for Checkout" to search field
    Then 1st product of products list should contain "15th Product for Checkout"
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

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then warehouse label should contain "Primary"

    Given I am on One Product Index Page
    When I input '15th Product for Checkout' to search field
    Then product list included '15th Product for Checkout' and same order of stock quantity should also equal to "0"
    Then product list included '15th Product for Checkout' and same order of variants quantity should also equal to "0"
    Then product list included '15th Product for Checkout' and same order of pend to deliver quantity should also equal to "1"
    Then product list included '15th Product for Checkout' and same order of available quantity should also equal to "0"
    Then I click manage button for the same order of product list included '15th Product for Checkout'

    Then I should be redirected to One Product Manage Page
    Then I should see 1 publish status
    Then I should see 1 product type
    Then 1st sales channel should contain shop name
    Then 1st variant should equal to '-'
    Then 1st sales channel warehouse should equal to 'Primary'
    Then 1st sales channel available quantity should contain '∞'

    And I click on inventory tab
    Then 1st inventory warehouse should contain "Primary"
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "1"
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "0"

    Then 2nd inventory warehouse should contain "testQA"
    Then 1st inventory warehouse included 'testQA' and same order of inventory stock quantity should also equal to "0"
    Then 1st inventory warehouse included 'testQA' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 1st inventory warehouse included 'testQA' and same order of inventory available quantity should also equal to "0"

    And I click on sales channel tab
    And I click on sales channel edit button
    When I select warehouse dropdown option included 'testQA' of warehouse dropdown
    Then I should see sales channel save button
    And I click on sales channel save button
    Then I Refresh
    Then sales channel warehouse should contain "testQA"

    Given I am on Shop Product Index Page
    When I input "15th Product for Checkout" to search field
    Then 1st product of products list should contain "15th Product for Checkout"
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
    Then I mark the value of order confirm info as variable order info 2

    Given I am on Orders Page
    Then 1st row of order links should contain order number 2
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then warehouse label should contain "testQA"

    Given I am on One Product Index Page
    When I input '15th Product for Checkout' to search field
    Then product list included '15th Product for Checkout' and same order of stock quantity should also equal to "0"
    Then product list included '15th Product for Checkout' and same order of variants quantity should also equal to "0"
    Then product list included '15th Product for Checkout' and same order of pend to deliver quantity should also equal to "2"
    Then product list included '15th Product for Checkout' and same order of available quantity should also equal to "0"
    Then I click manage button for the same order of product list included '15th Product for Checkout'

    Then I should be redirected to One Product Manage Page
    Then I should see 1 publish status
    Then I should see 1 product type
    Then 1st sales channel should contain shop name
    Then 1st variant should equal to '-'
    Then 1st sales channel warehouse should equal to 'testQA'
    Then 1st sales channel available quantity should contain '∞'

    And I click on inventory tab
    Then 1st inventory warehouse should contain "Primary"
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "1"
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "0"

    Then 2nd inventory warehouse should contain "testQA"
    Then 1st inventory warehouse included 'testQA' and same order of inventory stock quantity should also equal to "0"
    Then 1st inventory warehouse included 'testQA' and same order of inventory pend to deliver quantity should also equal to "1"
    Then 1st inventory warehouse included 'testQA' and same order of inventory available quantity should also equal to "0"

    And ---ROLL BACK---
    And I click on sales channel tab
    And I click on sales channel edit button
    When I select warehouse dropdown option included 'Primary' of warehouse dropdown
    And I click on sales channel save button
    Then sales channel warehouse should contain "Primary"
    
    Given I am on Orders Page
    Then 1st row of order links should contain order number 2
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I select Cancelled of order status dropdown
    And I click on send notification checkbox
    And I click on YES button
    Then order status should equal to "Cancelled"

    Given I am on Orders Page
    Then 2nd row of order links should contain order number
    When I click on 2nd row of order links
    Then I should be redirected to Orders Show Page
    When I select Cancelled of order status dropdown
    And I click on send notification checkbox
    And I click on YES button
    Then order status should equal to "Cancelled"

  @EAT-980 @EAT-980-2
  Scenario: Checkout 1 layer product before change warehouse, checkout again and check UI
    Given I am on One Product Index Page
    When I input '19th Product for Checkout' to search field
    Then product list included '19th Product for Checkout' and same order of pend to deliver quantity should also equal to "0"
    Then I click manage button for the same order of product list included '19th Product for Checkout'

    Then I should be redirected to One Product Manage Page
    Then I should see 1 publish status
    Then I should see 1 product type
    Then 1st sales channel should contain shop name
    Then 1st variant should equal to 'Blue'
    Then 1st sales channel warehouse should equal to 'Primary'

    And I click on inventory tab
    Then 1st inventory warehouse should contain "Primary"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"

    Then 2nd inventory warehouse should contain "testQA"
    Then 2nd inventory warehouse included 'testQA' and same order of inventory pend to deliver quantity should also equal to "0"
    Then I fill "10" to 2nd quantity field
    Then 2nd inventory stock quantity should contain "→"
    And I click on 2nd inventory save button
    Then 1st inventory warehouse included 'testQA' and same order of inventory stock quantity should also equal to "10"

    Given I am on Shop Product Index Page
    When I input "19th Product for Checkout" to search field
    Then 1st product of products list should contain "19th Product for Checkout"
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

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then warehouse label should contain "Primary"

    Given I am on One Product Index Page
    When I input '19th Product for Checkout' to search field
    Then product list included '19th Product for Checkout' and same order of pend to deliver quantity should also equal to "1"
    Then I click manage button for the same order of product list included '19th Product for Checkout'

    Then I should be redirected to One Product Manage Page
    Then I should see 1 publish status
    Then I should see 1 product type
    Then 1st sales channel should contain shop name
    Then 1st variant should equal to 'Blue'
    Then 1st sales channel warehouse should equal to 'Primary'

    And I click on inventory tab
    Then 1st inventory warehouse should contain "Primary"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "1"

    Then 2nd inventory warehouse should contain "testQA"
    Then 1st inventory warehouse included 'testQA' and same order of inventory pend to deliver quantity should also equal to "0"

    And I click on sales channel tab
    And I click on sales channel edit button
    When I select warehouse dropdown option included 'testQA' of warehouse dropdown
    And I click on sales channel save button
    Then I Refresh
    Then sales channel warehouse should contain "testQA"

    Given I am on Shop Product Index Page
    When I input "19th Product for Checkout" to search field
    Then 1st product of products list should contain "19th Product for Checkout"
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
    Then I mark the value of order confirm info as variable order info 2

    Given I am on Orders Page
    Then 1st row of order links should contain order number 2
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then warehouse label should contain "testQA"

    Given I am on One Product Index Page
    When I input '19th Product for Checkout' to search field
    Then product list included '19th Product for Checkout' and same order of pend to deliver quantity should also equal to "2"
    Then I click manage button for the same order of product list included '19th Product for Checkout'

    Then I should be redirected to One Product Manage Page
    Then I should see 1 publish status
    Then I should see 1 product type
    Then 1st sales channel should contain shop name
    Then 1st variant should equal to 'Blue'
    Then 1st sales channel warehouse should equal to 'testQA'

    And I click on inventory tab
    Then 1st inventory warehouse should contain "Primary"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "1"

    Then 2nd inventory warehouse should contain "testQA"
    Then 1st inventory warehouse included 'testQA' and same order of inventory pend to deliver quantity should also equal to "1"

    And ---ROLL BACK---
    And I click on sales channel tab
    And I click on sales channel edit button
    When I select warehouse dropdown option included 'Primary' of warehouse dropdown
    And I click on sales channel save button
    Then sales channel warehouse should contain "Primary"
    
    Given I am on Orders Page
    Then 1st row of order links should contain order number 2
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I select Cancelled of order status dropdown
    And I click on send notification checkbox
    And I click on YES button
    Then order status should equal to "Cancelled"

    Given I am on Orders Page
    Then 2nd row of order links should contain order number
    When I click on 2nd row of order links
    Then I should be redirected to Orders Show Page
    When I select Cancelled of order status dropdown
    And I click on send notification checkbox
    And I click on YES button
    Then order status should equal to "Cancelled"

    Given I am on One Product Index Page
    When I input '19th Product for Checkout' to search field
    Then I click manage button for the same order of product list included '19th Product for Checkout'
    Then I should be redirected to One Product Manage Page
    And I click on inventory tab

    And I click on 2nd decrease button
    And I fill "10" to 2nd quantity field
    Then 2nd inventory stock quantity should contain "→"
    And I click on 2nd inventory save button

  @EAT-980 @EAT-980-3
  Scenario: Checkout 2 layer product before change warehouse, checkout again and check UI
    Given I am on One Product Index Page
    When I input '10th Product for Checkout' to search field
    Then product list included '10th Product for Checkout' and same order of variants quantity should also contain '4'
    Then product list included '10th Product for Checkout' and same order of pend to deliver quantity should also contain '0'
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
    
    When I click on inventory tab
    Then 1st inventory warehouse should contain "Primary"
    Then 2nd inventory warehouse should contain "testQA"
    Then inventory row of variant dropdown included 'Blue, S' and same order of primary inventory pend to deliver quantity should also equal to "0"
    Then inventory row of variant dropdown included 'Blue, S' and same order of testqa inventory pend to deliver quantity should also equal to "0"
    
    Then inventory row of variant dropdown included 'Blue, M' and same order of primary inventory pend to deliver quantity should also equal to "0"
    Then inventory row of variant dropdown included 'Blue, M' and same order of testqa inventory pend to deliver quantity should also equal to "0"
    Then I fill '10' to testqa quantity field for the same order of inventory row of variant dropdown equal to 'Blue, M'
    When I click testqa inventory save button for the same order of inventory row of variant dropdown included 'Blue, M'
    Then inventory row of variant dropdown included 'Blue, M' and same order of testqa inventory stock quantity should also equal to "10"

    Then inventory row of variant dropdown included 'Red, S' and same order of primary inventory pend to deliver quantity should also equal to "0"
    Then inventory row of variant dropdown included 'Red, S' and same order of testqa inventory pend to deliver quantity should also equal to "0"
    
    Then inventory row of variant dropdown included 'Red, M' and same order of primary inventory pend to deliver quantity should also equal to "0"
    Then inventory row of variant dropdown included 'Red, M' and same order of testqa inventory pend to deliver quantity should also equal to "0"

    Given I am on Shop Product Index Page
    When I input "10th Product for Checkout" to search field
    Then 1st product of products list should contain "10th Product for Checkout"
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

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then warehouse label should contain "Primary"

    Given I am on One Product Index Page
    When I input '10th Product for Checkout' to search field
    Then product list included '10th Product for Checkout' and same order of pend to deliver quantity should also equal to "1"
    Then I click manage button for the same order of product list included '10th Product for Checkout'

    Then I should be redirected to One Product Manage Page
    Then I should see 4 publish status
    Then I should see 4 product type
    Then 1st sales channel should contain shop name
    Then 2nd sales channel should contain shop name
    Then 3rd sales channel should contain shop name
    Then 4th sales channel should contain shop name
    Then variant included 'Blue, S' and same order of sales channel warehouse should also contain "Primary"
    Then variant included 'Blue, M' and same order of sales channel warehouse should also contain "Primary"
    Then variant included 'Red, S' and same order of sales channel warehouse should also contain "Primary"
    Then variant included 'Red, M' and same order of sales channel warehouse should also contain "Primary"

    And I click on inventory tab
    Then inventory row of variant dropdown included 'Blue, S' and same order of primary inventory pend to deliver quantity should also equal to "1"
    Then inventory row of variant dropdown included 'Blue, S' and same order of testqa inventory pend to deliver quantity should also equal to "0"
    Then I fill '10' to testqa quantity field for the same order of inventory row of variant dropdown equal to 'Blue, S'
    When I click testqa inventory save button for the same order of inventory row of variant dropdown included 'Blue, S'
    Then inventory row of variant dropdown included 'Blue, S' and same order of testqa inventory stock quantity should also equal to "10"

    Then inventory row of variant dropdown included 'Blue, M' and same order of primary inventory pend to deliver quantity should also equal to "0"
    Then inventory row of variant dropdown included 'Blue, M' and same order of testqa inventory pend to deliver quantity should also equal to "0"  

    Then inventory row of variant dropdown included 'Red, S' and same order of primary inventory pend to deliver quantity should also equal to "0"
    Then inventory row of variant dropdown included 'Red, S' and same order of testqa inventory pend to deliver quantity should also equal to "0"

    Then inventory row of variant dropdown included 'Red, M' and same order of primary inventory pend to deliver quantity should also equal to "0"
    Then inventory row of variant dropdown included 'Red, M' and same order of testqa inventory pend to deliver quantity should also equal to "0"

    And I click on sales channel tab
    And I click sales channel edit button for the same order of variant included 'Blue, S'
    When I select warehouse dropdown option included 'testQA' of warehouse dropdown
    And I click on 1st sales channel save button
    Then I Refresh
    Then variant included 'Blue, S' and same order of sales channel warehouse should also contain "testQA"

    Given I am on Shop Product Index Page
    When I input "10th Product for Checkout" to search field
    Then 1st product of products list should contain "10th Product for Checkout"
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
    Then I mark the value of order confirm info as variable order info 2

    Given I am on Orders Page
    Then 1st row of order links should contain order number 2
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then warehouse label should contain "testQA"

    Given I am on One Product Index Page
    When I input '10th Product for Checkout' to search field
    Then product list included '10th Product for Checkout' and same order of pend to deliver quantity should also equal to "2"
    Then I click manage button for the same order of product list included '10th Product for Checkout'

    Then I should be redirected to One Product Manage Page
    Then I should see 4 publish status
    Then I should see 4 product type
    Then 1st sales channel should contain shop name
    Then 2nd sales channel should contain shop name
    Then 3rd sales channel should contain shop name
    Then 4th sales channel should contain shop name
    Then variant included 'Blue, S' and same order of sales channel warehouse should also contain "testQA"
    Then variant included 'Blue, M' and same order of sales channel warehouse should also contain "Primary"
    Then variant included 'Red, S' and same order of sales channel warehouse should also contain "Primary"
    Then variant included 'Red, M' and same order of sales channel warehouse should also contain "Primary"

    And I click on inventory tab
    Then inventory row of variant dropdown included 'Blue, S' and same order of primary inventory pend to deliver quantity should also equal to "1"
    Then inventory row of variant dropdown included 'Blue, S' and same order of testqa inventory pend to deliver quantity should also equal to "1"

    Then inventory row of variant dropdown included 'Blue, M' and same order of primary inventory pend to deliver quantity should also equal to "0"
    Then inventory row of variant dropdown included 'Blue, M' and same order of testqa inventory pend to deliver quantity should also equal to "0"

    Then inventory row of variant dropdown included 'Red, S' and same order of primary inventory pend to deliver quantity should also equal to "0"
    Then inventory row of variant dropdown included 'Red, S' and same order of testqa inventory pend to deliver quantity should also equal to "0"

    Then inventory row of variant dropdown included 'Red, M' and same order of primary inventory pend to deliver quantity should also equal to "0"
    Then inventory row of variant dropdown included 'Red, M' and same order of testqa inventory pend to deliver quantity should also equal to "0"
    And ---ROLL BACK---
    And I click on sales channel tab
    And I click sales channel edit button for the same order of variant included 'Blue, S'
    When I select warehouse dropdown option included 'Primary' of warehouse dropdown
    And I click on sales channel save button
    Then variant included 'Blue, S' and same order of sales channel warehouse should also contain "Primary"
    
    Given I am on Orders Page
    Then 1st row of order links should contain order number 2
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I select Cancelled of order status dropdown
    And I click on send notification checkbox
    And I click on YES button
    Then order status should equal to "Cancelled"

    Given I am on Orders Page
    Then 2nd row of order links should contain order number
    When I click on 2nd row of order links
    Then I should be redirected to Orders Show Page
    When I select Cancelled of order status dropdown
    And I click on send notification checkbox
    And I click on YES button
    Then order status should equal to "Cancelled"

    Given I am on One Product Index Page
    When I input '10th Product for Checkout' to search field
    Then I click manage button for the same order of product list included '10th Product for Checkout'
    Then I should be redirected to One Product Manage Page
    And I click on inventory tab

    Then I fill '10' to testqa quantity field for the same order of inventory row of variant dropdown equal to 'Blue, M'
    When I click testqa decrease button for the same order of inventory row of variant dropdown included 'Blue, M'
    When I click testqa inventory save button for the same order of inventory row of variant dropdown included 'Blue, M'
    Then inventory row of variant dropdown included 'Blue, M' and same order of testqa inventory stock quantity should also equal to "0"
    Then I fill '10' to testqa quantity field for the same order of inventory row of variant dropdown equal to 'Blue, S'
    When I click testqa decrease button for the same order of inventory row of variant dropdown included 'Blue, S'
    When I click testqa inventory save button for the same order of inventory row of variant dropdown included 'Blue, S'
    Then inventory row of variant dropdown included 'Blue, M' and same order of testqa inventory stock quantity should also equal to "0"