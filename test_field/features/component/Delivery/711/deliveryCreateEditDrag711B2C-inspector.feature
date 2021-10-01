@PostTest @PreTest @BaseCase @Admin @Storefront @Delivery @711 @deliveryCreateEditDrag711B2C-inspector @fixture-payment @fixture-product @fixture-shop
Feature: Create Delivery 7-11 B2C via inspector
  As a merchant
  I want to create new delivery
  So that I can have different delivery for my shoppers

  Background:
    Given I am on Admin Login Page
    And I fill inspector email to email field
    And I fill correct admin password to password field
    And I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click no thanks button

  @EAT-1039-2 @EAT-1039-2-1
  Scenario: Create Delivery via inspector - 7-11 Pickup and pay in store (B2C)
    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Pick-up' of delivery type dropdown
    Then shipping from edit button should contain 'Taiwan'
    Then shipping to edit button should contain 'Taiwan'
    When I click on search provider button
    Then I should see popover
    And I click on popover row of provider included "7-11 Pickup and pay in store (B2C)"
    And I click on popover ok button
    When I fill "(dirty data) 7-11 Pickup and pay in store (B2C)" to name field
    And I fill the Parent ID to parent id field
    And I fill the Shop ID to shop id field
    And I fill the Merchant Name to merchant name field
    And I fill the Phone Number to custom support phone number field
    And I fill the description to description field
    And I select delivery fee type dropdown option included 'Flat Price' of delivery fee type dropdown
    When I fill Delivery Fee to delivery fee field
    And I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be on Delivery Options Page
    And 1st row of delivery options list should contain "7-11 Pickup and pay in store (B2C)"
    And I drag 2nd drag icon of delivery method list to 1st drag icon of delivery method list
    Then I should be redirected to Unauthorized Page
    Given I am on Delivery Options Page
    When I click on 1st edit button of delivery method list
    Then I should be redirected to Delivery Edit Page
    Then delivery type dropdown should be disabled
    When I click on language tab included 'English'
    When I select delivery execution mode dropdown option included 'Auto' of delivery execution mode dropdown
    When I fill "(dirty data) 7-11 Pickup and pay in store (B2C) edited" to name field
    When I fill '999' to parent id field
    When I fill '999' to shop id field
    When I fill '0912345678' to custom support phone number field
    When I fill 'test' to merchant name field
    When I fill 'test desctiption' to description field
    When I fill '' to delivery fee field
    Then delivery execution toggle should be checked
    When I click on delivery execution toggle
    Then delivery fee type dropdown should be disabled
    When I click on update button
    Then I should be redirected to Delivery Options Page
    When I switch to 2 of tabs    
    Given I am on Shop Product Index Page
    When I input "8th Product for Checkout" to search field
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    Then I wait for 3 seconds for loading
    Then 1st delivery dropdown option should contain '7-11 Pickup and pay in store (B2C) edited'
    When I switch to 1 of tabs
    Then I should be redirected to Delivery Options Page
    Then I should see publish button of delivery method list
    When I click on 1st publish button of delivery method list
    Then 1st row of delivery options list should contain 'Publish'
    When I switch to 2 of tabs
    Then I should be redirected to Shop Cart Page
    When I Refresh
    Then 1st delivery dropdown option should not contain '7-11 Pickup and pay in store (B2C) edited'
    When I switch to 1 of tabs
    Then I should be redirected to Delivery Options Page
    Then 1st row of delivery options list should contain '7-11 Pickup and pay in store (B2C) edited'
    When I click on 1st edit button of delivery method list
    Then I should be redirected to Delivery Edit Page
    When I click on language tab included 'English'
    When delivery execution mode dropdown option should contain 'Auto'
    When name field should equal to "(dirty data) 7-11 Pickup and pay in store (B2C) edited"
    When parent id field should equal to '999' 
    When shop id field should equal to '999'
    When custom support phone number field should equal to '0912345678'
    When merchant name field should equal to 'test'
    When description field should equal to 'test desctiption'
    When delivery fee field should equal to '0' 
    Then delivery execution toggle should not be checked
    And ---ROLL BACK---
    Given I am on Delivery Options Page
    Then I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain '7-11 Pickup and pay in store (B2C) edited'

  @EAT-1039-2 @EAT-1039-2-2
  Scenario: Create Delivery via inspector - 7-11 Pickup only (B2C)
    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Pick-up' of delivery type dropdown
    Then shipping from edit button should contain 'Taiwan'
    Then shipping to edit button should contain 'Taiwan'
    When I click on search provider button
    Then I should see popover
    And I click on popover row of provider included "7-11 Pickup only (B2C)"
    And I click on popover ok button
    And I click on add button
    Then I should see field error message
    Then field error message should contain 'Shop ID is required'
    Then 2nd field error message should contain 'Merchant Name (Please stay within 10 characters and exclude spaces and symbols.) is required'
    And I fill '@#$' to merchant name field
    Then 2nd field error message should contain 'Merchant Name (Please stay within 10 characters and exclude spaces and symbols.) is invalid'
    Then 3rd field error message should contain 'Custom Support Phone Number is required'
    When I fill "(dirty data) 7-11 Pickup only (B2C)" to name field
    And I fill the Parent ID to parent id field
    And I fill the Shop ID to shop id field
    And I fill the Merchant Name to merchant name field
    And I fill the Phone Number to custom support phone number field
    And I fill the description to description field
    And I select delivery fee type dropdown option included 'Order Weight' of delivery fee type dropdown
    And I fill "0.1" to 1st weight field
    And I fill "20" to 1st delivery by weight fee field
    And I fill "25" to 2nd delivery by weight fee field
    And I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be on Delivery Options Page
    And 1st row of delivery options list should contain "7-11 Pickup only (B2C)"
    And I drag 2nd drag icon of delivery method list to 1st drag icon of delivery method list
    Then I should be redirected to Unauthorized Page
    Given I am on Delivery Options Page
    When I click on 1st edit button of delivery method list
    Then I should be redirected to Delivery Edit Page
    Then delivery type dropdown should be disabled
    When I click on language tab included 'English'
    When I select delivery execution mode dropdown option included 'Auto' of delivery execution mode dropdown
    When I fill "(dirty data) 7-11 Pickup only (B2C) edited" to name field
    When I fill '999' to parent id field
    When I fill '999' to shop id field
    When I fill '0912345678' to custom support phone number field
    When I fill 'test' to merchant name field
    When I fill 'test desctiption' to description field
    Then 1st weight field should equal to "0.1"
    Then 1st delivery by weight fee field should equal to "20"
    Then 2nd delivery by weight fee field should equal to "25"
    When I click on add zone button
    When I fill "0.2" to 2nd weight field
    When I fill "25" to 2nd delivery by weight fee field
    When I click on add zone button
    When I fill "5.5" to 3rd weight field
    When I fill "30" to 3rd delivery by weight fee field
    When I fill "35" to 4th delivery by weight fee field
    Then delivery execution toggle should be checked
    When I click on delivery execution toggle
    Then delivery fee type dropdown should be disabled
    When I click on update button
    Then I should be redirected to Delivery Options Page
    When I switch to 2 of tabs    
    Given I am on Shop Product Index Page
    When I input "8th Product for Checkout" to search field
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    Then I wait for 3 seconds for loading
    Then 1st delivery dropdown option should contain '7-11 Pickup only (B2C) edited'
    When I switch to 1 of tabs
    Then I should be redirected to Delivery Options Page
    Then I should see publish button of delivery method list
    When I click on 1st publish button of delivery method list
    Then 1st row of delivery options list should contain 'Publish'
    When I switch to 2 of tabs
    Then I should be redirected to Shop Cart Page
    When I Refresh
    Then 1st delivery dropdown option should not contain '7-11 Pickup only (B2C) edited'
    When I switch to 1 of tabs
    Then I should be redirected to Delivery Options Page
    Then 1st row of delivery options list should contain '7-11 Pickup only (B2C) edited'
    When I click on 1st edit button of delivery method list
    Then I should be redirected to Delivery Edit Page
    When I click on language tab included 'English'
    When delivery execution mode dropdown option should contain 'Auto'
    When name field should equal to "(dirty data) 7-11 Pickup only (B2C) edited"
    When parent id field should equal to '999' 
    When shop id field should equal to '999'
    When custom support phone number field should equal to '0912345678'
    When merchant name field should equal to 'test'
    When description field should equal to 'test desctiption'
    Then delivery execution toggle should not be checked
    Then 1st weight field should equal to "0.1"
    Then 1st delivery by weight fee field should equal to "20"
    Then 2nd weight field should equal to "0.2"
    Then 2nd delivery by weight fee field should equal to "25"
    Then 3rd weight field should equal to "5.5"
    Then 3rd delivery by weight fee field should equal to "30"
    Then 4th delivery by weight fee field should equal to "35"
    And ---ROLL BACK---
    Given I am on Delivery Options Page
    Then I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain '7-11 Pickup only (B2C) edited'
