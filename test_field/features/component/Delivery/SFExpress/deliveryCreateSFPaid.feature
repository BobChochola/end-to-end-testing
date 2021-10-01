# @BaseCase @Admin @Storefront @Delivery @SFExpress @deliveryCreateSFPaid @baseLocation-HK @superAdmin @fixture-shop
# Feature: SF with integration Delivery Create Feature
#   As a merchant
#   I want to create new SF with delivery
#   So that I can have different delivery for my shoppers

#   Background:
#     Given I am on Admin Login Page
#     And I fill correct account email to email field
#     And I fill correct account password to password field
#     And I click on login button
#     Then I should see successful login
#     Then I check intercom message notification frame and click clear intercom message button
#     Then I check intercom message notification frame and click intercom message close button
#     When I check new feature alert notification frame and click new feature alert close button
#     When I check and click exclude products panel close button
#     When I check and click no thanks button

#   Scenario: Shop Cart Delivery - SF with integration
#     Given I am on Delivery Create Page
#     When I select delivery type dropdown option included 'Delivery' of delivery type dropdown
#     Then shipping from edit button should contain 'Hong Kong'
#     Then shipping to edit button should contain 'Hong Kong'
#     When I click on search provider button
#     Then I should see popover
#     And I click on popover row of provider included "S.F. Express"
#     And I click on popover ok button
#     And I fill '(dirty data)S.F. Express - Office / Home Delivery' to name field
#     And I fill sf merchant id to sf merchant id field
#     And I fill sender name to sf company name field
#     And I fill the Merchant Name to hk sender name field
#     And I fill sender phone to hk sender phone field
#     And I fill sender address to hk sender address field
#     And I select delivery payment mode dropdown option included 'Paid by Customer' of delivery payment mode dropdown
#     And I select delivery fee type dropdown option included 'Flat Price' of delivery fee type dropdown
#     And I fill '20' to 1st delivery by weight fee field
#     Then I should see add button
#     When I click on add button
#     Then I should see confirm adding button
#     When I click on confirm adding button
#     Then I should be on Delivery Options Page
#     And 1st row of delivery options list should contain 'S.F. Express - Office / Home Delivery'

#     Given I am on Shop Product Index Page
#     When I input "1st Product for Checkout" to search field
#     Then I should see product of products list
#     Then 1st product of products list should contain "1st Product for Checkout"
#     When I click on 1st product of products list
#     Then I should be redirected to Shop Product Show Page
#     Then I should see increase button
#     And I click on increase button
#     When I click on add to cart button
#     Then I should see cart panel
#     When I click on checkout button
#     Then I should be redirected to Shop Cart Page
#     When I click on login button
#     Then I should be redirected to Shop Login Page
#     And I fill email to email field
#     And I fill password to password field
#     And I click on submit button
#     Then I should be redirected to Shop Cart Page
#     When I select language dropdown option included 'English' of language dropdown
#     And I wait for 3 seconds for loading
#     Then language dropdown should contain 'English'
#     And I select country dropdown option included 'Hong Kong' of country list dropdown
#     And I wait for 5 seconds for loading
#     And I select delivery dropdown option included 'S.F. Express - Office / Home Delivery' of delivery method dropdown
#     And I wait for 5 seconds for loading
#     And I select payment dropdown option included 'Bank Transfer' of payment method dropdown
#     And I wait for 5 seconds for loading
#     When I click on proceed to checkout button
#     Then I should be redirected to Shop Checkout Page
#     And I fill name to name field
#     And I fill phone to contact number field
#     And I click on save number checkbox
#     And I click on same as checkbox
#     And I select delivery address dropdown option included "Hong Kong Island" of 1st delivery address dropdown
#     And I select delivery address dropdown option included "Central and Western" of 2nd delivery address dropdown
#     And I select delivery address dropdown option included "The Peak" of 3rd delivery address dropdown
#     And I fill address to delivery address field
#     And I click on agree terms checkbox
#     When I click on place order button
#     Then I should be redirected to Shop Order Confirm Page
#     Then 1st row of delivery detail should contain name
#     Then 3nd row of delivery detail should contain 'S.F. Express - Office / Home Delivery'

#     And ---ROLL BACK---
#     Given I am on Delivery Options Page
#     When I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
#     And I should see delete confirmation popover
#     And I click on delete checkbox
#     And I click on confirm delete button
#     Then table should not contain '(dirty data)S.F. Express - Office / Home Delivery'