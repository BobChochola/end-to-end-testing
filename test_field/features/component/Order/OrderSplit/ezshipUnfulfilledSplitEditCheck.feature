# @BaseCase @Admin @Storefront @Order @OrderSplit @ezshipUnfulfilledSplitEditCheck @fixture-shop @fixture-product @fixture-payment @fixture-delivery
# Feature: Ezship unfulfilled order check the split button
#   As a merchant
#   I can split the parent order when the order status is unfulfilled

#   Background:
#     Given I am on Shop Product Index Page
#     When I input "2nd Product for Checkout" to search field
#     Then 1st product of products list should contain '2nd Product for Checkout'
#     When I click on 1st product of products list
#     Then I should be redirected to Shop Product Show Page
#     When I fill "20" to product quantity field
#     And I click on add to cart button
#     Then I should see cart panel
#     When I click on checkout button
#     Then I should be redirected to Shop Cart Page
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
#     And I fill email to email address field
#     And I fill phone to contact number field
#     And I click on same as checkbox
#     And I click on agree terms checkbox
#     And I click on accept marketing checkbox
#     And I click on place order button
#     Then I should be redirected to Shop Order Confirm Page
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

#   Scenario: Ezship unfulfilled order check the split button
#     Given I am on Orders Page
#     And I mark the value of 1st row of order links as variable order number
#     When I click on 1st row of order links
#     Then I should be redirected to Orders Show Page
#     Then I should see split button
#     When I click on split button
#     Then I should be redirected to Order Split Page
#     Then I should see row of split quantity field
#     When I fill "10" to 1st row of split quantity field
#     And I click on split button
#     Then I should see confirm popup
#     When I click on confirm button
#     Then I should be redirected to Orders Page
#     Then I should see alert
#     Then I should see 1st row of order links contains variable order number
#     When I click on 1st row of order links
#     Then I should be redirected to Orders Show Page
#     Then alert should contain "This order is split from (parent order):"
