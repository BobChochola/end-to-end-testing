@BaseCase @Admin @Storefront @Order @OrderDelivery @change711C2CDeliveryMethodInShippingStatus @fixture-shop @fixture-product @fixture-payment @fixture-delivery @EAT-467
Feature: Change 711 C2C Delivery Method In Shipping Status
  As a merchant
  I want to change 711 C2C delivery method in shipping status which from unfufilled to shipping

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
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "7-11 Pickup only (C2C)" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 3 seconds for loading
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

    Given I am on Orders Page
    When I select Seven Eleven C2C Order Management of Orders delivery type dropdown
    Then I should see breadcrumb
    Then breadcrumb should contain "7-11 C2C Order Management"
    When I click on tab included 'Non-executed'
    Then I should see additional filters button
    Then I should see search label
    Then 1st row of order links should contain order number
    And I click on 1st row of order checkbox
    And I should see execute shipment button
    And I click on execute shipment button
    Then I should see execute shipment popover
    And I click on execute shipment OK button
    Then I should see OK button
    And I click on OK button
    Then I should see additional filters button
    When I click on tab included 'Shippable'
    Then I should see additional filters button
    Then I should see row of order links
    Then 1st row of order links should contain order number

  Scenario: Change Shipping Status
    And I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I scroll down to update order delivery status dropdown
    When I select update order delivery status option included "Shipping" of update order delivery status dropdown
    And I should see confirm popover
    And I click on send notification checkbox
    And I click on YES button
    And I should not see confirm popover
    Then delivery status should contain "Shipping"
    Then 1st row of activity log list should contain "Updated Order Delivery As Shipping"
    Then I should not see delivery form edit button
    And I select ZH of language dropdown
    Then delivery status should contain "發貨中"
    And I select EN of language dropdown

    When I select update order delivery status option included "Unfulfilled" of update order delivery status dropdown
    And I should see confirm popover
    And I click on send notification checkbox
    And I click on YES button
    And I should not see confirm popover
    Then delivery status should contain "Unfulfilled"
    Then 1st row of activity log list should contain "Updated Order Delivery As Unfulfilled"
    Then I should see delivery form edit button
    When I click on delivery form edit button
    And I fill edited name to third party recipient name field
    And I fill edited phone to third party recipient phone field
    And I select delivery method dropdown option included "Custom Delivery" of delivery method dropdown
    Then I should see edit delivery detail popover
    And I click on delivery change agree checkbox
    And I click on delivery detail save button
    Then I should not see edit delivery detail popover
    Then delivery method should contain "Custom Delivery"
    Then recipient name should contain edited name
    Then recipient phone should contain edited phone

    And I wait for 100 seconds for mail sent
    Given I am on Google Mail Page
    Then I should see account field
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input order number to search field
    Then I should see search mail list
    When I click on row of mail list included "Delivery status is updated to: Shipping"
    Then mail detail should contain "Delivery status: Shipping"
    When I input order number to search field
    Then I should see search mail list
    When I click on row of mail list included "Delivery status is updated to: Unfulfilled"
    Then mail detail should contain "Delivery status: Unfulfilled"