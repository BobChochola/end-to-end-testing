@OneBaseCase @Admin @Product @updateInventoryOnOneCheckAdminQuantityCorrectly @fixture-product @fixture-sl-pos @fixture-sl-pos-admin @fixture-integration-one
Feature: Update inventory on one management, product editor can update quantity correctly
  As a user of Shopline
  I can set product inventory on One, check sync prodcut index/edit page 

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

  @EAT-815 @EAT-815-1
  Scenario: set novariation product inventory on One, check sync prodcut index/edit page 
    Given I am on Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st row of product list should contain '1st Product for Checkout'
    Then I mark the value of 1st row of quantity list as variable origin quantity

    Given I am on One Product Index Page
    When I input '1st Product for Checkout' to search field
    Then I click manage button for the same order of product list included '1st Product for Checkout'
    Then I should be redirected to One Product Manage Page
    Then sales channel should contain shop name

    When I click on inventory tab
    Then inventory stock quantity should contain origin quantity
    And I fill "10" to quantity field
    Then inventory stock quantity should contain "→"
    And I click on inventory save button
    Then 1st inventory stock quantity should contain add ten quantity
    And I wait for 20 seconds for snyc

    Given I am on Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st row of product list should contain '1st Product for Checkout'
    Then 1st row of quantity list should contain add ten quantity
    And I click on row of edit button
    Then I should be redirected to Product Edit Page
    And I click on quantity and pricing tab
    Then quantity field should contain add ten quantity

  @EAT-815 @EAT-815-2
  Scenario: set 1 layer product inventory on One, check sync prodcut index/edit page
    Given I am on Product Index Page
    When I input "19th Product for Checkout" to search field
    Then 1st row of product list should contain '19th Product for Checkout'
    Then I mark the value of 1st row of quantity list as variable origin quantity

    Given I am on One Product Index Page
    When I input '19th Product for Checkout' to search field
    Then I click manage button for the same order of product list included '19th Product for Checkout'
    Then I should be redirected to One Product Manage Page
    Then sales channel should contain shop name

    When I click on inventory tab
    Then inventory stock quantity should contain origin quantity
    And I fill "10" to quantity field
    And I click on decrease button
    Then inventory stock quantity should contain "→"
    And I click on inventory save button
    Then 1st inventory stock quantity should contain decrease ten quantity
    And I wait for 20 seconds for snyc

    Given I am on Product Index Page
    When I input "19th Product for Checkout" to search field
    Then 1st row of product list should contain '19th Product for Checkout'
    Then 1st row of quantity list should contain decrease ten quantity
    And I click on row of edit button
    Then I should be redirected to Product Edit Page
    And I click on quantity and pricing tab
    Then quantity field should contain decrease ten quantity

  @EAT-815 @EAT-815-3
  Scenario: set 2 layer product inventory on One, check sync prodcut index/edit page
    Given I am on Product Index Page
    When I input "10th Product for Checkout" to search field
    Then 1st row of product list should contain '10th Product for Checkout'
    And I click on row of edit button
    Then I should be redirected to Product Edit Page
    And I click on variations tab
    Then I mark the value of 1st row of variation quantity field as variable origin quantity

    Given I am on One Product Index Page
    When I input '10th Product for Checkout' to search field
    Then I click manage button for the same order of product list included '10th Product for Checkout'
    Then I should be redirected to One Product Manage Page
    Then sales channel should contain shop name

    When I click on inventory tab
    Then inventory row of variant dropdown included 'Blue, S' and same order of primary inventory stock quantity should also contain origin quantity
    Then I fill '10' to primary quantity field for the same order of inventory row of variant dropdown equal to 'Blue, S'
    When I click primary decrease button for the same order of inventory row of variant dropdown included 'Blue, S'
    When I click primary inventory save button for the same order of inventory row of variant dropdown included 'Blue, S'
    Then inventory row of variant dropdown included 'Blue, S' and same order of primary inventory stock quantity should also contain decrease ten quantity

    Given I am on Product Index Page
    When I input "10th Product for Checkout" to search field
    Then 1st row of product list should contain '10th Product for Checkout'
    And I click on row of edit button
    Then I should be redirected to Product Edit Page
    And I click on quantity and pricing tab
    And I click on variations tab
    Then 1st row of variation quantity field should contain decrease ten quantity