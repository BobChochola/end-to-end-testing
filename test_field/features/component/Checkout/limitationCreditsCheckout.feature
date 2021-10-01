# @BaseCase @Admin @Storefront @Checkout @Credit @limitationCreditsCheckout
# @fixture-product @fixture-shop @fixture-delivery @fixture-payment
# Feature: Limitation Credits Checkout
#   As a merchant
#   I want to checkout with credits

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

#     Given I am on Customer List Page
#     When I input email to search field
#     Then I should see view button
#     When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
#     Then I should be redirected to Customer Detail Page
#     When I click on assign credits button
#     Then I should see popover
#     When I fill "30" to amount of credit field
#     And I click on never expires button
#     And I fill "Testing amount of credits" to reason field
#     And I click on credit save button
#     Then I should see row of credit list
#     Given I am on Store Credit Page
#     When I select credit amount rule dropdown option included 'Fixed Amount' of credit amount rule dropdown
#     And I fill "5" to credit amount field
#     And I click on update button
#     Then I should see alert

#   @C3876
#   Scenario: Assign limitation of credits and checkout with credit
#     Given I am on Shop Product Index Page
#     And I input "2nd Product for Checkout" to search field
#     Then 1st product of products list should contain "2nd Product for Checkout"
#     When I click on 1st product of products list
#     Then I should be redirected to Shop Product Show Page
#     When I fill "30" to product quantity field
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
#     And I select delivery dropdown option included "ezship pickup and pay in store" of delivery method dropdown
#     And I wait for 5 seconds for loading
#     And I select payment dropdown option included "Pay on Store Pickup via ezShip" of payment method dropdown
#     And I wait for 5 seconds for loading
#     And I click on proceed to checkout button
#     Then I should be redirected to Shop Checkout Page
#     When I click on pick store button
#     Then I should be redirected to Ezship Pick Store Page
#     When I click on id search button
#     And I should see store id field
#     And I fill ezstore id to store id field
#     And I click on search button
#     Then I should see store info popover
#     When I click on next step button
#     Then I should be redirected to Shop Checkout Page
#     When I fill name to name field
#     And I check contact number field and fill phone
#     And I check and click save number checkbox
#     And I click on same as checkbox
#     And I click on agree terms checkbox
#     And I click on place order button
#     Then I should be redirected to Shop Order Confirm Page
#     When I click on summary collapse
#     Then 1st row of product unit price should contain "NT$1"
#     Then 1st row of product quantity should equal to "30"
#     Then 1st row of product items should contain "2nd Product for Checkout"
#     Then item subtotal should contain "NT$30"
#     Then credit should contain "NT$5"
#     Then delivery fee should contain "NT$10"
#     Then total should contain "NT$35"

#     Given I am on Shop User Credit Page
#     Then I should see row of credit list
#     Then row of credit list should contain "- 5"
#     Then row of credit list should contain "Use of credits in order"
#     Given I am on Orders Page
#     When I click on 1st row of order links
#     Then I should be redirected to Orders Show Page
#     Then order date should contain order date
#     Then customer name should contain name
#     Then customer email should contain email
#     Then customer phone should contain phone
#     Then delivery method should contain "ezship pickup and pay in store"
#     Then payment type should contain "Pay on Store Pickup via ezShip"
#     When I Refresh
#     Then third party recipient name should contain name
#     Then third party recipient phone should contain phone
#     Then credit should contain "NT$5"
#     And ---ROLL BACK---
#     Given I am on Customer List Page
#     When I input email to search field
#     Then I should see view button
#     And I click on 1st view button
#     Then I should be redirected to Customer Detail Page
#     When I click on assign credits button
#     Then I should see popover
#     When I fill "-25" to amount of credit field
#     And I fill "Rolling back amount of credits" to reason field
#     And I click on credit save button
#     Then I should see row of credit list
#     Given I am on Store Credit Page
#     When I select credit amount rule dropdown option included 'Unlimited' of credit amount rule dropdown
#     Then I should see disabled maximum amount field
#     And I click on update button
#     Then I should see alert