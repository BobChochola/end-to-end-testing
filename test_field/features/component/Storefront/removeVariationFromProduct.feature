# @BaseCase @Admin @Storefront @Product @Checkout @removeVariationFromProduct
# @fixture-product @fixture-shop
# Feature: Cart Crash if there’s a variation which was removed in cart
#   As a guest
#   I want to remove product in cart panel
#   So that I will not checkout the product I do not need

#   Background:
#     Given I am on Admin Login Page
#     And I fill correct account email to email field
#     And I fill correct account password to password field
#     And I click on login button
#     And I should see successful login
#     Then I check intercom message notification frame and click clear intercom message button
#     Then I check intercom message notification frame and click intercom message close button
#     When I check new feature alert notification frame and click new feature alert close button
#     When I check and click exclude products panel close button
#     When I check and click no thanks button
#     Given I am on Product Create Page
#     When I pick product photo to product photo selector
#     Then I should see delete photo button
#     And I click on info tab
#     And I fill '(dirty data) Test For variation products' to english name field
#     And I click on variations tab
#     When I click on variations toggle
#     And I input "Blue" to add options field
#     And I input "Red" to add options field
#     When I click on add variation button
#     And I input "S" to 2nd add options field
#     And I input "M" to 2nd add options field
#     And I click on variations same price checkbox
#     And I fill "50" to 1st row of variation price field
#     And I fill "25" to 2nd row of variation price field
#     And I fill "50" to 3rd row of variation price field
#     And I fill "25" to 4th row of variation price field
#     And I fill "2000000" to 1st row of variation quantity field
#     And I fill "1900000" to 2nd row of variation quantity field
#     And I fill "3000000" to 3rd row of variation quantity field
#     And I fill "4000000" to 4th row of variation quantity field
#     Then I scroll down to id
#     And I click on add button
#     Then I should be redirected to Product Edit Page

#   @EAT-483
#   Scenario: Cart Crash if there’s a variation which was removed in cart
#     And I switch to 2 of tabs
#     Given I am on Shop Product Index Page
#     When I input 'Test For variation products' to search field
#     Then 1st product of products list should contain 'Test For variation products'
#     When I click on 1st product of products list
#     Then I should be redirected to Shop Product Show Page
#     And I select dropdown option included 'Blue' of variation dropdown
#     And I fill '2' to product quantity field
#     When I click on add to cart button
#     Then I should see cart panel
#     Then I Refresh
#     And I select dropdown option included 'Red' of variation dropdown
#     When I click on add to cart button
#     Then I should see cart panel
#     When I click on checkout button
#     Then I should be redirected to Shop Cart Page
#     Then 1st row of cart item should contain 'Blue'
#     And I switch to 1 of tabs
#     Given I am on Product Index Page
#     When I input 'Test For variation products' to search field
#     Then 1st row of product list should contain 'Test For variation products'
#     When I click on 1st row of edit button
#     Then I should be redirected to Product Edit Page
#     And I click on variations tab
#     Then I should see 4 remove row of variation tags
#     Then I click on 1st remove row of variation tags
#     Then I should see 3 remove row of variation tags
#     When I click on update button
#     Then I should be redirected to Product Index Page
#     And I switch to 2 of tabs
#     Given I am on Shop Cart Page
#     Then 1st row of cart item should not contain 'Blue'
#     Then errors info should contain 'There is at least one unavailable product in the shopping cart. Please adjust the cart items to checkout.'
#     Then I should not see proceed to checkout button
#     When I click on 1st remove button
#     Then I should see delete confirmation popover
#     When I click on ok button
#     Then I should see empty message
#     Then I should see proceed to checkout button

#     And ---ROLL BACK---
#     Given I am on Product Index Page
#     When I input 'Test For variation products' to search field
#     Then I should be redirected to Product Index Page
#     When I select product operations dropdown option included 'Delete' of 1st product operations dropdown
#     Then I should see delete confirmation popover
#     And I click on delete checkbox
#     When I click on confirm delete button
#     Then product list should not contain '(dirty data)'
#     When I Refresh
#     Then 1st row of product list should not contain 'Test For variation products'