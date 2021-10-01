@BaseCase @Admin @Storefront @Order @OrderDelivery @logsExecuteShipmentFamilyC2C
@fixture-shop @fixture-delivery @fixture-product @fixture-payment
Feature: Execute shipment of Family Mart C2C order
  As a merchant
  I want to see order activities logs
  after executing shipment of Family Mart C2C order

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

  @EAT-421 @EAT-421-1
  Scenario: Family Mart Pickup and pay in store (C2C)
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Family Mart Pickup and pay in store (C2C)" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Pay on Family Mart Store Pickup (C2C)" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I click on pick store button
    Then I should be redirected to Family Mart Pick Store Page
    When I click on name search button
    And I should see store name field
    And I fill store name to store name field
    And I click on search button
    And I should see row of search store list
    And I click on 1st row of search store list
    And I click on confirm store button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info

    Given I am on Orders Page
    When I select Family Mart C2C Order Management of Orders delivery type dropdown
    Then I should see additional filters button
    When I click on non executed tab
    Then I should see search label
    Then 1st row of order links should contain order number
    And I click on 1st row of order checkbox
    Then I should see execute shipment button
    And I click on execute shipment button
    Then I should see execute shipment popover
    And I click on execute shipment OK button
    And I click on OK button
    Then I should see additional filters button
    When I click on processing tab
    Then I should see search label
    Then 1st row of order links should contain order number

    And I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I mark the value of shipment number as variable shipmentnumber
    And I should see 3 row of activity log list
    Then I should see 1st row of activity log list contains variable shipmentnumber

  @EAT-421 @EAT-421-2
  Scenario: Family Mart Pickup only (C2C)
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button

    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Family Mart Pickup only (C2C)" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I click on pick store button
    Then I should be redirected to Family Mart Pick Store Page
    When I click on name search button
    And I should see store name field
    And I fill store name to store name field
    And I click on search button
    And I should see row of search store list
    And I click on 1st row of search store list
    And I click on confirm store button

    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info

    Given I am on Orders Page
    When I select Family Mart C2C Order Management of Orders delivery type dropdown
    Then I should see additional filters button
    When I click on non executed tab
    Then I should see search label
    Then 1st row of order links should contain order number
    And I click on 1st row of order checkbox
    Then I should see execute shipment button
    And I click on execute shipment button
    Then I should see execute shipment popover
    And I click on execute shipment OK button
    And I click on OK button
    Then I should see additional filters button
    When I click on processing tab
    Then I should see search label
    Then 1st row of order links should contain order number

    And I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I mark the value of shipment number as variable shipmentnumber
    And I should see 3 row of activity log list
    Then I should see 1st row of activity log list contains variable shipmentnumber

  @EAT-421 @EAT-421-3
  Scenario: Re-execute shipment of Family Mart C2C order
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Family Mart Pickup and pay in store (C2C)" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Pay on Family Mart Store Pickup (C2C)" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button

    Then I should be redirected to Shop Checkout Page
    When I click on pick store button
    Then I should be redirected to Family Mart Pick Store Page
    When I click on name search button
    And I should see store name field
    And I fill store name to store name field
    And I click on search button
    And I should see row of search store list
    And I click on 1st row of search store list
    And I click on confirm store button

    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info

    Given I am on Orders Page
    When I select Family Mart C2C Order Management of Orders delivery type dropdown
    Then I should see additional filters button
    When I click on non executed tab
    Then I should see search label
    Then 1st row of order links should contain order number
    And I click on 1st row of order checkbox
    Then I should see execute shipment button
    And I click on execute shipment button
    Then I should see execute shipment popover
    And I click on execute shipment OK button
    And I click on OK button
    Then I should see additional filters button
    When I click on processing tab
    Then I should see search label
    Then 1st row of order links should contain order number

    And I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I Refresh
    When I scroll down to payment status
    And I click on delivery form edit button
    And I fill "Ame" to third party recipient name field
    And I click on save button
    Then I should see popover
    When I click on OK button
    Then I should see execute shipment popover
    When I click on execute shipment ok button
    Then I should see popover
    When I click on re-execute shipment ok button
    Then I should not see popover
    When I mark the value of shipment number as variable shipmentnumber
    And I should see 6 row of activity log list
    Then I should see 1st row of activity log list contains variable shipmentnumber