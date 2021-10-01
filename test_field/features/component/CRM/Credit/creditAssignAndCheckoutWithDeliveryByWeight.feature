# @BaseCase @Admin @Storefront @CRM @Credit @creditAssignAndCheckoutWithDeliveryByWeight
# Feature: Manual Assign Store Credit
#   As a merchant
#   I want to manual assign store credit to customers
#   So that I can assign the credit in Customer Show Page

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

#   @C3875 @fixture-delivery @fixture-payment @fixture-product @fixture-shop
#   Scenario: Assign credits and checkout with 7-11 Delivery by weight
#     Given I am on Customer List Page
#     When I input email to search field
#     And I wait for 3 seconds for loading
#     When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
#     Then I should be redirected to Customer Detail Page
#     When I click on assign credits button
#     Then I should see popover
#     Then I fill "10" to amount of credit field
#     And I click on never expires button
#     And I fill "Testing amount of credits" to reason field
#     And I click on credit save button
#     Then I wait for 3 seconds for loading
#     Then I should see row of credit list

#     Given I am on Shop Product Index Page
#     When I input "6th Product for Checkout" to search field
#     Then 1st product of products list should contain "6th Product for Checkout"
#     And I click on 1st product of products list
#     Then I should be redirected to Shop Product Show Page
#     And I click on add to cart button
#     Then I should see cart panel

#     Given I am on Shop Product Index Page
#     When I input "15th Product for Checkout" to search field
#     Then 1st product of products list should contain "15th Product for Checkout"
#     And I click on 1st product of products list
#     Then I should be redirected to Shop Product Show Page
#     When I fill "2" to product quantity field
#     And I click on add to cart button
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
#     And I select country dropdown option included "Taiwan" of country list dropdown
#     And I wait for 5 seconds for loading
#     And I select delivery dropdown option included "(DBW) 7-11 C2C - Pickup only" of delivery method dropdown
#     And I wait for 5 seconds for loading
#     And I select payment dropdown option included "CVS via O'Pay" of payment method dropdown
#     And I wait for 5 seconds for loading
#     And I click on proceed to checkout button

#     Then I should be redirected to Shop Checkout Page
#     When I click on pick store button
#     And I wait for 5 seconds for loading
#     Then I should be redirected to Seven Pick Store Page
#     When I click on id search button
#     And I wait for 3 seconds for loading
#     When I switch to main frame frame
#     And I fill store id to store id field
#     And I click on search button
#     And I click on 1st store list
#     And I wait for 3 seconds for loading
#     When I switch to default frame
#     And I click on store confirm button
#     And I click on agree button
#     And I click on submit button

#     Then I should be redirected to Shop Checkout Page
#     When I fill name to name field
#     And I fill phone to contact number field
#     And I click on save number checkbox
#     And I click on same as checkbox
#     And I click on place order button
#     And I wait for 5 seconds for loading
#     Then I should be redirected to Opay Checkout Page
#     And I click on checkout button
#     Then I wait for 5 seconds for loading
#     Then I should be redirected to Ecpay Checkout Page
#     And I click on get cvs button
#     Then I wait for 5 seconds for loading
#     And I click on back to shop button
#     And I wait for 5 seconds for loading

#     Then I should be redirected to Shop Order Confirm Page
#     When I click on summary collapse
#     Then 1st row of product unit price should contain "NT$59"
#     Then 1st row of product quantity should equal to "1"
#     Then 1st row of product items should contain "6th Product for Checkout"
#     Then 2nd row of product unit price should contain "NT$25"
#     Then 2nd row of product quantity should equal to "2"
#     Then 2nd row of product items should contain "15th Product for Checkout"
#     Then item subtotal should contain "NT$109"
#     Then applied store credits should contain "-NT$10"
#     Then delivery fee should contain "NT$15"
#     Then total should contain "NT$114"

#     Given I am on Shop User Credit Page
#     Then I should see row of credit list
#     Then 1st row of credit list should contain "- 10"
#     Then 1st row of credit list should contain "Use of credits in order"

#     Given I am on Shop Orders Page
#     When I click on 1st row of order links
#     Then I should be redirected to Shop Orders Show Page
#     Then order placing date should contain order placing date
#     Then order info should contain "陳小明"
#     Then order info should contain "testu****@shoplineapp.com"
#     Then order info should contain "0912345***"
#     Then order info should contain "(DBW) 7-11 C2C - Pickup only"
#     Then order info should contain "CVS via O'Pay"
#     Then delivery fee should contain "NT$15"
#     Then applied store credits should contain "-NT$10"