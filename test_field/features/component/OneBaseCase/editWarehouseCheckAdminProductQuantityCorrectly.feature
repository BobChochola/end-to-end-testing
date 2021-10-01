@OneBaseCase @OneQuickTest @Admin @Product @editWarehouseCheckAdminProductQuantityCorrectly @fixture-product @fixture-warehouse @fixture-sl-pos @fixture-sl-pos-admin @fixture-integration-one
Feature: replacement warehouse management check admin product correctly
  As a user of Shopline
  I can change warehouse in one and ckeck admin product

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

  @EAT-816 @EAT-816-1
  Scenario: edit novariation product inventory on warehouse, check sync prodcut inventory page
    Given I am on One Product Index Page
    When I input '1st Product for Checkout' to search field
    Then I click manage button for the same order of product list included '1st Product for Checkout'
    Then I should be redirected to One Product Manage Page
    Then I should see 1 publish status
    Then I should see 1 product type
    Then 1st sales channel should contain shop name
    Then 1st variant should equal to '-'
    And I click on inventory tab
    Then 1st inventory warehouse should contain "Primary"
    Then I mark the value of 1st inventory stock quantity as variable old quantity
    Then 2nd inventory warehouse should contain "testQA"
    Then I mark the value of 2nd inventory stock quantity as variable origin quantity
    Then I fill "10" to 2nd quantity field
    Then 2nd inventory stock quantity should contain "→"
    And I click on 2nd inventory save button
    Then 2nd inventory stock quantity should contain add ten quantity

    And I click on sales channel tab
    And I click on sales channel edit button
    When I select warehouse dropdown option included 'testQA' of warehouse dropdown
    And I click on sales channel save button
    Then I Refresh
    Then sales channel warehouse should contain "testQA"
    Then sales channel available quantity should contain add ten quantity

    Given I am on Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st row of product list should contain '1st Product for Checkout'
    Then 1st row of quantity list should contain add ten quantity
    And I click on row of edit button
    Then I should be redirected to Product Edit Page
    And I click on quantity and pricing tab
    Then quantity field should contain add ten quantity

    Given I am on Inventory Page
    When I input '1st Product for Checkout' to search field
    Then 1st row of product list should contain '1st Product for Checkout'
    Then inventory of online shop should contain add ten quantity

    And ---ROLL BACK---
    Given I am on One Product Index Page
    When I input '1st Product for Checkout' to search field
    Then I click manage button for the same order of product list included '1st Product for Checkout'
    Then I should be redirected to One Product Manage Page
    And I click on inventory tab
    Then inventory warehouse should contain "Primary"
    Then 1st inventory stock quantity should contain old quantity

    And I click on sales channel tab
    And I click on sales channel edit button
    When I select warehouse dropdown option included 'Primary' of warehouse dropdown
    And I click on sales channel save button
    Then sales channel warehouse should contain "Primary"
    Then sales channel available quantity should contain old quantity
    
    And I click on inventory tab
    And I click on 2nd decrease button
    Then I fill "10" to 2nd quantity field
    Then 2nd inventory stock quantity should contain "→"
    And I click on 2nd inventory save button
    Then 2nd inventory stock quantity should equal to origin quantity

  @EAT-816 @EAT-816-2
  Scenario: edit 1 layer product inventory on warehouse, check sync prodcut inventory page
    Given I am on One Product Index Page
    When I input '19th Product for Checkout' to search field
    Then I click manage button for the same order of product list included '19th Product for Checkout'
    Then I should be redirected to One Product Manage Page
    When I click on inventory tab
    And I fill "20" to 2nd quantity field
    Then 2nd inventory stock quantity should contain "→"
    And I click on inventory save button
    And I wait for 5 seconds for snyc

    Given I am on One Product Index Page
    When I input '19th Product for Checkout' to search field
    Then I click manage button for the same order of product list included '19th Product for Checkout'
    Then I should be redirected to One Product Manage Page
    Then sales channel should contain shop name
    Then I should see 1 publish status
    Then I should see 1 product type
    Then 1st sales channel should contain shop name
    Then 1st variant should equal to 'Blue'

    And I click on inventory tab
    Then 1st inventory warehouse should contain "Primary"
    Then I mark the value of 1st inventory stock quantity as variable old quantity
    Then 2nd inventory warehouse should contain "testQA"
    Then I mark the value of 2nd inventory stock quantity as variable origin quantity
    And I click on 2nd decrease button
    And I fill "10" to 2nd quantity field
    Then 2nd inventory stock quantity should contain "→"
    And I click on 2nd inventory save button
    Then 2nd inventory stock quantity should equal to decrease ten quantity

    And I click on sales channel tab
    And I click on sales channel edit button
    When I select warehouse dropdown option included 'testQA' of warehouse dropdown
    And I click on sales channel save button
    Then I Refresh
    Then sales channel warehouse should contain "testQA"
    Then sales channel available quantity should equal to decrease ten quantity

    Given I am on Product Index Page
    When I input "19th Product for Checkout" to search field
    Then 1st row of product list should contain '19th Product for Checkout'
    Then 1st row of quantity list should contain decrease ten quantity
    And I click on row of edit button 
    Then I should be redirected to Product Edit Page
    And I click on variations tab
    Then row of variation quantity field should contain decrease ten quantity

    Given I am on Inventory Page
    When I input '19th Product for Checkout' to search field
    Then 1st row of product list should contain '19th Product for Checkout'
    Then inventory of online shop should contain decrease ten quantity

    And ---ROLL BACK---
    Given I am on One Product Index Page
    When I input '19th Product for Checkout' to search field
    Then I click manage button for the same order of product list included '19th Product for Checkout'
    Then I should be redirected to One Product Manage Page
    And I click on inventory tab
    Then inventory warehouse should contain "Primary"
    Then I mark the value of 1st inventory stock quantity as variable old quantity

    And I click on sales channel tab
    And I click on sales channel edit button
    When I select warehouse dropdown option included 'Primary' of warehouse dropdown
    And I click on sales channel save button
    Then sales channel warehouse should contain "Primary"
    Then sales channel available quantity should contain old quantity
    
    And I click on inventory tab
    Then I fill "10" to 2nd quantity field
    Then 2nd inventory stock quantity should contain "→"
    And I click on 2nd inventory save button
    Then 2nd inventory stock quantity should equal to origin quantity

  @EAT-816 @EAT-816-3
  Scenario: edit 2 layer product inventory on warehouse, check sync prodcut inventory page
    Given I am on One Product Index Page
    When I input '10th Product for Checkout' to search field
    Then I click manage button for the same order of product list included '10th Product for Checkout'
    Then I should be redirected to One Product Manage Page
    Then I should see 4 publish status
    Then I should see 4 product type
    Then 1st sales channel should contain shop name
    Then 2nd sales channel should contain shop name
    Then 3rd sales channel should contain shop name
    Then 4th sales channel should contain shop name
    Then I mark the value of sales channel available quantity for the same order of variant equal to 'Blue, M' as variable origin quantity 2
    Then I mark the value of sales channel available quantity for the same order of variant equal to 'Red, S' as variable origin quantity 3
    Then I mark the value of sales channel available quantity for the same order of variant equal to 'Red, M' as variable origin quantity 4

    And I click on inventory tab
    Then 1st inventory warehouse should contain "Primary"
    Then 2nd inventory warehouse should contain "testQA"
    Then I mark the value of primary inventory stock quantity for the same order of inventory row of variant dropdown equal to 'Blue, S' as variable old quantity
    Then I mark the value of testqa inventory stock quantity for the same order of inventory row of variant dropdown equal to 'Blue, S' as variable origin quantity
    Then I fill '10' to testqa quantity field for the same order of inventory row of variant dropdown equal to 'Blue, S'
    When I click testqa inventory save button for the same order of inventory row of variant dropdown included 'Blue, S'

    And I click on sales channel tab
    And I click sales channel edit button for the same order of variant included 'Blue, S'
    When I select warehouse dropdown option included 'testQA' of warehouse dropdown
    And I click on sales channel save button
    Then I Refresh
    Then variant included 'Blue, S' and same order of sales channel warehouse should also contain "testQA"
    Then variant included 'Blue, S' and same order of sales channel available quantity should also contain add ten quantity
    Then variant included 'Blue, M' and same order of sales channel available quantity should also contain origin quantity 2
    Then variant included 'Red, S' and same order of sales channel available quantity should also contain origin quantity 3
    Then variant included 'Red, M' and same order of sales channel available quantity should also contain origin quantity 4

    Given I am on Product Index Page
    When I input "10th Product for Checkout" to search field
    Then 1st row of product list should contain '10th Product for Checkout'
    And I click on row of edit button 
    Then I should be redirected to Product Edit Page
    And I click on variations tab
    Then 1st row of variation quantity field should not contain old quantity
    Then 1st row of variation quantity field should contain add ten quantity
    Then 2nd row of variation quantity field should contain origin quantity 2
    Then 3rd row of variation quantity field should contain origin quantity 3
    Then 4th row of variation quantity field should contain origin quantity 4

    Given I am on Inventory Page
    When I input '10th Product for Checkout' to search field
    Then 1st row of product list should contain '10th Product for Checkout'
    Then 2nd inventory of online shop should not contain old quantity
    Then 2nd inventory of online shop should contain add ten quantity
    Then 3rd inventory of online shop should contain origin quantity 2
    Then 4th inventory of online shop should contain origin quantity 3
    Then 5th inventory of online shop should contain origin quantity 4

    And ---ROLL BACK---
    Given I am on One Product Index Page
    When I input '10th Product for Checkout' to search field
    Then I click manage button for the same order of product list included '10th Product for Checkout'
    Then I should be redirected to One Product Manage Page
    And I click on inventory tab
    Then 1st inventory warehouse should contain "Primary"
    Then inventory row of variant dropdown included 'Blue, S' and same order of primary inventory stock quantity should also contain old quantity

    And I click on sales channel tab
    Then I should see 4 publish status
    Then I should see 4 product type
    Then 1st sales channel should contain shop name
    Then 2nd sales channel should contain shop name
    Then 3rd sales channel should contain shop name
    Then 4th sales channel should contain shop name
    And I click sales channel edit button for the same order of variant included 'Blue, S'
    When I select warehouse dropdown option included 'Primary' of warehouse dropdown
    And I click on sales channel save button
    Then variant included 'Blue, S' and same order of sales channel warehouse should also contain "Primary"
    Then variant included 'Blue, S' and same order of sales channel available quantity should also contain old quantity
    Then variant included 'Blue, M' and same order of sales channel available quantity should also contain origin quantity 2
    Then variant included 'Red, S' and same order of sales channel available quantity should also contain origin quantity 3
    Then variant included 'Red, M' and same order of sales channel available quantity should also contain origin quantity 4
    
    And I click on inventory tab
    When I click testqa decrease button for the same order of inventory row of variant dropdown included 'Blue, S'
    Then I fill '10' to testqa quantity field for the same order of inventory row of variant dropdown equal to 'Blue, S'
    When I click testqa inventory save button for the same order of inventory row of variant dropdown included 'Blue, S'
    Then inventory row of variant dropdown included 'Blue, S' and same order of testqa inventory stock quantity should also contain origin quantity