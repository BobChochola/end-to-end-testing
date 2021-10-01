# formbuilder 架構異動2021/3/15上線
# @BaseCase @Admin @FormBuilder @formBuilderEdit @EAT-628
# Feature: Edit new form by multiple ways
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

#   @EAT-628-1
#   Scenario: Check form builder field can be draggable
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
#     When I drag long text drag area to drag destination
#     Then I should see side menu
#     When I fill 'long text' to side menu textarea
#     When I click on side menu button included 'Save'
#     Then I should see long text

#     When I click on side menu collapse button
#     Then I should see side menu
#     When I drag single choice drag area to drag destination
#     Then I should see side menu
#     When I fill 'single choice' to side menu textarea
#     And I click on side menu add button
#     Then I should see side menu field
#     When I fill 'first' to side menu field
#     When I click on side menu button included 'Save'
#     Then I should see single choice

#     When I click on side menu collapse button
#     Then I should see side menu
#     When I drag multiple choice drag area to drag destination
#     Then I should see side menu
#     When I fill 'multiple choice' to side menu textarea
#     And I click on side menu add button
#     Then I should see side menu field
#     When I fill 'first' to side menu field
#     When I click on side menu button included 'Save'
#     Then I should see multiple choice

#     When I click on side menu collapse button
#     Then I should see side menu
#     When I drag dropdown choice drag area to drag destination
#     Then I should see side menu
#     When I fill 'dropdown choice' to side menu textarea
#     And I click on side menu add button
#     Then I should see side menu field
#     When I fill 'first' to side menu field
#     When I click on side menu button included 'Save'
#     Then I should see dropdown choice

#     And I click on button included 'Publish'
#     Then I should be redirected to Form Builder Index Page
#     And ---ROLL BACK---
#     Then I should see form of form lists
#     When I click on 1st delete button
#     Then I should see popup
#     When I click on popup button included 'Delete'
#     Then I should see error of empty form

#   @EAT-628-2
#   Scenario: setting form title and description by click on title and description
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
#     When I click on side menu collapse button
#     Then I should see title
#     When I click on title
#     Then I should see side menu
#     When I fill 'testing title' to side menu textarea
#     When I click on side menu button included 'Save'
#     When I click on description
#     Then I should see side menu
#     When I fill 'testing description' to side menu textarea
#     When I click on side menu button included 'Save'
#     Then I click on language switch tab included 'Traditional Chinese'
#     Then title should not contain 'testing title'
#     Then description should not contain 'testing description'
#     Then I click on language switch tab included 'English'
#     Then title should contain 'testing title'
#     Then description should contain 'testing description'

#   @EAT-628-3
#   Scenario: delete dragged field
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
#     When I hover over short text
#     Then I should see copy icon
#     And I click on copy icon
#     Then I should see 2 short text
#     When I hover over short text
#     And I click on delete icon
#     Then I should see 1 short text

#   @EAT-628-4
#   Scenario: setting page title, description from page settings
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
#     When I click on button included 'Publish'
#     Then I should be redirected to Form Builder Index Page
#     Then form of form lists should contain 'new form'
#     When I click on 1st edit button
#     Then I should be redirected to Form Builder Edit Page
#     Then breadcrumb should contain 'new form'
#     When I click on side menu settings button
#     Then I should see side menu
#     When I click on side menu page settings button included 'Page Title'
#     Then I should see side menu field
#     When I fill 'testing en title' to side menu field
#     When I fill 'testing zh title' to 2nd side menu field
#     When I click on side menu settings button
#     When I select language dropdown option included '中文 (繁)' of language dropdown
#     Then I should see breadcrumb
#     Then breadcrumb should contain 'testing zh title'
#     When I select language dropdown option included 'English' of language dropdown
#     Then I should see breadcrumb
#     Then breadcrumb should contain 'testing en title'
#     When I click on button included 'Update'
#     And I click on return form manager panel button
#     Then I should be redirected to Form Builder Index Page
#     When I select language dropdown option included '中文 (繁)' of language dropdown
#     Then I should see form of form lists
#     Then form of form lists should contain 'testing zh title'
#     When I select language dropdown option included 'English' of language dropdown
#     Then I should see form of form lists
#     Then form of form lists should contain 'testing en title'
#     And ---ROLL BACK---
#     When I click on 1st delete button
#     Then I should see popup
#     When I click on popup button included 'Delete'
#     Then I should see error of empty form

#   @EAT-628-5
#   Scenario: setting seo from page settings
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
#     When I click on button included 'Publish'
#     Then I should be redirected to Form Builder Index Page
#     When I click on 1st edit button
#     Then I should be redirected to Form Builder Edit Page
#     When I click on side menu settings button
#     Then I should see side menu
#     When I click on side menu page settings button included 'SEO Settings'
#     Then I should see side menu field
#     When I fill 'testing title' to 3rd side menu field
#     When I fill 'testing description' to 4th side menu field
#     When I fill 'testing-keywords' to 5th side menu field
#     # due to SL-12008
#     # When I fill 'testing-seo' to 6th side menu field
#     When I click on button included 'Update'
#     And I click on return form manager panel button
#     Then I should be redirected to Form Builder Index Page
#     When I click on edit button
#     Then I should be redirected to Form Builder Edit Page
#     When I click on side menu settings button
#     Then I should see side menu
#     When I click on side menu page settings button included 'SEO Settings'
#     Then I should see side menu field
#     Then 3rd side menu field should contain 'testing title'
#     Then 4th side menu field should contain 'testing description'
#     Then 5th side menu field should contain 'testing-keywords'
#     # due to SL-12008
#     # Then 6th side menu field should contain 'testing-seo'
#     And I click on return form manager panel button
#     Then I should be redirected to Form Builder Index Page
#     And ---ROLL BACK---
#     When I click on 1st delete button
#     Then I should see popup
#     When I click on popup button included 'Delete'
#     Then I should see error of empty form