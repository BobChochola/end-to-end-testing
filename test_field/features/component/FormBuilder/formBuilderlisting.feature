# formbuilder 架構異動2021/3/15上線
# @BaseCase @Admin @FormBuilder @formBuilderlisting @EAT-626
# Feature: Check form builder index page
#   As a user of Shopline
#   I want to create multiple products
#   So that my customer can see those products after created

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

#   @EAT-626-1 @premiumFeature
#   Scenario: Check form builder page exist form
#     Given I am on Setup Guide Page
#     When I click on side menu items included 'Online Store Design'
#     And I click on side submenu items included 'Form Builder'
#     And I switch to 2 of tabs
#     Then I should be redirected to Form Builder Index Page
#     Then I should see form of form lists

#   @EAT-626-2
#   Scenario: Check form builder page no exist form
#     Given I am on Setup Guide Page
#     When I click on side menu items included 'Online Store Design'
#     And I click on side submenu items included 'Form Builder'
#     And I switch to 2 of tabs
#     Then I should be redirected to Form Builder Index Page
#     Then I should see error of empty form

#   @EAT-626-3 @premiumFeature
#   Scenario: Check form builder page exist form and click edit button
#     Given I am on Setup Guide Page
#     When I click on side menu items included 'Online Store Design'
#     And I click on side submenu items included 'Form Builder'
#     And I switch to 2 of tabs
#     Then I should be redirected to Form Builder Index Page
#     Then I should see form of form lists
#     When I click on 1st edit button
#     Then I should be redirected to Form Builder Edit Page

#   @EAT-626-4 @premiumFeature
#   Scenario: Check form builder page exist form and click delete button
#     Given I am on Setup Guide Page
#     When I click on side menu items included 'Online Store Design'
#     And I click on side submenu items included 'Form Builder'
#     And I switch to 2 of tabs
#     Then I should be redirected to Form Builder Index Page
#     Then I should see form of form lists
#     When I click on 1st delete button
#     Then I should see popup
#     When I click on popup button included 'Delete'
#     Then I should see error of empty form
#     And ---ROLL BACK---
#     When I click on button included 'Create'
#     Then I should see popup
#     When I fill 'exist form' to popup field
#     And I click on popup button included 'Create'
#     Then I should be redirected to Form Builder Edit Page
#     When I click on button included 'Save'
#     And I click on button included 'Publish'
#     Then I should be redirected to Form Builder Index Page