# formbuilder 架構異動2021/3/15上線
# @BaseCase @Admin @FormBuilder @formBuilderCreate @EAT-627
# Feature: Create new form
#   As a user of Shopline
#   I want to create form
#   So that I can create form successfully

#   Background:
#     Given I am on Admin Login Page
#     And I fill correct account email to email field
#     And I fill correct account password to password field
#     And I click on login button
#     Then I should see successful login
#     When I check and click no thanks button
#     Then I check intercom message notification frame and click clear intercom message button
#     Then I check intercom message notification frame and click intercom message close button
#     When I check new feature alert notification frame and click new feature alert close button
#     When I check and click exclude products panel close button

#   @EAT-627-1
#   Scenario: Create new form by click create button
#     Given I am on Setup Guide Page
#     When I click on side menu items included 'Online Store Design'
#     And I click on side submenu items included 'Form Builder'
#     And I switch to 2 of tabs
#     Then I should be redirected to Form Builder Index Page
#     When I click on button included 'Create'
#     Then I should see popup
#     When I fill 'create form' to popup field
#     And I click on popup button included 'Create'
#     Then I should be redirected to Form Builder Edit Page
#     When I click on button included 'Save'
#     And I click on button included 'Publish'
#     Then I should be redirected to Form Builder Index Page
#     And ---ROLL BACK---
#     Then I should see form of form lists
#     When I click on 1st delete button
#     Then I should see popup
#     When I click on popup button included 'Delete'
#     Then I should see error of empty form

#   @EAT-627-2
#   Scenario: Create new form by click create wording link
#     Given I am on Setup Guide Page
#     When I click on side menu items included 'Online Store Design'
#     And I click on side submenu items included 'Form Builder'
#     And I switch to 2 of tabs
#     Then I should be redirected to Form Builder Index Page
#     When I click on create link
#     Then I should see popup
#     When I fill 'create form' to popup field
#     And I click on popup button included 'Create'
#     Then I should be redirected to Form Builder Edit Page
#     When I click on button included 'Save'
#     And I click on button included 'Publish'
#     Then I should be redirected to Form Builder Index Page
#     And ---ROLL BACK---
#     Then I should see form of form lists
#     When I click on 1st delete button
#     Then I should see popup
#     When I click on popup button included 'Delete'
#     Then I should see error of empty form