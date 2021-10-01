# @BaseCase @Admin @Payment @Stripe @paymentCreateStripe @baseLocation-HK
# Feature: Payment Stripe Create Feature
#   As a merchant
#   I want to create new payment
#   So that I can have different payments for my shoppers

#   Background:
#     Given I am on Admin Login Page
#     And I fill correct account email to email field
#     And I fill correct account password to password field
#     And I click on login button
#     And I should see successful login
#     Then I check intercom message notification frame and click clear intercom message button
#     Then I check intercom message notification frame and click intercom message close button
#     When I check new feature alert notification frame and click new feature alert close button
#     When I check and click no thanks button

#   @C3786 @C3786-5
#   Scenario: Create payment - Stripe
#     Given I am on Payment Setting Page
#     When I click on add button
#     Then I should be redirected to Payment Create Page
#     When I select payment type dropdown option included 'Credit Card via Stripe' of payment type dropdown
#     And I click on activate button
#     Then I should be redirected to Stripe Setting Page
#     When I click on sign in button
#     Then I should see email field
#     When I fill email to email field
#     And I fill password to password field
#     And I click on sign in to your account button
#     Then I should see connect stripe account button
#     When I click on connect stripe account button
#     Then I should be redirected to Payment Create Page
#     When I click on update button
#     Then I should be redirected to Payment Setting Page
#     And 1st row of payment method list should contain "Credit Card via Stripe"
#     And ---ROLL BACK---
#     Then I click on 1st delete button of payment method list
#     And I should see delete confirmation popover
#     And I click on delete checkbox
#     And I click on confirm delete button
#     Then I should not see delete confirmation popover