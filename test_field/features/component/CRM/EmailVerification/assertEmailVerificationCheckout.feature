@BaseCase @Admin @Storefront @CRM @EmailVerification @assertEmailVerificationCheckout
Feature: Check the assertion when sign up via email
  As a shopper
  I want to shopper can sign up via email can be stored
  So I can see whether his mail is verified

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

  @EAT-447 @EAT-447-3 @fixture-shop
  Scenario: Check the column Is Verified with turned off toggle
    
    Given I am on Customer List Page
    When I input email to search field
    And I should see row of select checkbox list
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    Then I should not see email verify status

  @EAT-447 @EAT-447-4 @fixture-delivery @fixture-payment @fixture-product @fixture-shop
  Scenario: Checkout and check not Verified
    Given I am on Customer Settings Page
    Then I should see verification email toggle
    When I check and click verification email toggle off
    Then verification email toggle should be checked
    And I click on update button
    Given I am on Shop Product Index Page
    When I input "4th Product for Checkout" to search field
    Then 1st product of products list should contain "4th Product for Checkout"
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
    Then I wait for 10 seconds for loading
    Given I am on Customer List Page
    Then 1st customer row should contain new customer email
    When I click on 1st view button
    Then I should be redirected to Customer Detail Page
    Then email verify status should contain 'Not verified yet'
    And ---ROLL BACK---
    Given I am on Customer Settings Page
    Then I should see verification email toggle
    When I click on verification email toggle
    And I click on update button
    Then verification email toggle should not be checked
    Given I am on Customer List Page
    Then 1st customer row should contain new customer email
    When I click on customer checkbox
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button

  @EAT-447 @EAT-447-5 @fixture-delivery @fixture-payment @fixture-product @fixture-shop @fixture-product
  Scenario: Checkout and reset password, check Is Verified
    Given I am on Customer Settings Page
    Then I should see verification email toggle
    When I check and click verification email toggle off
    Then verification email toggle should be checked
    And I click on update button
    Given I am on Basic Setting Page
    When I mark the value of shop name field as variable shop name
    Given I am on Shop Product Index Page
    When I input "4th Product for Checkout" to search field
    Then 1st product of products list should contain "4th Product for Checkout"
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
    And I wait for 150 seconds for mail sent
    Given I am on Google Mail Page
    Then I should see account field
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
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
    Then I wait for 10 seconds for loading
    Given I am on Customer List Page
    Then 1st customer row should contain new customer email
    When I click on 1st view button
    Then I should be redirected to Customer Detail Page
    Then email verify status should equal to 'Verified'
    And ---ROLL BACK---
    Given I am on Customer Settings Page
    Then I should see verification email toggle
    When I click on verification email toggle
    And I click on update button
    Then verification email toggle should not be checked
    Given I am on Customer List Page
    Then 1st customer row should contain new customer email
    When I click on customer checkbox
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button

  @EAT-447 @EAT-447-6 @fixture-shop
  Scenario: Signup and forgot password, check Is Verified
    Given I am on Customer Settings Page
    Then I should see verification email toggle
    When I check and click verification email toggle off
    Then verification email toggle should be checked
    And I click on update button
    Given I am on Basic Setting Page
    When I mark the value of shop name field as variable shop name
    Given I am on Shop Sign Up Page
    When I fill new account email to email field
    And I fill new account password to password field
    And I fill name to name field
    And I click on agree terms checkbox
    When I click on submit button
    Then I should be redirected to Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on logout button
    Then I should be redirected to Shop Home Page
    Given I am on Shop Login Page
    When I click on forgot password button
    Then I should be redirected to Shop Forgot Password Page
    When I fill new account email to account field
    And I click on sent reset password button
    Then I should see success message
    And I wait for 100 seconds for mail sent
    Given I am on Google Mail Page
    Then I should see account field
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    Then I should see search mail list
    When I click on row of mail list included 'Password Reset Request'
    Then I should see mail detail
    When I click on set my password button
    When I check and click on proceed button
    Then I switch to 2 of tabs
    Then I should be redirected to Shop Set Password Page
    When I fill password to new password field
    And I fill password to confirm password field
    And I click on change my password button
    Then I should be redirected to Shop Home Page
    Then I wait for 10 seconds for loading
    Given I am on Customer List Page
    When I input new account email to search field
    Then 1st customer row should contain new account email
    When I click on 1st view button
    Then I should be redirected to Customer Detail Page
    Then email verify status should equal to 'Verified'
    And ---ROLL BACK---
    Given I am on Customer Settings Page
    Then I should see verification email toggle
    When I click on verification email toggle
    And I click on update button
    Then verification email toggle should not be checked
    Given I am on Customer List Page
    Then 1st customer row should contain new account email
    When I click on customer checkbox
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button