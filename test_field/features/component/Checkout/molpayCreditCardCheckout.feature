# molpay現在高於1元不能結帳
# @BaseCase @Admin @Storefront @Payment @Checkout @CouponCode @molpayCreditCardCheckout @baseLocation-MY @fixture-shop @fixture-product @fixture-delivery @fixture-payment @fixture-promotion @fixture-molpay-credit-card
# Feature: MOLPAY CC api integration and order creation/error handling/message
#   As a merchant
#   I want my customer can checkout with MOLPAY Credit Card
#   So that I can see my customer checkout successfully and got the order at admin

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
    
#     Given I am on Promotion Create Page
#     When I fill "(dirty data) RM29.5 off" to name field
#     And I select discount amount of benefit type dropdown
#     And I fill "29.5" to promotion value field
#     And I click on countinue to button
#     And I click on 2nd countinue to button
#     And I click on apply method checkbox included 'codes'
#     Then I should see coupon code field
#     And I fill "molpay" to coupon code field
#     And I click on 3rd countinue to button
#     And I click on preview button
#     Then coupon code should equal to "molpay"
#     Then promotion limitations end date should contain "Never expires"
#     Then total usage limit should equal to "Unlimited"
#     Then target group should equal to "All Customers"
#     Then discount summary should equal to "Get RM29.50 off on Entire Order"
#     And I click on confirm button
#     Then I should see alert
#     Then I should be redirected to Promotion Index Page
   
#     Given I am on Free Shipping Index Page
#     When I input "3rd Free Shipping" to search field
#     Then 1st row of free shipping list should contain "3rd Free Shipping"
#     Then I should see apply filter label
#     Then I should see row of select checkbox list
#     And I click on 1st row of select checkbox list
#     And I select publish of bulk actions dropdown
#     Then I should see alert

#   @EAT-631
#   Scenario: checkout with MOLPAY Credit Card
#     Given I am on Shop Product Index Page
#     When I input "1st Product for Checkout" to search field
#     Then 1st product of products list should contain "1st Product for Checkout"
#     Then I click on 1st product of products list
#     And I should be redirected to Shop Product Show Page
#     And I click on add to cart button
#     Then I should see cart panel
#     When I click on checkout button
#     Then I should be redirected to Shop Cart Page
#     And I select country dropdown option included "Taiwan" of country list dropdown
#     And I wait for 3 seconds for loading
#     And I select delivery dropdown option included "Others" of delivery method dropdown
#     And I wait for 3 seconds for loading
#     And I select payment dropdown option included "Credit Card via MOL Pay" of payment method dropdown
#     And I wait for 3 seconds for loading
#     When I click on apply coupon code button
#     Then I should see coupon code field
#     Then I input "molpay" to coupon code field
#     And I wait for 3 seconds for loading
#     When I click on apply coupon code button
#     When I click on proceed to checkout button
#     Then I should see errors info
    
#     Then I should see remove promotion button
#     When I click on 1st remove promotion button
#     Then I wait for 3 seconds for loading
#     And I Refresh
#     And I click on proceed to checkout button
#     Then I should be redirected to Shop Checkout Page
#     When I fill "myname" to name field
#     And I fill email to email address field
#     And I fill phone to contact number field
#     And I click on same as checkbox
#     And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
#     And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
#     And I fill address to delivery address field
#     And I click on become member checkbox
#     And I click on agree terms checkbox
#     And I click on place order button
#     Then I should be redirected to Mol Pay Checkout Page
#     When I click on pay online through FPX button
#     And I fill email to mail field
#     And I click on HSBC checkbox
#     And I click on agree button
#     And I click on HSBC cancel button
#     And I click on complete transaction button
#     And I wait for 10 seconds for loading
#     Then I should be redirected to Shop Checkout Page
#     And I click on cart summary
#     Then total price should contain "RM30.00"
    
#     When I fill "myname" to name field
#     And I fill email to email address field
#     And I fill phone to contact number field
#     And I click on same as checkbox
#     And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
#     And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
#     And I fill address to delivery address field
#     And I click on become member checkbox
#     And I click on agree terms checkbox
#     And I click on place order button
#     Then I should be redirected to Mol Pay Checkout Page
#     When I click on payment button
#     And I click on seven button
#     And I click on agree checkbox
#     And I click on proceed button
#     And I click on Back to Merchant Site Button
#     And I wait for 5 seconds for loading
#     Then I should be redirected to Shop Order Confirm Page
#     When I click on summary collapse
#     Then 1st row of product unit price should contain "RM30.00"
#     Then 1st row of product quantity should equal to "1"
#     Then 1st row of product items should contain "1st Product for Checkout"
#     Then total should contain "RM30.00"
#     Then I mark the value of order confirm info as variable order info

#     Given I am on Orders Page
#     When I click on 2nd row of order links
#     Then I should be redirected to Orders Show Page
#     Then order date should contain order date
#     Then customer name should contain "myname"
#     Then customer email should contain email
#     Then customer phone should contain phone
#     Then payment type should contain "Credit Card via MOL Pay"
#     Then delivery method should contain "Others"
#     Then order status should contain "Cancelled"
#     Then payment status should contain "Failed"
    
#     Given I am on Orders Page
#     Then 1st row of order links should contain order number
#     When I click on 1st row of order links
#     Then I should be redirected to Orders Show Page
#     Then order date should contain order date
#     Then customer name should contain "myname"
#     Then customer email should contain email
#     Then customer phone should contain phone
#     Then payment type should contain "Credit Card via MOL Pay"
#     Then delivery method should contain "Others"
#     Then order status should contain "Open"
#     Then payment status should contain "Unpaid"
#     And I wait for 60 seconds for mail sent
#     Given I am on Google Mail Page
#     Then I should see account field
#     When I fill merchant email to account field
#     And I click on identifier next button
#     Then I should see password field
#     When I input account password to password field
#     And I check and click password next button
#     Then I should see search field
#     When I input order number to search field
#     And I wait for 5 seconds for mail loading
#     Then I should see row of mail list
#     When I click on row of mail list included " Thank you for your order "
#     Then I should see mail detail
#     Then mail detail should contain "Open"
#     Then mail detail should contain "Unpaid"
#     Then mail detail should contain "Unfulfilled"
#     Then mail detail should contain "myname"
#     Then mail detail should contain "Credit Card via MOL Pay"
#     Then mail detail should contain "1st Product for Checkout"
#     Then mail detail should contain "RM30.00"
#     And ---ROLL BACK---
#     Given I am on Promotion Index Page
#     When I click on 1st row of select checkbox list
#     And I select delete of bulk actions dropdown
#     And I should see confirmation popover
#     And I click on delete checkbox
#     And I click on confirm delete button
#     Then I should see alert

#     Given I am on Free Shipping Index Page
#     When I input "3rd Free Shipping" to search field
#     Then I should see apply filter label
#     Then I should see 1 row of free shipping list
#     Then 1st row of free shipping list should contain "3rd Free Shipping"
#     And I click on 1st row of select checkbox list
#     And I select unpublish of bulk actions dropdown
#     Then I should see alert