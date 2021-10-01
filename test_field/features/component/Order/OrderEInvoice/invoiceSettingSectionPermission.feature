@BaseCase @Admin @Invoice @Staff @Setting @Order @OrderEInvoice @invoiceSettingSectionPermission
Feature: Invoice setting section permission
  As a merchant
  I want to confirm the permission of invoice setting section

  Background:
    Given I am on Admin Login Page
    And I fill correct admin email to email field
    And I fill correct admin password to password field
    When I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

  @EAT-610 @EAT-967
  Scenario: superadmin, shop owner, staff with permission, staff without permission invoice setting section permission
    #superadmin
    Given I am on Order Setting Page
    Then I check and click invoice toggle off
    Then I should see invoice toggle on
    Then taxable checkbox should be enabled
    Then tax free checkbox should be enabled
    Then I should see shop tax type faq
    When I click on shop tax type faq
    Then I switch to 2 of tabs
    Then I should be redirected to Faq Page
    Then I switch to 1 of tabs
    Then I should be redirected to Order Setting Page
    And I fill '1234567890' to Nat No field
    And I click on Donation Recipient dropdown
    And I wait for 5 seconds for loading
    When I click on 3rd Donation Recipient option
    And I fill '1234567' to website code field
    And I fill '123456789' to api password field
    And I select Oversea tax type option included 'Taxable' of Oversea tax type dropdown
    And I click on update button
    Then I should be redirected to Dashboard Page
    Given I am on Order Setting Page
    Then Nat No field should contain '1234567890'
    Then I mark the value of selected Donation Recipient as variable donation recipient1
    And website code field should contain '1234567'
    And api password field should contain '123456789'
    And Oversea tax type dropdown should contain 'Taxable'

    #shop owner
    When I select Logout of User Menu
    Then I should be redirected to Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    And I should see successful login
    Given I am on Order Setting Page
    Then invoice toggle should be disabled
    Then taxable checkbox should be enabled
    Then tax free checkbox should be enabled
    Then I should see shop tax type faq
    When I click on shop tax type faq
    Then I switch to 2 of tabs
    Then I should be redirected to Faq Page
    Then I switch to 1 of tabs
    Then I should be redirected to Order Setting Page
    And Nat No field should be disabled
    Then selected Donation Recipient should contain donation recipient1
    When I click on 2nd Donation Recipient option
    And website code field should be disabled
    And api password field should be disabled
    And I select Oversea tax type option included 'Zero-tax-rate- Exported by customs' of Oversea tax type dropdown
    And I click on update button
    Then I should be redirected to Dashboard Page
    Given I am on Order Setting Page
    Then I mark the value of selected Donation Recipient as variable donation recipient2
    And Oversea tax type dropdown should contain 'Zero-tax-rate- Exported by customs'

    #staff with permission
    Given I am on Staff Setting Add Page
    When I fill qa email to email field
    And I click on add button
    Then I should be redirected to Edit Staff Permissions Page
    And I click on order setting permission checkbox
    And I click on update button
    Then I should be redirected to Staff Setting Page
    When I select Logout of User Menu
    Then I should be redirected to Admin Login Page
    And I fill qa email to email field
    And I fill qa password to password field
    And I click on login button
    And I should see successful login
    Given I am on Order Setting Page
    Then invoice toggle should be disabled
    Then taxable checkbox should be disabled
    Then tax free checkbox should be disabled
    Then I should see shop tax type faq
    When I click on shop tax type faq
    Then I switch to 2 of tabs
    Then I should be redirected to Faq Page
    Then I switch to 1 of tabs
    Then I should be redirected to Order Setting Page
    And Nat No field should be disabled
    Then selected Donation Recipient should contain donation recipient2
    When I click on 1st Donation Recipient option
    And website code field should be disabled
    And api password field should be disabled
    And I select Oversea tax type option included 'Zero-tax-rate- Not exported by customs' of Oversea tax type dropdown
    And I click on update button
    Then I should be redirected to Dashboard Page
    Given I am on Order Setting Page
    And Oversea tax type dropdown should contain 'Zero-tax-rate- Not exported by customs'

    #staff without permission
    When I select Logout of User Menu
    Then I should be redirected to Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    When I click on login button
    And I should see successful login
    Given I am on Staff Setting Page
    When I click on 1st edit button
    Then I should be redirected to Edit Staff Permissions Page
    And I click on order setting permission checkbox
    And I click on update button
    Then I should be redirected to Staff Setting Page
    When I select Logout of User Menu
    Then I should be redirected to Admin Login Page
    And I fill qa email to email field
    And I fill qa password to password field
    And I click on login button
    And I should see successful login
    And I should be redirected to Unauthorized Page
    And I click on side menu items included "Settings" 
    And I click on side submenu items included "Order Settings"
    Then I should be redirected to Unauthorized Page

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

    Given I am on Order Setting Page
    When I click on invoice toggle
    And I click on update button
    Then I should be redirected to Dashboard Page