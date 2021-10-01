# @BaseCase @Admin @Storefront @Checkout @deliveryByWeightEzship
# @fixture-payment @fixture-delivery @fixture-product @fixture-shop
# Feature: Checkout with delivery by weight via Ezship
#   As a member
#   I want to buy products with different weight
#   So that I can pay shipping fee suitble for different weight

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

#   @C3864
#   Scenario: I want to buy products with different weight and pay correct shipping fee
#     Given I am on Shop Product Index Page
#     When I input "5th Product for Checkout" to search field
#     Then 1st product of products list should contain "5th Product for Checkout"
#     When I click on 1st product of products list
#     Then I should be redirected to Shop Product Show Page
#     When I fill "3" to product quantity field
#     And I click on add to cart button
#     Then I should see cart panel
#     When I click on checkout button
#     Then I should be redirected to Shop Cart Page
#     And I select country dropdown option included "Taiwan" of country list dropdown
#     And I wait for 3 seconds for cart update
#     And I select delivery dropdown option included "(DBW) Ezship pickup and pay in store" of delivery method dropdown
#     And I wait for 3 seconds for cart update
#     And I select payment dropdown option included "Pay on Store Pickup via ezShip" of payment method dropdown
#     And I wait for 3 seconds for cart update
#     And I click on proceed to checkout button
#     Then I should be redirected to Shop Checkout Page
#     When I click on pick store button
#     Then I should be redirected to Ezship Pick Store Page
#     When I click on id search button
#     And I fill ezstore id to store id field
#     And I click on search button
#     Then I should see store info popover
#     When I click on next step button
#     Then I should be redirected to Shop Checkout Page
#     And I fill name to name field
#     And I fill email to email address field
#     And I fill phone to contact number field
#     And I click on same as checkbox
#     And I click on agree terms checkbox
#     And I click on accept marketing checkbox
#     And I click on place order button
#     Then I should be redirected to Shop Order Confirm Page
#     When I click on summary collapse
#     Then delivery fee should contain "NT$30"
#     Then total should contain "NT$120"
#     Given I am on Orders Page
#     When I click on 1st row of order links
#     Then I should be redirected to Orders Show Page
#     Then order date should contain order date
#     Then customer name should contain name
#     Then customer email should contain email
#     Then customer phone should contain phone
#     Then payment type should contain "Pay on Store Pickup via ezShip"
#     Then delivery method should contain "(DBW) Ezship pickup and pay in store"
#     When I Refresh
#     Then third party recipient name should contain name
#     Then third party recipient phone should contain phone
#     Then delivery fee should contain "NT$30"
#     Then total should contain "NT$120"