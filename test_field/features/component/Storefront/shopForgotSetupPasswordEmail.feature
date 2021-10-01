@BaseCase @Storefront @Import @shopForgotSetupPasswordEmail @fixture-shop
Feature: Normal/Import forgot/setup password
  As a vistor to Shopline website
  I want to forgot/setup password

  @EAT-725 @EAT-725-1 @smokeTest
  Scenario: Email - normal forgot password
    Given I am on Shop Login Page
    When I click on forgot password button
    Then I should be redirected to Shop Forgot Password Page
    When I fill account email to account field
    And I click on sent reset password button
    Then I should see success message
    Given I am on Google Mail Page
    Then I should see account field
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input 'Password Reset Request' to search field
    Then I should see search mail list
    When I click on row of mail list included 'Password Reset Request'
    Then I should see mail detail
    When I click on set my password button
    Then I switch to 2 of tabs
    Then I should be redirected to Shop Set Password Page
    When I check name field and fill 'test'
    When I fill password to new password field
    And I fill password to confirm password field
    And I click on change my password button
    Then I should be redirected to Shop Home Page

  @EAT-725 @EAT-725-3 @smokeTest
  Scenario: Email - import forgot password
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
    When I pick customer bulk upload file to file upload selector
    Then I should see row of customer preview list
    And I click on import customer button
    And I should see popover
    Then I click on ok button
    And I should see row of upload list
    Then I wait for 30 seconds for uploading
    Then I Refresh
    And I should see row of upload list
    Then 1st row of updated time should contain date
    And 1st row of status should equal to "Done"

    Given I am on Shop Login Page
    When I click on forgot password button
    Then I should be redirected to Shop Forgot Password Page
    When I fill 'testuser+111@shoplineapp.com' to account field
    And I click on sent reset password button
    Then I should see success message
    Given I am on Google Mail Page
    Then I should see account field
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input 'testuser+111@shoplineapp.com' to search field
    Then I should see search mail list
    When I click on row of mail list included 'Password Reset Request'
    Then I should see mail detail
    When I click on set my password button
    Then I switch to 2 of tabs
    Then I should be redirected to Shop Set Password Page
    When I check name field and fill 'test'
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
    And I Refresh
    Then customer row should not contain "CCC"
    Then customer row should not contain "BBB"
    Then customer row should not contain "AAA"

  @EAT-725 @EAT-725-5 @fixture-product @fixture-payment @fixture-delivery
  Scenario: Email - normal setup password
    Given I am on Shop Product Index Page
    When I input "4th Product for Checkout" to search field
    Then 1st product of products list should contain '4th Product for Checkout'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill new customer email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I wait for 150 seconds for mail sent
    Given I am on Google Mail Page
    Then I should see account field
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input new customer email to search field
    Then I should see search mail list
    When I click on row of mail list included "Please set up your account"
    Then I should see mail detail
    When I click on set my password button
    Then I switch to 2 of tabs
    Then I should be redirected to Shop Set Password Page
    When I fill password to new password field
    And I fill password to confirm password field
    And I click on change my password button
    Then I should be redirected to Sign Up Confirmation Page
    Then I should be redirected to Shop Order Confirm Page