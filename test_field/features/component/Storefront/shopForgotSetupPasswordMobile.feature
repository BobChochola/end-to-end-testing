@BaseCase @Storefront @Import @shopForgotSetupPasswordMobile @fixture-shop
Feature: Normal/import forgot/setup password
  As a vistor to Shopline website
  I want to forgot/setup password

  @EAT-725 @EAT-725-2 @fixture-mobile-signup-p2
  Scenario: Mobile - normal forgot password
    Given I am on Shop Login Page
    When I click on forgot password button
    Then I should be redirected to Shop Forgot Password Page
    When I fill check code phone to account field
    And I click on sent reset password button
    Then I should see mobile check session
    When I click on send me check code button
    Then I should see check code field
    When I switch to 2 of tabs
    Then I wait for 30 seconds for sms sent
    Given I am on Every8d Page
    Then I check and click close intercom button
    When I fill every8d account to account field
    And I input every8d password to password field
    And I modify attribute value and click login button
    And I click on search sms button
    Then I should see phone search field
    When I fill check code phone to phone search field
    And I should see phone search checkbox
    And I click on phone search checkbox
    And I click on search button
    Then I should see row of mail content
    When I mark the value of row of mail content as variable message content
    Then I switch to 1 of tabs
    Then I should be redirected to Shop Forgot Password Page
    Then I should see mobile check session
    Then I should see check code field
    When I input check code to check code field
    Then I should be redirected to Shop Set Password Page
    When I fill password to new password field
    And I fill password to confirm password field
    And I click on change my password button
    Then I should be redirected to Shop Home Page

  @EAT-725 @EAT-725-4 @fixture-mobile-signup-p2
  Scenario: Mobile - import forgot password
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

    Given I am on Customer List Page
    When I select language dropdown option included 'English' of language dropdown
    Then I should see search field
    When I select import report dropdown option included 'Import Report' of import report dropdown
    Then I should be redirected to Customer Bulk Import Update Page
    When I pick customer mobile country code bulk upload file to file upload selector
    Then I should see row of customer preview list
    And I click on import customer button
    And I should see popover
    Then I click on ok button
    And I should see row of upload list
    Then I wait for 30 seconds for uploading
    Then I Refresh
    And I should see row of upload list
    Then 1st row of updated time should contain date
    # Due to import status issue
    # And 1st row of status should equal to "Done"

    Given I am on Shop Login Page
    When I click on forgot password button
    Then I should be redirected to Shop Forgot Password Page
    When I fill '0912345677' to account field
    And I click on sent reset password button
    Then I should see mobile check session
    When I click on send me check code button
    Then I should see check code field
    When I switch to 2 of tabs
    Given I am on Every8d Page
    Then I check and click close intercom button
    When I fill every8d account to account field
    And I input every8d password to password field
    And I modify attribute value and click login button
    And I click on search sms button
    Then I should see phone search field
    When I fill '0912345677' to phone search field
    And I should see phone search checkbox
    And I click on phone search checkbox
    And I click on search button
    Then I should see row of mail content
    When I mark the value of row of mail content as variable message content
    Then I switch to 1 of tabs
    Then I should be redirected to Shop Forgot Password Page
    Then I should see mobile check session
    Then I should see check code field
    When I input check code to check code field
    Then I should be redirected to Shop Set Password Page
    When I fill password to new password field
    And I fill password to confirm password field
    And I click on change my password button
    Then I should be redirected to Shop Home Page
    And ---ROLL BACK---
    Given I am on Customer List Page
    And I click on 1st customer checkbox
    And I click on 2nd customer checkbox
    And I click on 3rd customer checkbox
    Then I select delete selected of bulk action dropdown
    And I should see popover
    When I click on ok button

  @EAT-725 @EAT-725-6 @fixture-mobile-signup-p2 @Job @Import
  Scenario: Mobile - import setup password
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    Then I should see successful login
    When I check and click no thanks button

    Given I am on Customer List Page
    When I select import report dropdown option included 'Import Report' of import report dropdown
    Then I should be redirected to Customer Bulk Import Update Page
    When I pick customer mobile country code bulk upload file to file upload selector
    Then I should see row of customer preview list
    And I click on import customer button
    And I should see popover
    Then I click on ok button
    And I should see row of upload list
    Then I wait for 8 seconds for uploading
    Then I Refresh
    And I should see row of upload list
    Then 1st row of updated time should contain date
    # Due to import status issue
    # And 1st row of status should equal to "Done"

    When I switch to 2 of tabs
    Given I am on Every8d Page
    Then I check and click close intercom button
    When I fill every8d account to account field
    And I input every8d password to password field
    And I modify attribute value and click login button
    And I click on search sms button
    Then I should see phone search field
    When I fill '0912345677' to phone search field
    And I should see phone search checkbox
    And I click on phone search checkbox
    And I click on search button
    Then I should see row of mail content
    When I mark the value of row of mail content as variable message content
    When I open new tab and redirect to setup link
    When I switch to 3 of tabs
    Then I should be redirected to Shop Forgot Password Page
    Then I should see mobile check session
    When I click on send me check code button
    Then I should see check code field
    When I switch to 2 of tabs
    Then I should be redirected to Every8d Page
    When I fill '0912345677' to phone search field
    And I should see phone search checkbox
    And I click on search button
    Then I should see row of mail content
    When I mark the value of row of mail content as variable message content
    When I switch to 3 of tabs
    Then I should be redirected to Shop Forgot Password Page
    Then I should see check code field
    When I input check code to check code field
    Then I should be redirected to Shop Set Password Page
    When I fill password to new password field
    And I fill password to confirm password field
    And I click on change my password button
    Then I should be redirected to Shop Home Page
    And ---ROLL BACK---
    Given I am on Customer List Page
    And I click on 1st customer checkbox
    And I click on 2nd customer checkbox
    And I click on 3rd customer checkbox
    Then I select delete selected of bulk action dropdown
    And I should see popover
    When I click on ok button