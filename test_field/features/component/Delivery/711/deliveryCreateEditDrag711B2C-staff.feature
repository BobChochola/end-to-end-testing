@PostTest @PreTest @BaseCase @Admin @Storefront @Delivery @711 @deliveryCreateEditDrag711B2C-staff
@fixture-delivery @fixture-payment @fixture-product @fixture-shop
Feature: Create Delivery 7-11 B2C via staff
  As a nonsuperadmin merchant
  I can't input some field on delivery form

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click no thanks button

  @C3889-1 @EAT-1039-4 @EAT-1039-4-1
  Scenario: Create Delivery via super admin - 7-11 Pickup and pay in store (B2C)
    Given I am on Staff Setting Page
    And I click on add button
    Then I should be redirected to Staff Setting Add Page
    And I fill 'shoplineqa@gmail.com' to email field
    And I click on add button
    Then I should be redirected to Edit Staff Permissions Page
    When I click on unchecked give full access checkbox
    And I click on update button
    Then I should be redirected to Staff Setting Page
    When I select Logout of User Menu
    Then I should be redirected to Admin Login Page
    And I fill 'shoplineqa@gmail.com' to email field
    And I fill '12345678' to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click no thanks button

    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Pick-up' of delivery type dropdown
    Then shipping from edit button should contain 'Taiwan'
    Then shipping to edit button should contain 'Taiwan'
    When I click on search provider button
    Then I should see popover
    And I click on popover row of provider included "7-11 Pickup and pay in store (B2C)"
    And I click on popover ok button
    Then parent id field should be disabled
    Then shop id field should be disabled
    Then merchant name field should be disabled
    Then custom support phone number field should be disabled
    Then add button should be disabled
    Given I am on Delivery Options Page
    Then row of delivery options list included '7-11 Pickup and pay in store (B2C)' and same order of row of delivery options list should not contain 'Delete'
    When I scroll down to add button
    When I drag drag icon of delivery method list for the same order of row of delivery options list included '7-11 Pickup and pay in store (B2C)' to drag icon of delivery method list
    When I click edit button of delivery method list for the same order of row of delivery options list included '7-11 Pickup and pay in store (B2C)'
    Then I should be redirected to Delivery Edit Page
    Then parent id field should be disabled
    Then shop id field should be disabled
    Then merchant name field should be disabled
    Then delivery execution toggle should be disabled
    When I click on language tab included 'English'
    When I select delivery execution mode dropdown option included 'Auto' of delivery execution mode dropdown
    When I fill "7-11 Pickup and pay in store (B2C) edited" to name field
    When I fill '0912345678' to custom support phone number field
    When I fill 'test desctiption' to description field
    When I fill '' to delivery fee field
    When I click on update button
    Then I should be redirected to Delivery Options Page
    When I switch to 2 of tabs    
    Given I am on Shop Product Index Page
    When I input "8th Product for Checkout" to search field
    Then 1st product of products list should contain '8th Product for Checkout'
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
    When I click edit button of delivery method list for the same order of row of delivery options list included '7-11 Pickup and pay in store (B2C)'
    Then I should be redirected to Delivery Edit Page
    When I click on language tab included 'English'
    When name field should contain '7-11 Pickup and pay in store (B2C) edited'
    When description field should contain 'test desctiption' 
    When delivery fee field should equal to '0'
    When delivery execution mode dropdown option should contain 'Auto' 
    Then ---ROLL BACK---
    When I select delivery execution mode dropdown option included 'Manual' of delivery execution mode dropdown
    When I fill "7-11 Pickup and pay in store (B2C)" to name field
    When I fill the Phone Number to custom support phone number field
    When I fill the description to description field
    When I fill Delivery Fee to delivery fee field
    When I click on update button
    Then I should be redirected to Delivery Options Page
    Then I should see publish button of delivery method list
    When I click on 1st publish button of delivery method list
    Then 1st row of delivery options list should contain 'Unpublish'
    Given I am on Dashboard Page
    When I select Logout of User Menu
    Then I should be redirected to Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click no thanks button
    Given I am on Staff Setting Page
    Then I should see edit button
    And I click on edit button
    Then I should be redirected to Edit Staff Permissions Page
    When I click on give full access checkbox
    And I click on update button
    Then I should be redirected to Staff Setting Page
    When I click on delete button
    Then I should see alert
    And I click on alert checkbox
    And I click on ok button
    Then staff should not contain 'shoplineqa@gmail.com'

  @C3889-2 @EAT-1039-4 @EAT-1039-4-2
  Scenario: Create Delivery via super admin - 7-11 Pickup only (B2C)
    Given I am on Staff Setting Page
    And I click on add button
    Then I should be redirected to Staff Setting Add Page
    And I fill 'shoplineqa@gmail.com' to email field
    And I click on add button
    Then I should be redirected to Edit Staff Permissions Page
    When I click on unchecked give full access checkbox
    And I click on update button
    Then I should be redirected to Staff Setting Page
    When I select Logout of User Menu
    Then I should be redirected to Admin Login Page
    And I fill 'shoplineqa@gmail.com' to email field
    And I fill '12345678' to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click no thanks button

    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Pick-up' of delivery type dropdown
    Then shipping from edit button should contain 'Taiwan'
    Then shipping to edit button should contain 'Taiwan'
    When I click on search provider button
    Then I should see popover
    And I click on popover row of provider included "7-11 Pickup only (B2C)"
    And I click on popover ok button
    Then parent id field should be disabled
    Then shop id field should be disabled
    Then merchant name field should be disabled
    Then custom support phone number field should be disabled
    Then add button should be disabled
    Given I am on Delivery Options Page
    Then row of delivery options list included '7-11 Pickup only (B2C)' and same order of row of delivery options list should not contain 'Delete'
    When I scroll down to add button
    When I drag drag icon of delivery method list for the same order of row of delivery options list included '7-11 Pickup only (B2C)' to drag icon of delivery method list
    When I click edit button of delivery method list for the same order of row of delivery options list included '7-11 Pickup only (B2C)'
    Then I should be redirected to Delivery Edit Page
    Then parent id field should be disabled
    Then shop id field should be disabled
    Then merchant name field should be disabled
    Then delivery execution toggle should be disabled
    When I click on language tab included 'English'
    When I select delivery execution mode dropdown option included 'Auto' of delivery execution mode dropdown
    When I fill "7-11 Pickup only (B2C) edited" to name field
    When I fill '0912345678' to custom support phone number field
    When I fill 'test desctiption' to description field
    When I fill '' to delivery fee field
    When I click on update button
    Then I should be redirected to Delivery Options Page
    When I switch to 2 of tabs    
    Given I am on Shop Product Index Page
    When I input "8th Product for Checkout" to search field
    Then 1st product of products list should contain '8th Product for Checkout'
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
    When I click edit button of delivery method list for the same order of row of delivery options list included '7-11 Pickup only (B2C)'
    Then I should be redirected to Delivery Edit Page
    When I click on language tab included 'English'
    When name field should contain '7-11 Pickup only (B2C) edited'
    When description field should contain 'test desctiption' 
    When delivery fee field should equal to '0'
    When delivery execution mode dropdown option should contain 'Auto' 
    Then ---ROLL BACK---
    When I select delivery execution mode dropdown option included 'Manual' of delivery execution mode dropdown
    When I fill "7-11 Pickup only (B2C)" to name field
    When I fill the Phone Number to custom support phone number field
    When I fill the description to description field
    When I fill Delivery Fee to delivery fee field
    When I click on update button
    Then I should be redirected to Delivery Options Page
    Then I should see publish button of delivery method list
    When I click on 1st publish button of delivery method list
    Then 1st row of delivery options list should contain 'Unpublish'
    Given I am on Dashboard Page
    When I select Logout of User Menu
    Then I should be redirected to Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click no thanks button
    Given I am on Staff Setting Page
    Then I should see edit button
    And I click on edit button
    Then I should be redirected to Edit Staff Permissions Page
    When I click on give full access checkbox
    And I click on update button
    Then I should be redirected to Staff Setting Page
    When I click on delete button
    Then I should see alert
    And I click on alert checkbox
    And I click on ok button
    Then staff should not contain 'shoplineqa@gmail.com'