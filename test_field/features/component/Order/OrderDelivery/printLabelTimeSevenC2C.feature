@BaseCase @Admin @Storefront @Order @OrderDelivery @printLabelTimeSevenC2C
@fixture-shop @fixture-product @fixture-payment @fixture-delivery
Feature: Print label time of 7-11 C2C order
  As a merchant
  I want to see the last printed time when click the print label button
  So that I can print the label time of 7-11 C2C order 

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
    And I select delivery dropdown option included "7-11 Pickup and pay in store (C2C)" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Pay on 7-11 Store Pickup (C2C)" of payment method dropdown
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
    Then I should see store confirm button
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
    Given I am on Orders Page
    When I select Seven Eleven C2C Order Management of Orders delivery type dropdown
    Then I should be redirected to Orders Page
    When I click on non executed tab
    Then I should see additional filters button
    Then I should see search label
    And I click on 1st row of order checkbox
    Then I mark the value of 1st row of order links as variable ordernumber
    And I click on execute shipment button
    Then I should see execute shipment popover
    And I click on execute shipment OK button
    Then I should see OK button
    And I click on OK button
    Then I should see additional filters button
    When I click on shippable tab
    Then I should see additional filters button
    Then I should see row of order links
    Then I should see 1st row of order links equals to variable ordernumber

  @printLabelTimeSevenC2C-1
  Scenario: Check orders show page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I should see print shipment label button
    When I click on print shipment label button
    Then I should see last printed time
    And last printed time should contain dateNow
    And last printed time should contain timeNow
    And last printed time should contain meridianNow

  @printLabelTimeSevenC2C-2
  Scenario: Check orders page
    Then I should see print shipment label button
    When I click on print shipment label button
    And I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I should see last printed time
    And last printed time should contain dateNow
    And last printed time should contain timeNow
    And last printed time should contain meridianNow

  @printLabelTimeSevenC2C-3
  Scenario: Check the filter label / report status with labels printed / unprinted
    And I select filter dropdown option included "Shipping Lable/ Report Export Status" of filter dropdown
    And I select label report status filter dropdown option included "Labels Unprinted" of label report status filter dropdown
    Then 2nd search label should contain "Shipping Lable/ Report Export Status is Labels Unprinted"
    Then I should see 1st row of order links equals to variable ordernumber
    When I click on 1st print shipment label button
    When I switch to 2 of tabs
    Then I should be redirected to Seven Print Shipment Page
    And I switch to 1 of tabs
    Then I should be redirected to Orders Page
    When I click on shippable tab
    Then I should see additional filters section
    And I select filter dropdown option included "Shipping Lable/ Report Export Status" of filter dropdown
    And I select label report status filter dropdown option included "Labels Printed" of label report status filter dropdown
    Then I wait for 3 seconds for loading
    Then 2nd search label should contain "Shipping Lable/ Report Export Status is Labels Printed"
    Then I should see 1st row of order links equals to variable ordernumber