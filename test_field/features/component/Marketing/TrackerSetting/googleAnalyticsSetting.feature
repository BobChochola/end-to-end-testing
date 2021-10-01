# @BaseCase @Admin @Marketing @TrackerSetting @googleAnalyticsSetting
# Feature: Google Analytics Settings
#   As a merchant
#   I want to open Tracker Setting
#   And setting Google Analytics

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

#   Scenario: Set Google Analytics Setting
#     Given I am on Tracker Setting Page
#     Then I should see setting tracker event
#     When I click on google analytics setting tracker event
#     Then I should be redirected to Tracking Google Analytics Settings Page
#     When I open new tab and redirect to google analytics url
#     When I switch to 2 of tabs
#     Then I should be redirected to Google Analytics Page
#     When I fill account email to account field
#     And I click on identifierNext button
#     When I fill account password to password field
#     Then I click on passwordNext button
#     And I wait for 5 seconds for loading
#     Then I should be redirected to Google Analytics Settings Page
#     When I click on admin button
#     Then I should see create button
#     When I check and click close dialog button
#     When I click on create button included 'Create Account'
#     Then I should see new account form
#     And I fill new shop name to analytics account name field
#     Then I scroll down the page till the bottom
#     And I click on next button
#     And I click on next button
#     And I fill new shop name to analytics website name field
#     And I fill shop url to analytics url field
#     And I click on next button
#     Then I should see protection terms
#     And I click on accept protection terms checkbox
#     When I click on accept terms form submit button
#     Then I switch to analytics frame
#     Then I should see tracking id
#     And I mark the value of tracking id as variable tracking id
#     When I switch to 1 of tabs
#     Then I should be redirected to Tracking Google Analytics Settings Page
#     And I fill tracking id to tracking code field
#     When I click on submit button
#     Then I should be redirected to Tracker Setting Page
#     Then google analytics id should equal to tracking id
#     When I select navigation shop button of navigation menu button
#     Then I switch to 3 of tabs
#     Then I should be redirected to Shop Home Page
#     Then I wait for 30 seconds for google analytics count
#     When I switch to 2 of tabs
#     Then I should be redirected to Google Analytics Settings Page
#     When I click on home button
#     Then I should see analytics counter
#     Then analytics counter should equal to '1'
#     And ---ROLL BACK---
#     When I should see admin button
#     Then I click on admin button
#     Then I should see account settings button
#     When I click on account settings button
#     Then I should see move to trash button
#     When I click on move to trash button
#     Then I should see trash account button
#     When I click on trash account button
#     Then I should see disabled account button
#     When I switch to 1 of tabs
#     Then I should be redirected to Tracker Setting Page
#     When I click on delete button
#     Then I should see confirm delete
#     And I click on confirm delete
#     When I click on confirm delete button
#     Then I should be redirected to Tracker Setting Page