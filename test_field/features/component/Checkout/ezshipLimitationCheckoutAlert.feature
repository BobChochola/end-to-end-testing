# @BaseCase @Admin @Storefront @Checkout @CouponCode @ezshipLimitationCheckoutAlert
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
    
#     Given I am on Free Shipping Index Page
#     When I input "1st Free Shipping" to search field
#     Then 1st row of free shipping list should contain "1st Free Shipping"
#     Then I should see apply filter label
#     Then I should see row of select checkbox list
#     And I click on 1st row of select checkbox list
#     And I select publish of bulk actions dropdown
#     Then I should see alert

#   @C3811 @fixture-shop
#   Scenario: Not fit ezship payment price limitation NT$10-NT$6000
#     Given I am on Shop Product Index Page
#     When I input "2nd Product for Checkout" to search field
#     Then 1st product of products list should contain "2nd Product for Checkout"
#     When I click on 1st product of products list
#     Then I should be redirected to Shop Product Show Page
#     When I fill "9" to product quantity field
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
#     And I wait for 5 seconds for loading
#     And I click on proceed to checkout button
#     Then errors info should contain "Failed transaction: order amount for：ezship pickup and pay in store should be 10 ~ NT$8,000"
#     And ---ROLL BACK---
#     Given I am on Free Shipping Index Page
#     When I input "1st Free Shipping" to search field
#     Then I should see apply filter label
#     Then I should see 1 row of free shipping list
#     Then 1st row of free shipping list should contain "1st Free Shipping"
#     And I click on 1st row of select checkbox list
#     And I select unpublish of bulk actions dropdown
#     Then I should see 1 unpublished item