@BaseCase @Admin @Storefront @Order @OrderEdit @orderEditDelivery @EAT-453
@fixture-shop @fixture-product @fixture-payment @fixture-delivery
Feature: Modify Order Delivery method
  As a merchant
  I want to modify delivery method

  Background:
    Given I am on Admin Login Page
    And I fill correct admin email to email field
    And I fill correct admin password to password field
    And I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Delivery' of delivery type dropdown
    Then shipping from edit button should contain 'Taiwan'
    Then shipping to edit button should contain 'Taiwan'
    When I click on search provider button
    Then I should see popover
    And I click on popover row of provider included "Tcat - Room Temp."
    And I click on popover ok button
    And I fill contract code to contract code field
    And I fill sender name to sender name field
    And I fill sender phone to sender phone field
    And I fill sender address to sender address field
    And I fill "(dirty data) Tcat - Room Temp." to name field
    And I select delivery fee type dropdown option included 'Flat Price' of delivery fee type dropdown
    And I fill Delivery Fee to delivery fee field
    And I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Delivery Options Page
    Then 1st row of delivery options list should contain "Tcat - Room Temp."

    Given I am on Shop Product Index Page
    When I input "15th Product for Checkout" to search field
    Then 1st product of products list should contain '15th Product for Checkout'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page

  Scenario: Modify Order Delivery method
    Given I am on Orders Page
    When I click on User Menu
    When I click on Logout
    Then I should be redirected to Admin Login Page
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
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I Refresh
    Then I should see delivery form edit button
    Then I scroll down to delivery form edit button
    When I click on delivery form edit button
    Then I should see delivery method dropdown
    When I select delivery method dropdown option included "(DBW) 7-11 C2C - Pickup only" of delivery method dropdown
    Then I should see pick store button
    When I click on pick store button
    And I switch to 2 of tabs
    Then I should be redirected to Seven Pick Store Page
    When I click on id search button
    And I switch to main frame frame
    Then I should see store id field
    And I fill store id to store id field
    And I click on search button
    And I click on 1st store list
    When I switch to default frame
    Then I should see store confirm button
    And I click on store confirm button
    And I click on agree button
    And I click on submit button
    And I switch to 1 of tabs
    Then I should be redirected to Orders Show Page
    Then 1st row of store info should equal to '7-11 Shop Code 916527'
    Then 2nd row of store info should equal to '7-11 Shop Name 清愿門市'
    Then 3rd row of store info should equal to 'Store address 台北市松山區八德路二段439號'
    When I click on delivery detail save button
    Then I should see store info required
    And I click on delivery change agree checkbox
    When I click on delivery detail save button
    Then I should see alert
    Then delivery method should contain '(DBW) 7-11 C2C - Pickup only'
    Then delivery shop code should contain '916527'
    Then delivery shop name should contain '清愿門市'
    Then delivery shop address should contain '台北市松山區八德路二段439號'
    When I click on delivery form edit button
    Then I should see delivery method dropdown
    When I select delivery method dropdown option included "Tcat - Room Temp." of delivery method dropdown
    Then I should see delivery detail save button
    And I select popup delivery address dropdown option included "Taipei City" of 1st popup delivery address dropdown
    And I select popup delivery address dropdown option included "100 Zhongzheng District" of 2nd popup delivery address dropdown
    And I fill address to popup delivery address field
    And I click on tcat time dropdown
    And I click on tcat time dropdown option included 'Any time slot'
    When I click on delivery detail save button
    Then I should see store info required
    And I click on delivery change agree checkbox
    When I click on delivery detail save button
    Then I should see alert
    Then delivery method should contain 'Tcat - Room Temp.'
    Then delivery address should contain 'Taipei City'
    Then delivery address should contain address
    Then delivery address should contain '100'
    Then delivery address should contain 'Zhongzheng District'
    Given I am on Orders Page
    When I select Tcat Room temp Order Management of Orders delivery type dropdown
    Then I should see breadcrumb
    Then breadcrumb should contain "Tcat - Room temp. Order Management"
    And ---ROLL BACK---
    Given I am on Delivery Options Page
    When I click on User Menu
    When I click on Logout
    Then I should be redirected to Admin Login Page
    And I fill correct admin email to email field
    And I fill correct admin password to password field
    And I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

    Given I am on Delivery Options Page
    Then 1st row of delivery options list should contain "Tcat - Room Temp"
    When I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain "(dirty data) Tcat - Room Temp"