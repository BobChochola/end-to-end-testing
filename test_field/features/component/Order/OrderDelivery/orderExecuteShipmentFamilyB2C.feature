@BaseCase @Storefront @Admin @Order @OrderDelivery @orderExecuteShipmentFamilyB2C
@fixture-shop @fixture-payment @fixture-delivery @fixture-product
Feature: Execute shipment of Family Mart B2C order
  As a merchant
  I want to Execute shipment of Family Mart B2C order

  Background:
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Family Mart Pickup and pay in store (B2C)" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Pay on Family Mart Store Pickup (B2C)" of payment method dropdown
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

  @C3764 @C3764-17
  Scenario: Execute shipment of Family Mart B2C order
    Given I am on Orders Page
    When I select Family Mart B2C Order Management of Orders delivery type dropdown
    Then I should see breadcrumb
    Then breadcrumb should contain "Family Mart B2C Order Management"
    Then I should see additional filters button
    When I click on tab included 'Non-executed'
    Then I should see search label
    Then 1st row of order links should contain order number
    And I click on 1st row of order checkbox
    Then I should see execute shipment button
    And I click on execute shipment button
    Then I should see execute shipment popover
    And I click on OK button
    And I click on OK button
    Then I should see additional filters button
    When I click on tab included 'Shippable'
    Then I should see search label
    Then 1st row of order links should contain order number