@BaseCase @Admin @Delivery @711CrossBorder @deliveryCreate711CrossBorderPickUpOnly @fixture-711-cross-delivery @EAT-1144
Feature: Create 7-11 cross border pick-up only
  As a merchant
  I want to create 711 cross border pick-up only. So that I can sell my product to other country. 

  Background:
    Given I am on Admin Login Page
    And I fill correct admin email to email field
    And I fill correct admin password to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

  @EAT-1144-2
  Scenario: Only super admin can create 7-11 cross border home delivery.7-11 coss border only can choose HK, Singapore, Ma.
    Given I am on Delivery Create Page
    And I select delivery type dropdown option included 'Pick-up' of delivery type dropdown
    When I click on shipping to edit button
    Then I should see popover
    When I click on popover row of country included 'Hong Kong'
    When I click on popover ok button
    Then shipping from edit button should contain 'Taiwan'
    Then shipping to edit button should contain 'Hong Kong'
    When I click on search provider button
    Then I should see popover
    And I click on popover row of provider included "7-11 Cross border pick-up only"
    And I click on popover ok button
    And I fill the 711 CorossBorder Parent ID to parent id field
    And I fill the 711 CorossBorder Shop ID to shop id field
    When I select product name dropdown option included 'Others' of product name dropdown
    Then I should see cross border sender name field
    And I fill '中文' to cross border sender name field
    When I click on add button
    Then I should see field error message
    And 1st field error message should contain 'Please fill in package information in English is invalid'
    And I fill 'other' to cross border sender name field
    And I fill sender name to sender name field
    And I fill sender phone to sender phone field
    And I fill sender address to sender address field
    And I should see delivery execution toggle
    And name field should contain '7-11 Cross border pick-up only'
    When I select delivery fee type dropdown option included 'Order Weight' of delivery fee type dropdown
    Then I should see select shipping countries link
    When I click on select shipping countries link
    Then I should see shipping zone settings popup
    Then I should see 3 row of nonapplicable shipping countries
    And 1st row of nonapplicable shipping countries should contain 'Hong Kong'
    And 2nd row of nonapplicable shipping countries should contain 'Malaysia'
    And 3nd row of nonapplicable shipping countries should contain 'Singapore'
    And I click on row of nonapplicable shipping continents included 'Asia'
    When I click on right angle bracket button
    Then nonapplicable shipping countries should not contain 'Asia'
    Then nonapplicable shipping countries should not contain 'Hong Kong'
    Then nonapplicable shipping countries should not contain 'Malaysia'
    Then nonapplicable shipping countries should not contain 'Singapore'
    Then row of applicable shipping continents should contain 'Asia'
    Then 1st row of applicable shipping countries should contain 'Hong Kong'
    Then 2nd row of applicable shipping countries should contain 'Malaysia'
    Then 3rd row of applicable shipping countries should contain 'Singapore'
    When I click on ok button
    Then shipping zone area should contain 'You can set advanced delivery options for Malaysia.Check the boxes below if you wish to provide such service.'
    And I should see west malaysia checkbox
    And I should see east malaysia checkbox
    And I click on west malaysia checkbox
    And I click on east malaysia checkbox
    When I click on add shipping zone button
    Then I should see 4 delivery fee field
    When I click on 2nd select shipping countries link
    Then I should see shipping zone settings popup
    Then I should not see row of nonapplicable shipping countries
    Then applicable shipping countries should not contain 'Asia'
    Then applicable shipping countries should not contain 'Hong Kong'
    Then applicable shipping countries should not contain 'Malaysia'
    Then applicable shipping countries should not contain 'Singapore'
    Then I click on ok button
    And I click on 2nd delete shipping zone link
    And I fill '10' to weight field
    And I fill '10' to delivery fee field
    And I fill '20' to 2nd delivery fee field
    When I click on add button
    When I click on confirm adding button
    Then I should be redirected to Delivery Options Page
    And 1st row of delivery options list should contain '7-11 Cross border pick-up only'
    When I select Logout of User Menu
    Then I should be redirected to Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

    Given I am on Delivery Options Page
    And 1st row of delivery options list should contain '7-11 Cross border pick-up only'
    And 1st row of delivery options list should not contain 'Delete'
    When I click on edit button of delivery method list
    Then I should be redirected to Delivery Edit Page
    Then parent id field should be disabled
    Then parent id field should contain the 711 CorossBorder Parent ID
    And shop id field should be disabled
    Then shop id field should contain the 711 CorossBorder Shop ID
    And product name dropdown should contain 'Other'
    And sender name field should contain the sender name
    And sender phone field should contain the sender phone
    And sender address field should contain the sender address
    And name field should contain '7-11 Cross border pick-up only'
    And I fill '(dirty data)EAT-1144 7-11 Cross border pick-up only' to name field
    And I should see delivery execution toggle
    And delivery execution toggle should be disabled
    And I should see select shipping countries link
    And west malaysia checkbox should be checked
    And east malaysia checkbox should be checked
    And west malaysia checkbox should be enabled
    And east malaysia checkbox should be enabled
    And weight field should contain '10'
    And 1st delivery fee field should contain '10'
    And 2nd delivery fee field should contain '20'
    When I click on update button
    Then I should be redirected to Delivery Options Page
    Then 1st row of delivery options list should contain 'EAT-1144 7-11 Cross border pick-up only'
    When I click publish button of delivery method list for the same order of row of delivery options list included 'EAT-1144 7-11 Cross border pick-up only'

    Given I am on Delivery Create Page
    And I select delivery type dropdown option included 'Pick-up' of delivery type dropdown
    When I click on shipping to edit button
    Then I should see popover
    When I click on popover row of country included 'Hong Kong'
    When I click on popover ok button
    Then shipping from edit button should contain 'Taiwan'
    Then shipping to edit button should contain 'Hong Kong'
    When I click on search provider button
    Then I should see popover
    And I click on popover row of provider included "7-11 Cross border pick-up only"
    And I click on popover ok button
    Then I should see merchant not allowed create reminder
    Then merchant not allowed create reminder should contain 'This feature is only available for certain plans. Click here for pricing details on the plans.'

    Given I am on Staff Setting Add Page
    When I fill qa email to email field
    And I click on add button
    Then I should be redirected to Edit Staff Permissions Page
    And I click on control-label checkbox included 'Delivery Options'
    And I click on update button
    Then I should be redirected to Staff Setting Page
    When I select Logout of User Menu
    Then I should be redirected to Admin Login Page
    And I fill qa email to email field
    And I fill qa password to password field
    And I click on login button
    And I should see successful login

    Given I am on Delivery Options Page
    And 1st row of delivery options list should contain 'EAT-1144 7-11 Cross border pick-up only'
    And 1st row of delivery options list should not contain 'Delete'
    When I click on edit button of delivery method list
    Then I should be redirected to Delivery Edit Page
    Then parent id field should be disabled
    Then parent id field should contain the 711 CorossBorder Parent ID
    And shop id field should be disabled
    Then shop id field should contain the 711 CorossBorder Shop ID
    And product name dropdown should contain 'Other'
    And sender name field should contain the sender name
    And sender phone field should contain the sender phone
    And sender address field should contain the sender address
    And name field should contain 'EAT-1144 7-11 Cross border pick-up only'
    And I fill '(dirty data) 7-11 Cross border pick-up only' to name field
    And I should see delivery execution toggle
    And delivery execution toggle should be disabled
    And I should see select shipping countries link
    And west malaysia checkbox should be checked
    And east malaysia checkbox should be checked
    And west malaysia checkbox should be enabled
    And east malaysia checkbox should be enabled
    And weight field should contain '10'
    And 1st delivery fee field should contain '10'
    And 2nd delivery fee field should contain '20'
    When I click on update button
    Then I should be redirected to Delivery Options Page
    Then 1st row of delivery options list should contain '(dirty data) 7-11 Cross border pick-up only'
    When I click publish button of delivery method list for the same order of row of delivery options list included '(dirty data) 7-11 Cross border pick-up only'

    Given I am on Delivery Create Page
    And I select delivery type dropdown option included 'Pick-up' of delivery type dropdown
    When I click on shipping to edit button
    Then I should see popover
    When I click on popover row of country included 'Hong Kong'
    When I click on popover ok button
    Then shipping from edit button should contain 'Taiwan'
    Then shipping to edit button should contain 'Hong Kong'
    When I click on search provider button
    Then I should see popover
    And I click on popover row of provider included "7-11 Cross border pick-up only"
    And I click on popover ok button
    Then I should see merchant not allowed create reminder
    Then merchant not allowed create reminder should contain 'This feature is only available for certain plans. Click here for pricing details on the plans.'

    Given I am on Delivery Options Page
    When I select Logout of User Menu
    Then I should be redirected to Admin Login Page
    And I fill correct admin email to email field
    And I fill correct admin password to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button
    Given I am on Delivery Options Page
    Then 1st row of delivery options list should contain '(dirty data) 7-11 Cross border pick-up only'
    When I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain '(dirty data) 7-11 Cross border pick-up only'

    And ---ROLL BACK---
    Then ---I NEED TO ROLLBACK Delivery Options Page---
    Given I am on Staff Setting Page
    When I click on 1st delete button
    Then I should see alert
    And I click on alert checkbox
    And I click on ok button
    Then staff should not contain qa email