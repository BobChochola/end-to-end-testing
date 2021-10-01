@OneBaseCase @ImageService @Admin @Product @createVariationProductSyncOne @fixture-sl-pos @fixture-sl-pos-admin @fixture-integration-one
Feature: Create has variation product 
  As a user of Shopline
  I want to check create product sync One

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

  @EAT-796 @EAT-796-1
  Scenario: Create has variation unlimited product and check One basic UI
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) variation product for One" to english name field
    And I click on variations tab
    And I click on variations toggle
    When I input "R" to add options field
    And I input "G" to add options field
    And I click on variations same price checkbox
    And I click on unlimited quantity checkbox
    Then I should see row of variation price field
    Then I should see row of variation member price field
    And I fill "50" to 1st row of variation price field
    And I fill "60" to 2nd row of variation price field
    And I fill "10" to 1st row of variation member price field
    And I fill "10" to 2nd row of variation member price field
    And I fill "A001" to 1st row of variation sku field
    And I fill "A002" to 2nd row of variation sku field
    And I scroll down to breadcrumb
    And I click on add button

    Then I should be redirected to Product Index Page
    Then popup title should contain "variation product for One"
    Then 1st popup panel should contain "Create Purchase Order"
    Then 2nd popup panel should contain "Directly Edit Inventory of Each Warehouse"
    Then 3rd popup panel should contain "Add Another Product"
    And I click on back to my products panel
    Then I should see row of product photo list
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain "variation product for One"
    Then 1st row of regular price list should contain "NT$50"
    Then 1st row of quantity list should contain "∞"
    Then I wait for 30 seconds for product sync

    Given I am on One Product Index Page
    When I input "variation product for One" to search field
    Then product list included 'variation product for One' and same order of stock quantity should also equal to "0"
    Then product list included 'variation product for One' and same order of variants quantity should also equal to "2"
    Then product list included 'variation product for One' and same order of pend to deliver quantity should also equal to "0"
    Then product list included 'variation product for One' and same order of available quantity should also equal to "0"
    Then I click manage button for the same order of product list included 'variation product for One'

    Then I should be redirected to One Product Manage Page
    Then 1st sales channel row of variant dropdown should contain "R"
    Then 2nd sales channel row of variant dropdown should contain "G"

    Then 1st sales channel should contain shop name
    Then 2nd sales channel should contain shop name
    Then 1st country should contain "Taiwan"
    Then 2nd country should contain "Taiwan"
    Then 1st product name should contain "variation product for One"
    Then 2nd product name should contain "variation product for One"
    Then I should see 2 product type
    Then I should see 2 publish status
    Then 1st variant should contain "R"
    Then 2nd variant should contain "G"
    Then 1st sku should contain "A001"
    Then 2nd sku should contain "A002"
    Then 1st sales channel warehouse should contain "Primary"
    Then 2nd sales channel warehouse should contain "Primary"
    Then 1st sales channel available quantity should contain "∞ Untracked"
    Then 2nd sales channel available quantity should contain "∞ Untracked"

    When I click on inventory tab
    Then 1st inventory row of variant dropdown should contain "R"
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "0"

    Then 2nd inventory row of variant dropdown should contain "G"
    Then 2nd inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "0"
    Then 2nd inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 2nd inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "0"

    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain '(dirty data)'

  @EAT-796 @EAT-796-2
  Scenario: Create has variations limited product and check One basic UI
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "variations product for One" to english name field
    And I click on variations tab
    And I click on variations toggle
    When I input "R" to 1st add options field
    And I input "G" to 1st add options field
    And I click on add variation button
    When I input "M" to 2nd add options field
    And I input "L" to 2nd add options field
    And I click on variations same price checkbox
    Then I should see variation reminder
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
    And I fill "30" to 3rd row of variation quantity field
    And I fill "40" to 4th row of variation quantity field
    And I fill "A001" to 1st row of variation sku field
    And I fill "A002" to 2nd row of variation sku field
    And I fill "A003" to 3rd row of variation sku field
    And I fill "A004" to 4th row of variation sku field

    And I scroll down to breadcrumb
    And I click on add button
    Then I should be redirected to Product Index Page
    Then popup title should contain "variations product for One"
    Then 1st popup panel should contain "Create Purchase Order"
    Then 2nd popup panel should contain "Directly Edit Inventory of Each Warehouse"
    Then 3rd popup panel should contain "Add Another Product"
    And I click on back to my products panel
    Then I should see row of product photo list
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain "variations product for One"
    Then 1st row of regular price list should contain "NT$50"
    Then 1st row of quantity list should contain "100"

    Given I am on One Product Index Page
    Then product list included 'variations product for One' and same order of stock quantity should also equal to "100"
    Then product list included 'variations product for One' and same order of variants quantity should also equal to "4"
    Then product list included 'variations product for One' and same order of pend to deliver quantity should also equal to "0"
    Then product list included 'variations product for One' and same order of available quantity should also equal to "100"
    Then I click manage button for the same order of product list included 'variations product for One'

    Then I should be redirected to One Product Manage Page
    Then 1st sales channel row of variant dropdown should contain "R, M"
    Then 2nd sales channel row of variant dropdown should contain "R, L"
    Then 3rd sales channel row of variant dropdown should contain "G, M"
    Then 4th sales channel row of variant dropdown should contain "G, L"

    Then 1st sales channel should contain shop name
    Then 2nd sales channel should contain shop name
    Then 3rd sales channel should contain shop name
    Then 4th sales channel should contain shop name

    Then 1st country should contain "Taiwan"
    Then 2nd country should contain "Taiwan"
    Then 3rd country should contain "Taiwan"
    Then 4th country should contain "Taiwan"

    Then 1st product name should contain "variations product for One"
    Then 2nd product name should contain "variations product for One"
    Then 3rd product name should contain "variations product for One"
    Then 4th product name should contain "variations product for One"

    Then I should see 4 product type
    Then I should see 4 publish status

    Then 1st variant should contain "R, M"
    Then 2nd variant should contain "R, L"
    Then 3rd variant should contain "G, M"
    Then 4th variant should contain "G, L"

    Then 1st sku should contain "A001"
    Then 2nd sku should contain "A002"
    Then 3rd sku should contain "A003"
    Then 4th sku should contain "A004"

    Then 1st sales channel warehouse should contain "Primary"
    Then 2nd sales channel warehouse should contain "Primary"
    Then 3rd sales channel warehouse should contain "Primary"
    Then 4th sales channel warehouse should contain "Primary"

    Then 1st sales channel available quantity should contain "10"
    Then 2nd sales channel available quantity should contain "20"
    Then 3rd sales channel available quantity should contain "30"
    Then 4th sales channel available quantity should contain "40"

    When I click on inventory tab
    Then 1st inventory row of variant dropdown should contain "R, M"
    Then 1st inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "10"
    Then 1st inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 1st inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "10"

    Then 2nd inventory row of variant dropdown should contain "R, L"
    Then 2nd inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "20"
    Then 2nd inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 2nd inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "20"

    Then 3rd inventory row of variant dropdown should contain "G, M"
    Then 3rd inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "30"
    Then 3rd inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 3rd inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "30"

    Then 4th inventory row of variant dropdown should contain "G, L"
    Then 4th inventory warehouse included 'Primary' and same order of inventory stock quantity should also equal to "40"
    Then 4th inventory warehouse included 'Primary' and same order of inventory pend to deliver quantity should also equal to "0"
    Then 4th inventory warehouse included 'Primary' and same order of inventory available quantity should also equal to "40"
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain '(dirty data)'
