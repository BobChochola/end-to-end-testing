@BaseCase @Storefront @Admin @Order @OrderDelivery @orderExecuteShipmentSevenB2C
@fixture-shop @fixture-product @fixture-payment @fixture-delivery
Feature: Execute shipment of 7-11 B2C order
  As a merchant
  I want to Execute shipment of 7-11 B2C order

  Background:
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
    And I select delivery dropdown option included "7-11 Pickup and pay in store (B2C)" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Pay on 7-11 Store Pickup (B2C)" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I click on pick store button
    Then I should be redirected to Seven Pick Store Page
    When I click on id search button
    When I switch to main frame frame
    Then I should see store id field
    And I fill store id to store id field
    And I click on search button
    And I click on 1st store list
    When I switch to default frame
    And I click on store confirm button
    And I click on agree button
    And I click on submit button
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

  @C3764 @C3764-15
  Scenario: Execute shipment of 7-11 B2C order
    Given I am on Orders Page
    When I select Seven Eleven B2C Order Management of Orders delivery type dropdown
    Then I should see breadcrumb
    Then breadcrumb should contain "7-11 B2C Order Management"
    Then I should see additional filters button
    When I click on non executed tab
    Then I should see search label
    Then 1st row of order links should contain order number
    And I click on 1st row of order checkbox
    When I click on execute shipment button
    Then I should see execute shipment popover
    And I click on OK button
    And I click on OK button
    Then I should see additional filters button
    When I click on processing tab
    Then I should see search label
    Then 1st row of order links should contain order number