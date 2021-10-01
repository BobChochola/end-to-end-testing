@BaseCase @Admin @Storefront @CRM @CustomNotification @customPasswordResetNotificationEmailEnglish
@fixture-shop @EAT-1005
Feature: Add custom text to email password reset notification header / footer and check email receive correctly（English)
  As a merchant
  I want to add text to password reset notification Email footer and header
  So that shoppers will see it in the email after clicking on sent reset password button

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

    Given I am on Basic Setting Page
    When I mark the value of shop name field as variable shop name

  @EAT-1005-1
  Scenario: Custom Text and English Support in password reset notification email Header and Footer
    Given I am on Custom Notification Page
    Then I should see password reset notification button
    When I click on password reset notification button
    Then I should be redirected to Custom Password Reset Notification Page
    Then I should see header edit button
    Then I should see footer edit button
    Then I should see english email picture
    When I click on header edit button
    Then I should see editor toolbar
    Then I should see html text field
    When I input 'password reset notification email header test' to 1st html text field
    When I click on 1st bold button
    And I simply fill 'bold ' to 1st html text field
    And I click on 1st italic button
    And I simply fill 'italic ' to 1st html text field
    And I click on 1st underline button
    And I simply fill 'underline ' to 1st html text field
    And I click on 1st font size dropdown
    And I click on font size dropdown option included '18'
    And I simply fill 'Font Size' to 1st html text field
    
    Then I should see 3 bold font
    Then 1st bold font should contain 'bold'
    Then 2nd bold font should contain 'italic'
    Then 3rd bold font should contain 'underline'
    Then I should see 2 italic font
    Then 1st italic font should contain 'italic'
    Then 2nd italic font should contain 'underline'
    Then I should see 1 underline font
    Then underline font should contain 'underline'
    Then I should see 1 eighteen px size font
    Then eighteen px size font should contain 'Font Size'
    Then 1st html text field should contain 'password reset notification email header test'
    Then 1st html text field should contain 'bold italic underline Font Size'
    Then header text count should contain '77/1000'

    When I click on footer edit button
    Then I should see 2 editor toolbar
    Then I should see 2 html text field
    When I input 'password reset notification email footer test' to 2nd html text field
    When I click on 2nd color button
    And I click on 1st color option
    And I simply fill 'color ' to 2nd html text field
    And I click on 2nd color button
    And I click on color tab included 'Highlight'
    And I click on 6th color option
    And I simply fill 'background color ' to 2nd html text field
    And I click on 2nd link button
    Then I should see link block
    When I fill 'shop link' to link title
    And I fill shop URL to link target
    And I click on open link in new window checkbox
    And I click on link option button included 'Add'

    Then I should see 1 green color font
    Then green color font should contain 'color'
    Then I should see 3 blue background color font
    Then 1st blue background color font should contain 'background color'
    Then 2nd blue background color font should contain 'shop link'
    Then I should see 1 link text
    Then 1st link text should contain 'shop link'
    When I click on link text
    When I check and click on proceed button
    And I switch to 2 of tabs
    Then I should be redirected to Shop Home Page
    When I switch to 1 of tabs
    Then I should be redirected to Custom Password Reset Notification Page
    Then 2nd html text field should contain 'password reset notification email footer test'
    Then 2nd html text field should contain 'color background color shop link'
    Then footer text count should contain '79/1000'
    Then I should see save reminder
    Then save reminder should contain 'Unsaved Changes'
    When I click on reminder button included 'SAVE'
    Then I should see alert
    Then alert should contain 'Saved Successfully'

    Given I am on Shop Login Page
    When I click on forgot password button
    Then I should be redirected to Shop Forgot Password Page
    When I fill account email to account field
    And I click on sent reset password button
    Then I should see success message
    Then I wait for 150 seconds for mail sent

    Given I am on Google Mail Page
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    And I wait for 3 seconds for loading
    Then I should see row of mail list
    When I click on row of mail list included 'Password Reset Request'
    Then I should see mail detail
    Then mail detail should contain 'password reset notification email header test'
    Then mail detail should contain 'bold italic underline Font Size'
    Then mail detail should contain 'password reset notification email footer test'
    Then mail detail should contain 'color background color shop link'
    Then I should see 3 bold font
    Then 1st bold font should contain 'bold'
    Then 2nd bold font should contain 'italic'
    Then 3rd bold font should contain 'underline'
    Then I should see 2 italic font
    Then 1st italic font should contain 'italic'
    Then 2nd italic font should contain 'underline'
    Then I should see 1 ins underline font
    Then ins underline font should contain 'underline'
    Then I should see 1 eighteen px size font
    Then eighteen px size font should contain 'Font Size'
    Then I should see 1 green color font
    Then green color font should contain 'color'
    Then I should see 3 blue background color font
    Then 1st blue background color font should contain 'background color'
    Then 2nd blue background color font should contain 'shop link'
    Then I should see 1 link text
    Then 1st link text should contain 'shop link'
    When I click on link text
    When I check and click on proceed button
    And I switch to 3 of tabs
    Then I should be redirected to Shop Home Page
    When I switch to 1 of tabs

    And ---ROLL BACK---
    Given I am on Custom Password Reset Notification Page
    When I fill '' to 1st html text field
    Then header text count should contain '0/1000'
    When I fill '' to 2nd html text field
    Then footer text count should contain '0/1000'
    Then I should see save reminder
    When I click on reminder button included 'SAVE'
    Then I should see alert