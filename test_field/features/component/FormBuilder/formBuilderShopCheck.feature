# formbuilder 架構異動2021/3/15上線
# @BaseCase @Storefront @Admin @FormBuilder @formBuilderShopCheck @EAT-629
# Feature: Check storefront can see what I setup
#   As a user of Shopline
#   I want to edit form
#   So that I can modify by multiple ways

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

#   @EAT-629-1 @fixture-shop
#   Scenario: Check form builder required login
#     Given I am on Setup Guide Page
#     When I click on side menu items included 'Online Store Design'
#     And I click on side submenu items included 'Form Builder'
#     And I switch to 2 of tabs
#     Then I should be redirected to Form Builder Index Page
#     When I click on button included 'Create'
#     Then I should see popup
#     When I fill 'new form' to popup field
#     And I click on popup button included 'Create'
#     Then I should be redirected to Form Builder Edit Page
#     Then I should see side menu
#     When I drag long text drag area to drag destination
#     Then I should see side menu
#     When I fill 'short text' to side menu textarea
#     When I click on side menu button included 'Save'
#     Then I should see long text
#     When I click on side menu settings button
#     Then I should see side menu
#     When I click on side menu member access toggle
#     And I click on button included 'Publish'
#     Then I should be redirected to Form Builder Index Page
#     When I click on go to page button
#     Then I switch to 3 of tabs
#     Then I should be redirected to Shop Login Page
#     Then I should see alert
#     Then alert should contain 'You need to sign in or sign up before continuing.'
#     When I fill email to email field
#     And I fill password to password field
#     When I click on submit button
#     Then I should be redirected to Shop Form Page
#     And ---ROLL BACK---
#     Then I switch to 2 of tabs
#     Then I should be redirected to Form Builder Index Page
#     Then I should see form of form lists
#     When I click on 1st delete button
#     Then I should see popup
#     When I click on popup button included 'Delete'
#     Then I should see error of empty form

#   @EAT-629-2 @fixture-shop
#   Scenario: Check form builder submit error msg and successful msg
#     Given I am on Setup Guide Page
#     When I click on side menu items included 'Online Store Design'
#     And I click on side submenu items included 'Form Builder'
#     And I switch to 2 of tabs
#     Then I should be redirected to Form Builder Index Page
#     When I click on button included 'Create'
#     Then I should see popup
#     When I fill 'new form' to popup field
#     And I click on popup button included 'Create'
#     Then I should be redirected to Form Builder Edit Page
#     Then I should see side menu
#     When I drag short text drag area to drag destination
#     Then I should see side menu
#     When I fill 'short text' to side menu textarea
#     When I click on side menu button included 'Save'
#     Then I should see short text

#     When I click on side menu collapse button
#     Then I should see side menu
#     When I drag multiple choice drag area to drag destination
#     Then I should see side menu
#     When I fill 'multiple choice' to side menu textarea
#     And I click on side menu add button
#     Then I should see side menu field
#     When I fill 'beef' to side menu field
#     And I click on side menu add button
#     Then I should see 2 side menu field
#     When I fill 'pork' to 2nd side menu field
#     And I click on side menu required toggle
#     When I click on side menu button included 'Save'
#     Then I should see multiple choice

#     And I click on button included 'Publish'
#     Then I should be redirected to Form Builder Index Page
#     When I click on go to page button
#     Then I switch to 3 of tabs
#     Then I should be redirected to Shop Form Page
#     Then I should see short text field
#     When I fill 'test' to short text field
#     And I click on submit button
#     Then I should see error msg
#     Then error msg should contain 'multiple choice is required'
#     When I click on 1st multiple choice
#     And I click on submit button
#     Then I should see submit successfully
#     Then I switch to 2 of tabs
#     Then I should be redirected to Form Builder Index Page
#     And ---ROLL BACK---
#     Then I should see form of form lists
#     When I click on 1st delete button
#     Then I should see popup
#     When I click on popup button included 'Delete'
#     Then I should see error of empty form

#   @EAT-629-3 @theme-kingsman @fixture-shop
#   Scenario: Check form builder submit error msg and successful msg - layout V2
#     Given I am on Setup Guide Page
#     When I click on side menu items included 'Online Store Design'
#     And I click on side submenu items included 'Form Builder'
#     And I switch to 2 of tabs
#     Then I should be redirected to Form Builder Index Page
#     When I click on button included 'Create'
#     Then I should see popup
#     When I fill 'new form' to popup field
#     And I click on popup button included 'Create'
#     Then I should be redirected to Form Builder Edit Page
#     Then I should see side menu
#     When I drag single choice drag area to drag destination
#     Then I should see side menu
#     When I fill 'single choice' to side menu textarea
#     And I click on side menu add button
#     Then I should see side menu field
#     When I fill 'meat' to side menu field
#     And I click on side menu required toggle
#     When I click on side menu button included 'Save'
#     Then I should see single choice

#     And I click on button included 'Publish'
#     Then I should be redirected to Form Builder Index Page
#     When I click on go to page button
#     Then I switch to 3 of tabs
#     Then I should be redirected to Shop Form Layout V Two Page
#     Then I should see single choice
#     When I click on submit button
#     Then I should see error msg
#     Then error msg should contain 'single choice is required'
#     When I click on 1st single choice
#     And I click on submit button
#     Then I should see submit successfully
#     Then I switch to 2 of tabs
#     Then I should be redirected to Form Builder Index Page
#     And ---ROLL BACK---
#     Then I should see form of form lists
#     When I click on 1st delete button
#     Then I should see popup
#     When I click on popup button included 'Delete'
#     Then I should see error of empty form