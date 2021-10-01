# @BaseCase @Admin @Billing @myPlanAndBillingErrorMsgCN @baseLocation-CN @EAT-791
# Feature: Admin Billing - Check error msg when using wrong payment in CN shop
#   As a merchant
#   I want to choose a plan and checkout by using wrong payment information in CN shop

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

#   @EAT-791-1
#   Scenario: choose basic plan and checkout by using wrong payment information in CN shop
#     Given I am on Setup Guide Page
#     When I click on User Menu
#     When I click on My Plan And Billing
#     Then I should be redirected to My Plan And Billing Page
#     Then I should see upgrade plan button
#     When I click on upgrade plan button
#     Then I should be redirected to Plans Page
#     Then I should see upgrade plan basic button
#     When I click on upgrade plan basic button
#     Then I should be redirected to Plans Checkout Page
#     When I fill fake cardholder name to cardholder name field
#     When I switch to credit frame frame
#     And I simply fill '4' to credit card number field
#     And I simply fill '0' to credit card number field
#     And I simply fill '0' to credit card number field
#     And I simply fill '0' to credit card number field
#     And I simply fill '0' to credit card number field
#     And I simply fill '0' to credit card number field
#     And I simply fill '0' to credit card number field
#     And I simply fill '0' to credit card number field
#     And I simply fill '0' to credit card number field
#     And I simply fill '0' to credit card number field
#     And I simply fill '0' to credit card number field
#     And I simply fill '0' to credit card number field
#     And I simply fill '0' to credit card number field
#     And I simply fill '0' to credit card number field
#     And I simply fill '0' to credit card number field
#     And I simply fill '2' to credit card number field
#     When I switch to default frame
#     When I switch to date frame frame
#     And I fill fake expriry date to expriry date field
#     When I switch to default frame
#     When I switch to cvc frame frame
#     And I fill fake cvc to cvc field
#     When I switch to default frame
#     Then I click on order terms checkbox
#     And I click on confirm button
#     Then I should see error alert
#     Then error alert should contain "declined."