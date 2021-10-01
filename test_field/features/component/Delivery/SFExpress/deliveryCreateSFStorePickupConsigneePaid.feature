@BaseCase @Admin @Storefront @Delivery @SFExpress @deliveryCreateSFStorePickupConsigneePaid @baseLocation-HK @superAdmin @fixture-shop @fixture-product @fixture-payment @fixture-delivery @fixture-promotion
Feature: delivery Create SF Store Pickup Consignee Paid and checkout
  As a merchant
  I want to create new SF with delivery
  So that I can have different delivery for my shoppers

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

  @EAT-1168 @EAT-1168-3
  Scenario: Shop Cart Delivery - SF with integration
    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Pick-up' of delivery type dropdown
    Then shipping from edit button should contain 'Hong Kong'
    Then shipping to edit button should contain 'Hong Kong'
    When I click on search provider button
    Then I should see popover
    And I click on 1st popover row of provider included "S.F. Express"
    And I click on popover ok button
    And I select services dropdown option included "S.F. Express Store Pickup" of services dropdown
    And I fill sf merchant id to sf merchant id field
    And I fill sender name to sf company name field
    And I fill the Merchant Name to hk sender name field
    And I fill sender phone to hk sender phone field
    And I fill sender address to hk sender address field
    When I select surcharge dropdown option included 'Paid by Consignee' of surcharge dropdown
    And I fill '(dirty data)S.F. Express Store Pickup' to name field
    And description field should contain 'You will be charged for shipping when the goods arrive.'
    And delivery by weight fee field should be disabled
    And delivery by weight fee field should equal to '0'
    And shipping zone area should contain 'For Hong Kong only'
    And I click on delivery execution toggle
    Then I should see add button
    When I click on add button
    Then I should see confirm adding button
    When I click on confirm adding button
    Then I should be on Delivery Options Page
    And 1st row of delivery options list should contain '(dirty data)S.F. Express Store Pickup'

    Given I am on Free Shipping Index Page
    When I input "2nd Free Shipping" to search field
    Then I should see apply filter label
    Then I should see row of select checkbox list
    Then 1st row of free shipping list should contain "2nd Free Shipping"
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert
    When I click row of edit button for the same order of row of promotion name included '2nd Free Shipping'
    Then I should be redirected to Free Shipping Edit Page
    Then I click on countinue to button
    Then I click on 2nd countinue to button
    Then I click on 3rd countinue to button
    Then 1st delivery options checkbox should contain '(dirty data)S.F. Express Store Pickup'
    And I click on 1st delivery options checkbox
    Then I click on preview button
    And I click on confirm button
    Then I should be redirected to Free Shipping Index Page

    Given I am on Shop Product Index Page
    When I input "3rd Product for Checkout" to search field
    Then I should see product of products list
    Then 1st product of products list should contain "3rd Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I click on login button
    Then I should be redirected to Shop Login Page
    And I fill email to email field
    And I fill password to password field
    And I click on submit button
    Then I should be redirected to Shop Cart Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    And I should see 1 row of cart item
    And I select country dropdown option included 'Hong Kong' of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included 'S.F. Express Store Pickup' of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included 'Bank Transfer' of payment method dropdown
    And I wait for 3 seconds for loading
    And I select sf district dropdown option included 'Aberdeen' of sf district dropdown
    And I wait for 3 seconds for loading
    And I select sf location dropdown option included 'Fullagar Industrial Building' of sf location dropdown
    And I wait for 3 seconds for loading
    And applied promotion should contain '2nd Free Shipping'
    And I should see you will be charged for shipping message
    And you will be charged for shipping message should contain 'You will be charged for shipping when the goods arrive.'
    And order summary should not contain 'delivery fee'
    When I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And delivery detail should contain 'You will be charged for shipping when the goods arrive'
    When I click on order total
    And I should see you will be charged for shipping message
    And you will be charged for shipping message should contain 'You will be charged for shipping when the goods arrive.'
    And order summary should not contain 'delivery fee'
    And I fill name to name field
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    When I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then 1st row of delivery detail should contain name
    Then 3nd row of delivery detail should contain 'S.F. Express Store Pickup'
    When I click on summary collapse
    And you will be charged for shipping message should contain 'You will be charged for shipping when the goods arrive.'
    And order summary should not contain 'delivery fee'
    Then I mark the value of order confirm info as variable order info

    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Orders'
    Then I should be redirected to Shop Orders Page
    And I click row of order links for the same order of row of order included order number
    Then I should be redirected to Shop Orders Show Page
    And you will be charged for shipping message should contain 'You will be charged for shipping when the goods arrive.'
    And order summary should not contain 'delivery fee'

    And ---ROLL BACK---
    Given I am on Delivery Options Page
    When I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain "(dirty data)S.F. Express Store Pickup" 
   
    Given I am on Free Shipping Index Page
    When I input "2nd Free Shipping" to search field
    Then I should see apply filter label
    Then I should see 1 row of free shipping list
    Then 1st row of free shipping list should contain "2nd Free Shipping"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown