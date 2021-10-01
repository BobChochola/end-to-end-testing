# subscription flow change
# @PostTest @PreTest @BaseCase @Admin @Billing @myPlanAndBillingTW @baseLocation-TW @fixture-basket-plan
# Feature: Admin Billing - Check error msg when using wrong payment in TW shop
#   As a merchant
#   I want to choose a plan and checkout
#   So that I can upgrade my plan

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

#     Given I am on Setup Guide Page
#     When I click on User Menu
#     And I click on My Plan And Billing
#     Then I should be redirected to My Plan And Billing Page
#     And I switch to plan frame frame
#     Then I should see subscription information
#     Then subscription information should contain 'e-Commerce'
#     Then current plan status should contain 'Active'
#     When I click on subscription tab included 'Next subscription'
#     Then I should see renew subscription button
#     Then I should see billing information
#     Then billing information should contain 'My Bills'
#     Then billing information should contain 'Order Number'
#     Then billing information should contain 'Date'
#     Then billing information should contain 'Items'
#     Then billing information should contain 'Total'

#   @C3783
#   Scenario: I want to choose a plan and checkout by using wrong payment information
#     When I click on subscription tab included 'Current subscription'
#     When I click on purchase plan button
#     And I switch to default frame
#     Then I should be redirected to Plans Page
#     And I switch to plan frame frame
#     Then I should see plan reminder
#     Then plan reminder should contain 'Welcome to add items! Your current subscription subscription billing cycle is'
#     Then plan reminder should contain 'so the add items will be settled as same billing cycle.'
#     Then plan list should contain 'eCommerce Pro'
#     Then plan list should contain 'All in ONE'
#     Then plan list should contain 'O2O'
#     Then plan list should contain 'eCommerce'
#     Then plan list should contain 'Retail POS'
#     Then plan list should contain 'NT$'
#     When I click on purchase checkbox
#     Then I should see popover
#     Then popover should contain 'Thank you for your interest. The plan you chose has duplicate features with your current one. Please contact us.'
#     And I switch to default frame
#     Given I am on Setup Guide Page
#     When I click on User Menu
#     And I click on My Plan And Billing
#     Then I should be redirected to My Plan And Billing Page
#     And I switch to plan frame frame
#     When I click on change period button
#     Then I check and click cancel button
#     When I check and click change period button
#     And I switch to default frame
#     Then I should be redirected to Plan Checkout Page
#     And I switch to plan frame frame
#     When I check and click change credit card radio button
#     When I click on annually radio button
#     Then confirm checkout information should contain 'cycleAnnually'
#     When I click on monthly radio button
#     Then confirm checkout information should contain 'cycleMonthly'
#     When I click row of remove button for the same order of row of purchase item name included 'e-Commerce'
#     Then I should see add back button
#     Then I should see purchase error message
#     Then purchase error message should contain 'Module need to be used with plan, please select at least one plan'
#     When I click on add back button
#     Then checkout button should be disabled
#     When I click on agree term checkbox
#     Then checkout button should be enabled
#     Then I fill 'test' to cardholder name field
#     When I switch to stripe credit card frame frame
#     And I simply fill '5' to stripe card number field
#     And I simply fill '1' to stripe card number field
#     And I simply fill '1' to stripe card number field
#     And I simply fill '0' to stripe card number field
#     And I simply fill '0' to stripe card number field
#     And I simply fill '7' to stripe card number field
#     And I simply fill '5' to stripe card number field
#     And I simply fill '5' to stripe card number field
#     And I simply fill '9' to stripe card number field
#     And I simply fill '5' to stripe card number field
#     And I simply fill '3' to stripe card number field
#     And I simply fill '4' to stripe card number field
#     And I simply fill '7' to stripe card number field
#     And I simply fill '0' to stripe card number field
#     And I simply fill '0' to stripe card number field
#     And I simply fill '4' to stripe card number field
#     Then stripe card number field should contain '5110 0755 9534 7004'
#     Then I switch to default frame
#     When I switch to plan frame frame
#     When I switch to stripe expiry date frame frame
#     And I simply fill '0' to stripe expiry date field
#     And I simply fill '7' to stripe expiry date field
#     And I simply fill '/' to stripe expiry date field
#     And I simply fill '2' to stripe expiry date field
#     And I simply fill '2' to stripe expiry date field
#     Then I switch to default frame
#     When I switch to plan frame frame
#     When I switch to stripe cvc frame frame
#     And I simply fill '1' to stripe cvc field
#     And I simply fill '2' to stripe cvc field
#     And I simply fill '3' to stripe cvc field
#     Then I switch to default frame
#     Then I switch to plan frame frame
#     When I fill 'testuser' to invoice name field
#     When I click on invoice same as merchant mail checkbox
#     When I fill 'test dress' to invoice contact address
#     When I click on checkout button
#     Then I should see alert
#     Then alert should contain 'Credit card update failed, please check'