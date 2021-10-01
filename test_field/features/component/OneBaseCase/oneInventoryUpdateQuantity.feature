@OneBaseCase @OneQuickTest @Admin @Product @oneInventoryUpdateQuantity @fixture-sl-pos @fixture-sl-pos-admin @fixture-integration-one @EAT-808
Feature: check correct product after add/set quantity on inventory
  As a merchant
  I can see correct product at one after add/set quantity on inventory

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

  @EAT-808-1
  Scenario: main product add/set quantity on inventory
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    When I click on info tab
    And I fill '(dirty data) main product for stock' to english name field
    And I click on quantity and pricing tab
    And I fill '500' to regular price field
    And I fill '100' to quantity field
    And I click on add button

    Then I should be redirected to Product Index Page
    Then popup title should contain "main product for stock"
    Then 1st popup panel should contain "Create Purchase Order"
    Then 2nd popup panel should contain "Directly Edit Inventory of Each Warehouse"
    Then 3rd popup panel should contain "Add Another Product"
    And I click on back to my products panel
    Then 1st row of product list should contain "main product for stock"
    Then 1st row of regular price list should contain "500"
    Then 1st row of quantity list should contain "100"
    Then I wait for 30 seconds for products sync
    
    Given I am on One Product Index Page
    When I input "main product for stock" to search field
    Then product list included 'main product for stock' and same order of stock quantity should also equal to "100"
    Then product list included 'main product for stock' and same order of variants quantity should also equal to "0"
    Then product list included 'main product for stock' and same order of pend to deliver quantity should also equal to "0"
    Then product list included 'main product for stock' and same order of available quantity should also equal to "100"
    Then I click manage button for the same order of product list included 'main product for stock'

    Then I should be redirected to One Product Manage Page
    Then I should see 1 publish status
    Then I should see 1 product type
    Then 1st sales channel should contain shop name
    Then 1st variant should equal to '-'
    Then 1st sales channel warehouse should equal to 'Primary'
    Then 1st sales channel available quantity should equal to '100'

    When I click on inventory tab
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "100"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "100"

    Given I am on Inventory Page
    And I fill "10" to 1st row of quantity field
    And I scroll down to tab
    And I click on save button
    Then 1st row of product list should contain "110"
    Then I wait for 30 seconds for products sync
    
    Given I am on One Product Index Page
    When I input "main product for stock" to search field
    Then product list included 'main product for stock' and same order of stock quantity should also equal to "110"
    Then product list included 'main product for stock' and same order of variants quantity should also equal to "0"
    Then product list included 'main product for stock' and same order of pend to deliver quantity should also equal to "0"
    Then product list included 'main product for stock' and same order of available quantity should also equal to "110"
    Then I click manage button for the same order of product list included 'main product for stock'

    Then I should be redirected to One Product Manage Page
    Then I should see 1 publish status
    Then I should see 1 product type
    Then 1st sales channel should contain shop name
    Then 1st variant should equal to '-'
    Then 1st sales channel warehouse should equal to 'Primary'
    Then 1st sales channel available quantity should equal to '110'
    
    When I click on inventory tab
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "110"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "110"

    Given I am on Inventory Page
    And I click on 1st set button
    And I fill "0" to 1st row of quantity field
    And I scroll down to tab
    And I click on save button
    Then 1st row of product variant quantity should equal to '0'
    Then I wait for 30 seconds for products sync
    
    Given I am on One Product Index Page
    When I input "main product for stock" to search field
    Then product list included 'main product for stock' and same order of stock quantity should also equal to "0"
    Then product list included 'main product for stock' and same order of variants quantity should also equal to "0"
    Then product list included 'main product for stock' and same order of pend to deliver quantity should also equal to "0"
    Then product list included 'main product for stock' and same order of available quantity should also equal to "0"
    Then I click manage button for the same order of product list included 'main product for stock'
    
    Then I should be redirected to One Product Manage Page
    Then I should see 1 publish status
    Then I should see 1 product type
    Then 1st sales channel should contain shop name
    Then 1st variant should equal to '-'
    Then 1st sales channel warehouse should equal to 'Primary'
    Then 1st sales channel available quantity should equal to '0'
    
    When I click on inventory tab
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "0"

    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain "main product for stock"

  @EAT-808-2
  Scenario: 1 layer product update quantity on inventory
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "1 layer product for stock" to english name field
    And I click on variations tab
    And I click on variations toggle
    And I input "R" to add options field
    And I input "G" to add options field
    When I click on variations same price checkbox
    And I fill '100' to 1st row of variation price field
    And I fill '500' to 1st row of variation quantity field
    And I fill 'test1' to 1st row of variation sku field
    And I fill '200' to 2nd row of variation price field
    And I fill '1000' to 2nd row of variation quantity field
    And I fill 'test2' to 2nd row of variation sku field
    And I click on add button
    
    Then I should be redirected to Product Index Page
    Then popup title should contain "1 layer product for stock"
    Then 1st popup panel should contain "Create Purchase Order"
    Then 2nd popup panel should contain "Directly Edit Inventory of Each Warehouse"
    Then 3rd popup panel should contain "Add Another Product"
    And I click on back to my products panel
    Then 1st row of product list should contain "1 layer product for stock"
    Then 1st row of regular price list should contain "100"
    Then 1st row of quantity list should contain "1500"
    Then I wait for 30 seconds for products sync
    
    Given I am on One Product Index Page
    When I input "1 layer product for stock" to search field
    Then product list included '1 layer product for stock' and same order of stock quantity should also equal to "1500"
    Then product list included '1 layer product for stock' and same order of variants quantity should also equal to "2"
    Then product list included '1 layer product for stock' and same order of pend to deliver quantity should also equal to "0"
    Then product list included '1 layer product for stock' and same order of available quantity should also equal to "1500"
    Then I click manage button for the same order of product list included '1 layer product for stock'

    Then I should be redirected to One Product Manage Page
    Then I should see 2 publish status
    Then I should see 2 variant
    Then I should see 2 product type
    Then 1st sales channel should contain shop name
    Then 1st variant should equal to 'R'
    Then 1st sku should equal to 'test1'
    Then 1st sales channel warehouse should equal to 'Primary'
    Then 1st sales channel available quantity should equal to '500'
    Then 2nd sales channel should contain shop name
    Then 2nd variant should equal to 'G'
    Then 2nd sku should equal to 'test2'
    Then 2nd sales channel warehouse should equal to 'Primary'
    Then 2nd sales channel available quantity should equal to '1000'

    When I click on inventory tab
    Then I should see 2 inventory row of variant dropdown
    Then 1st inventory row of variant dropdown should equal to 'R'
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "500"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "500"
    Then 2nd inventory row of variant dropdown should equal to 'G'
    Then 2nd inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "1000"
    Then 2nd inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 2nd inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "1000"

    Given I am on Inventory Page
    And I fill "100" to 1st row of quantity field
    And I scroll down to tab
    And I click on save button
    Then 2nd row of product variant quantity should contain "600"
    And I click on 2st set button
    And I fill "0" to 2nd row of quantity field
    And I click on save button
    Then 3rd row of product variant quantity should equal to "0"
    # The quantity would not be updated automatically, so refresh it!
    Then I Refresh
    Then 1st row of product variant quantity should equal to "600"
    Then I wait for 30 seconds for products sync
    
    Given I am on One Product Index Page
    When I input "1 layer product for stock" to search field
    Then product list included '1 layer product for stock' and same order of stock quantity should also equal to "600"
    Then product list included '1 layer product for stock' and same order of variants quantity should also equal to "2"
    Then product list included '1 layer product for stock' and same order of pend to deliver quantity should also equal to "0"
    Then product list included '1 layer product for stock' and same order of available quantity should also equal to "600"
    Then I click manage button for the same order of product list included '1 layer product for stock'
    
    Then I should be redirected to One Product Manage Page
    Then I should see 2 publish status
    Then I should see 2 variant
    Then I should see 2 product type
    Then 1st sales channel should contain shop name
    Then 1st variant should equal to 'R'
    Then 1st sku should equal to 'test1'
    Then 1st sales channel warehouse should equal to 'Primary'
    Then 1st sales channel available quantity should equal to '600'
    Then 2nd sales channel should contain shop name
    Then 2nd variant should equal to 'G'
    Then 2nd sku should equal to 'test2'
    Then 2nd sales channel warehouse should equal to 'Primary'
    Then 2nd sales channel available quantity should equal to '0'

    When I click on inventory tab
    Then I should see 2 inventory row of variant dropdown
    Then 1st inventory row of variant dropdown should equal to 'R'
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "600"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "600"

    Then 2nd inventory row of variant dropdown should equal to 'G'
    Then 2nd inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "0"
    Then 2nd inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 2nd inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "0"

    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain "1 layer product for stock"

  @EAT-808-3
  Scenario: 2 layer product update quantity on inventory
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "2 layer product for stock" to english name field
    And I click on variations tab
    And I click on variations toggle
    And I input "R" to add options field
    And I click on add variation button
    And I input "S" to 2nd add options field
    When I click on variations same price checkbox
    And I fill '100' to 1st row of variation price field
    And I fill '500' to 1st row of variation quantity field
    And I fill 'test1' to 1st row of variation sku field
    And I click on add button
    
    Then I should be redirected to Product Index Page
    Then popup title should contain "2 layer product for stock"
    Then 1st popup panel should contain "Create Purchase Order"
    Then 2nd popup panel should contain "Directly Edit Inventory of Each Warehouse"
    Then 3rd popup panel should contain "Add Another Product"
    And I click on back to my products panel
    Then 1st row of product list should contain "2 layer product for stock"
    Then 1st row of regular price list should contain "100"
    Then 1st row of quantity list should contain "500"
    Then I wait for 30 seconds for products sync
    
    Given I am on One Product Index Page
    When I input "2 layer product for stock" to search field
    Then product list included '2 layer product for stock' and same order of stock quantity should also equal to "500"
    Then product list included '2 layer product for stock' and same order of variants quantity should also equal to "1"
    Then product list included '2 layer product for stock' and same order of pend to deliver quantity should also equal to "0"
    Then product list included '2 layer product for stock' and same order of available quantity should also equal to "500"
    Then I click manage button for the same order of product list included '2 layer product for stock'

    Then I should be redirected to One Product Manage Page
    Then sales channel should contain shop name
    Then I should see 1 publish status
    Then I should see 1 variant
    Then I should see 1 product type
    Then 1st sales channel should contain shop name
    Then 1st variant should equal to 'R, S'
    Then 1st sku should equal to 'test1'
    Then 1st sales channel warehouse should equal to 'Primary'
    Then 1st sales channel available quantity should equal to '500'
    
    When I click on inventory tab
    Then 1st inventory row of variant dropdown should equal to 'R, S'
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "500"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "500"
    
    Given I am on Inventory Page
    And I click on 1st set button
    And I fill "0" to 1st row of quantity field
    And I scroll down to tab
    And I click on save button
    Then 2nd row of product variant quantity should equal to '0'
    Then I wait for 30 seconds for products sync
    
    Given I am on One Product Index Page
    When I input "2 layer product for stock" to search field
    Then product list included '2 layer product for stock' and same order of stock quantity should also equal to "0"
    Then product list included '2 layer product for stock' and same order of variants quantity should also equal to "1"
    Then product list included '2 layer product for stock' and same order of pend to deliver quantity should also equal to "0"
    Then product list included '2 layer product for stock' and same order of available quantity should also equal to "0"
    Then I click manage button for the same order of product list included '2 layer product for stock'
    
    Then I should be redirected to One Product Manage Page
    Then sales channel should contain shop name
    Then I should see 1 publish status
    Then I should see 1 variant
    Then I should see 1 product type
    Then 1st sales channel should contain shop name
    Then 1st variant should equal to 'R, S'
    Then 1st sku should equal to 'test1'
    Then 1st sales channel warehouse should equal to 'Primary'
    Then 1st sales channel available quantity should equal to '0'
    When I click on inventory tab
    Then 1st inventory row of variant dropdown should equal to 'R, S'
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "0"
    
    Given I am on Inventory Page
    And I fill "10" to 1st row of quantity field
    And I scroll down to tab
    And I click on save button
    Then 1st row of product list should contain "10"
    Then I wait for 30 seconds for products sync
    
    Given I am on One Product Index Page
    When I input "2 layer product for stock" to search field
    Then product list included '2 layer product for stock' and same order of stock quantity should also equal to "10"
    Then product list included '2 layer product for stock' and same order of variants quantity should also equal to "1"
    Then product list included '2 layer product for stock' and same order of pend to deliver quantity should also equal to "0"
    Then product list included '2 layer product for stock' and same order of available quantity should also equal to "10"
    Then I click manage button for the same order of product list included '2 layer product for stock'

    Then I should be redirected to One Product Manage Page
    Then sales channel should contain shop name
    Then I should see 1 publish status
    Then I should see 1 variant
    Then I should see 1 product type
    Then 1st sales channel should contain shop name
    Then 1st variant should equal to 'R, S'
    Then 1st sku should equal to 'test1'
    Then 1st sales channel warehouse should equal to 'Primary'
    Then 1st sales channel available quantity should equal to '10'
    
    When I click on inventory tab
    Then 1st inventory row of variant dropdown should equal to 'R, S'
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "10"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "10"
    
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain "2 layer product for stock"