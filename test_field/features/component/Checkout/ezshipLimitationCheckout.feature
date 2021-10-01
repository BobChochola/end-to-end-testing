# @BaseCase @Admin @Storefront @Checkout @CouponCode @ezshipLimitationCheckout
# @fixture-payment @fixture-delivery @fixture-product @fixture-promotion @fixture-shop
# Feature: Checkout with limitatoin of total amount
#   As a customer
#   I can go checkout with message of limitation alert

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
    
#     Given I am on Basic Setting Page
#     And I fill notification mail to base mail field
#     When I click on basic info update button
#     Then I should be redirected to Dashboard Page
#     Given I am on Free Shipping Index Page
#     When I input "1st Free Shipping" to search field
#     Then 1st row of free shipping list should contain "1st Free Shipping"
#     Then I should see apply filter label
#     Then I should see row of select checkbox list
#     And I click on 1st row of select checkbox list
#     And I select publish of bulk actions dropdown
#     Then I should see alert

#   @C3812 @fixture-shop
#   Scenario: Not fit ezship payment price limitation NT$10-NT$6000
#     Given I am on Shop Product Index Page
#     When I input "2nd Product for Checkout" to search field
#     Then 1st product of products list should contain "2nd Product for Checkout"
#     When I click on 1st product of products list
#     Then I should be redirected to Shop Product Show Page
#     When I fill "10" to product quantity field
#     And I click on add to cart button
#     Then I should see cart panel
#     When I click on checkout button
#     Then I should be redirected to Shop Cart Page
#     When I scroll down to country list dropdown
#     And I select country dropdown option included "Taiwan" of country list dropdown
#     And I wait for 5 seconds for loading
#     And I select delivery dropdown option included "ezship pickup and pay in store" of delivery method dropdown
#     And I wait for 5 seconds for loading
#     And I select payment dropdown option included "Pay on Store Pickup via ezShip" of payment method dropdown
#     And I click on apply coupon code button
#     Then I should see coupon code field
#     And I input "EZshipOnly" to coupon code field
#     And I wait for 3 seconds for loading
#     Then promotion description should contain "EZshipOnly"
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
#     When I click on summary collapse
#     Then 1st row of product unit price should contain "NT$1"
#     Then 1st row of product items should contain "10"
#     Then item subtotal should contain "NT$10"
#     Then delivery fee should contain "NT$0"
#     Then total should contain "NT$10"
#     Then discount applied should contain "1st Free Shipping"
#     Then discount applied should contain "EZshipOnly"
#     Given I am on Orders Page
#     When I mark the value of 1st row of order links as variable order number
#     And I click on 1st row of order links
#     Then I should be redirected to Orders Show Page
#     Then order date should contain order date
#     Then customer name should contain name
#     Then customer email should contain email
#     Then customer phone should contain phone
#     Then payment type should contain "Pay on Store Pickup via ezShip"
#     Then delivery method should contain "ezship pickup and pay in store"
#     When I Refresh
#     Then third party recipient name should contain name
#     Then third party recipient phone should contain phone
#     Then I wait for 120 seconds for mail sent
#     Given I am on Google Mail Page
#     When I fill account email to account field
#     And I click on identifier next button
#     Then I should see password field
#     When I input account password to password field
#     And I check and click password next button
#     Then I should see search field
#     When I input order number to search field
#     Then I should see row of mail list
#     When I click on row of mail list included "Thank you"
#     Then I should see mail detail
#     Then I should see info box button
#     When I click on info box button
#     Then row of info box list should not contain 'bcc'
#     Then mail detail should contain "Open"
#     Then mail detail should contain "Unpaid"
#     Then mail detail should contain "Unfulfilled"
#     Then mail detail should contain name
#     Then mail detail should contain "2nd Product for Checkout"
#     Then mail detail should contain "NT$10"
#     Then mail detail should contain "NT$10"
#     When I input order number to search field
#     Then I should see row of mail list
#     When I click on row of mail list included "New order"
#     Then I should see mail detail
#     Then I should see info box button
#     When I click on info box button
#     Then row of info box list should not contain 'bcc'
#     Then mail detail should contain "Open"
#     Then mail detail should contain "Unpaid"
#     Then mail detail should contain "Unfulfilled"
#     Then mail detail should contain name
#     Then mail detail should contain "2nd Product for Checkout"
#     Then mail detail should contain "NT$10"
#     Then mail detail should contain "NT$10"
#     And ---ROLL BACK---
#     Given I am on Free Shipping Index Page
#     When I input "1st Free Shipping" to search field
#     Then I should see apply filter label
#     Then I should see 1 row of free shipping list
#     Then 1st row of free shipping list should contain "1st Free Shipping"
#     And I click on 1st row of select checkbox list
#     And I select unpublish of bulk actions dropdown
#     Then I should see 1 unpublished item
#     Given I am on Basic Setting Page
#     And I fill mail to base mail field
#     When I click on basic info update button
#     Then I should be redirected to Dashboard Page