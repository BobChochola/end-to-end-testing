@BaseCase @Admin @Order @CancelOrder @Staff @orderCancelPermission @C17409 @premiumFeature
Feature: check switch order cancel toggle support to payment function - super admin/staff
  As a Shopline
  login as Super-admin, staff can setting order cancel

  Background:
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

    Given I am on Payment Create Page
    When I select payment type dropdown option included 'Taishin' of payment type dropdown
    And I fill Taishin Merchant ID to id field
    And I fill Taishin TID to tid field
    When I click on language tab included 'English'
    And I fill "(dirty data) Taishin" to name field
    When I click on add button
    Then I should not see cancel order toggle
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Payment Setting Page
    And 1st row of payment method list should contain "(dirty data) Taishin"

  @EAT-1161 @EAT-1161-2
  Scenario: check switch order cancel toggle support to payment function - super admin
    Given I am on Order Setting Page
    When I check and click cancel order toggle on
    And I click on update button
    Then I should be redirected to Dashboard Page

    Given I am on Payment Setting Page
    When I click edit button of payment method list for the same order of row of payment method list included "(dirty data) Taishin"
    Then I should be redirected to Payment Edit Page
    Then I should not see cancel order toggle

    When I switch to 2 of tabs
    Given I am on Order Setting Page
    When I check and click cancel order toggle off
    And I scroll down to update button
    And I click on update button
    Then I should be redirected to Dashboard Page

    When I switch to 1 of tabs
    Then I should be redirected to Payment Edit Page
    Then I Refresh
    Then I should see cancel order toggle

    Given I am on Payment Create Page
    When I select payment type dropdown option included 'Bank Transfer' of payment type dropdown
    And I fill instruction to payment instructions field
    When I click on language tab included 'English'
    And I fill "(dirty data) Bank Transfer cancel order" to name field
    Then I should see cancel order toggle
    Then I click on cancel order toggle
    When I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Payment Setting Page
    And 1st row of payment method list should contain "(dirty data) Bank Transfer cancel order"

    And ---ROLL BACK---
    Given I am on Payment Setting Page
    When I click delete button of payment method list for the same order of row of payment method list included '(dirty data) Taishin'
    And I click on delete checkbox
    And I click on confirm delete button
    When I click delete button of payment method list for the same order of row of payment method list included '(dirty data) Bank Transfer cancel order'
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain 'dirty data'

    Given I am on Order Setting Page
    When I check and click cancel order toggle on
    And I click on update button
    Then I should be redirected to Dashboard Page

  @EAT-1161 @EAT-1161-3
  Scenario: check switch order cancel toggle support to payment function - staff
    Given I am on Staff Setting Add Page
    When I fill qa email to email field
    And I click on add button
    Then I should be redirected to Edit Staff Permissions Page
    And I click on order setting permission checkbox
    And I click on payment option permission checkbox
    And I click on update button
    Then I should be redirected to Staff Setting Page
    When I select Logout of User Menu
    Then I should be redirected to Admin Login Page
    And I fill qa email to email field
    And I fill qa password to password field
    And I click on login button
    And I should see successful login
    
    Given I am on Payment Setting Page
    When I click edit button of payment method list for the same order of row of payment method list included "(dirty data) Taishin"
    Then I should be redirected to Payment Edit Page
    Then I should not see cancel order toggle

    When I switch to 2 of tabs
    Given I am on Order Setting Page
    When I check and click cancel order toggle off
    And I scroll down to update button
    And I click on update button
    Then I should be redirected to Dashboard Page

    When I switch to 1 of tabs
    Then I should be redirected to Payment Edit Page
    Then I Refresh
    Then I should see cancel order toggle

    Given I am on Payment Create Page
    When I select payment type dropdown option included 'Bank Transfer' of payment type dropdown
    And I fill instruction to payment instructions field
    When I click on language tab included 'English'
    And I fill "(dirty data) Bank Transfer cancel order" to name field
    Then I should see cancel order toggle
    Then I click on cancel order toggle
    When I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Payment Setting Page
    And 1st row of payment method list should contain "(dirty data) Bank Transfer cancel order"

    And ---ROLL BACK---
    When I select Logout of User Menu
    Then I should be redirected to Admin Login Page
    And I fill correct admin email to email field
    And I fill correct admin password to password field
    When I click on login button
    And I should see successful login
    Given I am on Staff Setting Page
    When I click on 1st delete button
    Then I should see alert
    And I click on alert checkbox
    And I click on ok button
    Then staff should not contain qa email

    Given I am on Payment Setting Page
    When I click on 1st delete button of payment method list
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain 'Bank Transfer cancel order'

    Given I am on Order Setting Page
    When I check and click cancel order toggle on
    And I click on update button
    Then I should be redirected to Dashboard Page