@OneBaseCase @Admin @Product @oneAddNewVariantOption @fixture-sl-pos @fixture-sl-pos-admin @fixture-integration-one @EAT-805
Feature: check correct product after adding new variant option
  As a merchant
  I can see correct product at one after adding new variant option

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

  @EAT-805-1
  Scenario: 1 layer product add new variant (unlimited)
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) 1 layer add new variant" to english name field
    And I click on quantity and pricing tab
    And I fill "500" to regular price field
    And I click on unlimited quantity checkbox
    And I click on variations tab
    And I click on variations toggle
    And I input "R" to add options field
    And I click on add button
    Then I should be redirected to Product Index Page
    Then popup title should contain "1 layer add new variant"
    Then 1st popup panel should contain "Create Purchase Order"
    Then 2nd popup panel should contain "Directly Edit Inventory of Each Warehouse"
    Then 3rd popup panel should contain "Add Another Product"
    And I click on back to my products panel
    Then 1st row of product list should contain "1 layer add new variant"
    Then 1st row of regular price list should contain "500"
    Then 1st row of quantity list should contain "∞"
    Then I wait for 30 seconds for products sync

    Given I am on One Product Index Page
    When I input "1 layer add new variant" to search field
    Then product list included '1 layer add new variant' and same order of stock quantity should also equal to "0"
    Then product list included '1 layer add new variant' and same order of variants quantity should also equal to "1"
    Then product list included '1 layer add new variant' and same order of pend to deliver quantity should also equal to "0"
    Then product list included '1 layer add new variant' and same order of available quantity should also equal to "0"
    Then I click manage button for the same order of product list included '1 layer add new variant'

    Then I should be redirected to One Product Manage Page
    Then I should see 1 publish status
    Then I should see 1 product type
    Then I should see 1 variant
    Then 1st sales channel should contain shop name
    Then 1st variant should equal to 'R'
    Then 1st sales channel warehouse should contain 'Primary'
    Then 1st sales channel available quantity should contain '∞'

    When I click on inventory tab
    Then 1st inventory row of variant dropdown should contain 'R'
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "0"

    Given I am on Product Index Page
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on tab included 'Variations'
    Then I should see variations toggle
    When I input 'G' to add options field
    And I input 'B' to add options field
    And I click on add button

    Then I should be redirected to Product Index Page
    Then I wait for 30 seconds for products sync

    Given I am on One Product Index Page
    When I input "1 layer add new variant" to search field
    Then product list included '1 layer add new variant' and same order of stock quantity should also equal to "0"
    Then product list included '1 layer add new variant' and same order of variants quantity should also equal to "3"
    Then product list included '1 layer add new variant' and same order of pend to deliver quantity should also equal to "0"
    Then product list included '1 layer add new variant' and same order of available quantity should also equal to "0"
    Then I click manage button for the same order of product list included '1 layer add new variant'

    Then I should be redirected to One Product Manage Page
    Then sales channel should contain shop name
    Then I should see 3 publish status
    Then I should see 3 variant
    Then I should see 3 product type
    Then 1st sales channel should contain shop name
    Then 1st variant should equal to 'R'
    Then 1st sales channel warehouse should contain 'Primary'
    Then 1st sales channel available quantity should contain '∞'
    Then 2nd sales channel should contain shop name
    Then 2nd variant should equal to 'G'
    Then 2nd sales channel warehouse should contain 'Primary'
    Then 2nd sales channel available quantity should contain '∞'
    Then 3rd sales channel should contain shop name
    Then 3rd variant should equal to 'B'
    Then 3rd sales channel warehouse should contain 'Primary'
    Then 3rd sales channel available quantity should contain '∞'

    When I click on inventory tab
    Then 1st inventory row of variant dropdown should contain 'R'
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "0"

    Then 2nd inventory row of variant dropdown should contain 'G'
    Then 2nd inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "0"
    Then 2nd inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 2nd inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "0"

    Then 3rd inventory row of variant dropdown should contain 'B'
    Then 3rd inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "0"
    Then 3rd inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 3rd inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "0"

    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain "1 layer add new variant"

  @EAT-805-2
  Scenario: 2 layer product add new variant (limited)
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) 2 layer add new variant" to english name field
    And I click on quantity and pricing tab
    And I fill "500" to regular price field
    And I click on variations tab
    And I click on variations toggle
    And I input "R" to add options field
    And I click on add variation button
    And I input "S" to 2nd add options field
    When I click on variations same price checkbox
    And I fill '100' to 1st row of variation price field
    And I fill 'test1' to 1st row of variation sku field
    And I click on add button

    Then I should be redirected to Product Index Page
    Then popup title should contain "2 layer add new variant"
    Then 1st popup panel should contain "Create Purchase Order"
    Then 2nd popup panel should contain "Directly Edit Inventory of Each Warehouse"
    Then 3rd popup panel should contain "Add Another Product"
    And I click on back to my products panel
    Then 1st row of product list should contain "2 layer add new variant"
    Then 1st row of regular price list should contain "100"
    Then 1st row of quantity list should contain "0"
    Then I wait for 30 seconds for products sync

    Given I am on One Product Index Page
    Then 1st product list should contain '2 layer add new variant'
    Then product list included '2 layer add new variant' and same order of stock quantity should also equal to "0"
    Then product list included '2 layer add new variant' and same order of variants quantity should also equal to "1"
    Then product list included '2 layer add new variant' and same order of pend to deliver quantity should also equal to "0"
    Then product list included '2 layer add new variant' and same order of available quantity should also equal to "0"
    Then I click manage button for the same order of product list included '2 layer add new variant'

    Then I should be redirected to One Product Manage Page
    Then I should see 1 publish status
    Then I should see 1 variant
    Then I should see 1 product type
    Then 1st sales channel should contain shop name
    Then 1st variant should equal to 'R, S'
    Then 1st sku should equal to 'test1'
    Then 1st sales channel warehouse should contain 'Primary'
    Then 1st sales channel available quantity should equal to '0'

    When I click on inventory tab
    Then 1st inventory row of variant dropdown should contain 'R, S'
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "0"

    Given I am on Product Index Page
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on tab included 'Variations'
    Then I should see variations toggle
    When I input 'G' to add options field
    And I input 'M' to 2nd add options field
    And I fill '200' to 2nd row of variation price field
    And I fill '300' to 3rd row of variation price field
    And I fill '400' to 4th row of variation price field
    When I fill 'test2' to 2nd row of variation sku field
    And I fill 'test3' to 3rd row of variation sku field
    And I fill 'test4' to 4th row of variation sku field
    And I click on add button

    Then I should be redirected to Product Index Page
    Then I wait for 30 seconds for products sync

    Given I am on One Product Index Page
    When I input "2 layer add new variant" to search field
    Then product list included '2 layer add new variant' and same order of stock quantity should also equal to "0"
    Then product list included '2 layer add new variant' and same order of variants quantity should also equal to "4"
    Then product list included '2 layer add new variant' and same order of pend to deliver quantity should also equal to "0"
    Then product list included '2 layer add new variant' and same order of available quantity should also equal to "0"
    Then I click manage button for the same order of product list included '2 layer add new variant'

    Then I should be redirected to One Product Manage Page
    Then sales channel should contain shop name
    Then I should see 4 publish status
    Then I should see 4 variant
    Then I should see 4 product type
    Then 1st sales channel should contain shop name
    Then 1st variant should equal to 'R, S'
    Then 1st sku should equal to 'test1'
    Then 1st sales channel warehouse should contain 'Primary'
    Then 1st sales channel available quantity should equal to '0'
    Then 2nd sales channel should contain shop name
    Then 2nd variant should equal to 'R, M'
    Then 2nd sku should equal to 'test2'
    Then 2nd sales channel warehouse should contain 'Primary'
    Then 2nd sales channel available quantity should equal to '0'
    Then 3rd sales channel should contain shop name
    Then 3rd variant should equal to 'G, S'
    Then 3rd sku should equal to 'test3'
    Then 3rd sales channel warehouse should contain 'Primary'
    Then 3rd sales channel available quantity should equal to '0'
    Then 4th sales channel should contain shop name
    Then 4th variant should equal to 'G, M'
    Then 4th sku should equal to 'test4'
    Then 4th sales channel warehouse should contain 'Primary'
    Then 4th sales channel available quantity should equal to '0'

    When I click on inventory tab
    Then 1st inventory row of variant dropdown should contain 'R, S'
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "0"

    Then 2nd inventory row of variant dropdown should contain 'R, M'
    Then 2nd inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "0"
    Then 2nd inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 2nd inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "0"

    Then 3rd inventory row of variant dropdown should contain 'G, S'
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "0"

    Then 4th inventory row of variant dropdown should contain 'G, M'
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "0"

    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain "2 layer add new variant"