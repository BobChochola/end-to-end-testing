@BaseCase @Admin @Storefront @CRM @CustomNotification @customUserRegisterNotificationEmailTraditionalChinese
@fixture-shop @EAT-1004
Feature: Add custom text to email user register notification header / footer and check email receive correctly（TraditionalChinese)
  As a merchant
  I want to add text to User Register Notification Email footer and header
  So that shoppers will see it in the email after checkout

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

  @EAT-1004-2
  Scenario: Custom Text and Traditional Chinese Support in user register notification email Header and Footer
    Given I am on Custom Notification Page
    Then I should see sign up notification button
    When I click on sign up notification button
    Then I should be redirected to Custom Sign Up Notification Page
    When I click on language tab included 'Traditional Chinese'
    Then I should see header edit button
    Then I should see footer edit button
    When I click on header edit button
    Then I should see editor toolbar
    Then I should see html text field
    When I input 'user register notification email header 中文 test' to html text field
    And I click on 1st italic button
    And I simply fill 'italic ' to 1st html text field
    And I click on 1st underline button
    And I simply fill 'underline ' to 1st html text field
    And I click on 1st font size dropdown
    And I click on font size dropdown option included '18'
    And I simply fill 'Font Size ' to 1st html text field
    And I click on 1st link button
    Then I should see link block
    When I fill 'shop link' to link title
    And I fill shop URL to link target
    And I click on open link in new window checkbox
    And I click on link option button included 'Add'
    
    Then I should see 2 italic font
    Then 1st italic font should contain 'italic'
    Then 2nd italic font should contain 'underline'
    Then I should see 1 underline font
    Then underline font should contain 'underline'
    Then I should see 3 eighteen px size font
    Then 1st eighteen px size font should contain 'Font Size'
    Then 2nd eighteen px size font should contain 'shop link'
    Then I should see 1 link text
    Then 1st link text should contain 'shop link'
    When I click on link text
    When I check and click on proceed button
    And I switch to 2 of tabs
    Then I should be redirected to Shop Home Page
    When I switch to 1 of tabs
    Then I should be redirected to Custom Sign Up Notification Page
    Then 1st html text field should contain 'user register notification email header 中文 test'
    Then 1st html text field should contain 'italic underline Font Size shop link'
    Then header text count should contain '85/1000'

    When I click on footer edit button
    Then I should see 2 editor toolbar
    Then I should see 2 html text field
    When I input 'user register notification email footer 中文 test' to 2nd html text field
    When I click on 2nd bold button
    And I simply fill 'bold ' to 2nd html text field
    When I click on 2nd color button
    And I click on 1st color option
    And I simply fill 'color ' to 2nd html text field
    And I click on 2nd color button
    And I click on color tab included 'Highlight'
    And I click on 6th color option
    And I simply fill 'background color ' to 2nd html text field

    Then I should see 1 bold font
    Then bold font should contain 'bold'
    Then I should see 1 green color font
    Then green color font should contain 'color'
    Then I should see 1 blue background color font
    Then blue background color font should contain 'background color'
    
    Then 2nd html text field should contain 'user register notification email footer 中文 test'
    Then 2nd html text field should contain 'bold color background color'
    Then footer text count should contain '76/1000'
    Then I should see save reminder
    Then save reminder should contain 'Unsaved Changes'
    When I click on reminder button included 'SAVE'
    Then I should see alert
    Then alert should contain 'Saved Successfully'

    Given I am on Shop Sign Up Page
    When I select language dropdown option included '繁體中文' of language dropdown
    When I fill new account email to email field
    And I fill new account password to password field
    And I fill name to name field
    And I click on agree terms checkbox
    When I click on submit button
    Then I should be redirected to Shop Home Page
    And I wait for 150 seconds for mail sent

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
    When I click on row of mail list included '歡迎加入'
    Then I should see mail detail
    Then mail detail should contain 'user register notification email header 中文 test'
    Then mail detail should contain 'italic underline Font Size shop link'
    Then mail detail should contain 'user register notification email footer 中文 test'
    Then mail detail should contain 'bold color background color'
    Then I should see 2 italic font
    Then 1st italic font should contain 'italic'
    Then 2nd italic font should contain 'underline'
    Then I should see 1 ins underline font
    Then ins underline font should contain 'underline'
    Then I should see 3 eighteen px size font
    Then 1st eighteen px size font should contain 'Font Size'
    Then 2nd eighteen px size font should contain 'shop link'
    Then I should see 1 link text
    Then 1st link text should contain 'shop link'
    When I click on link text
    When I check and click on proceed button
    And I switch to 3 of tabs
    Then I should be redirected to Shop Home Page
    When I switch to 1 of tabs
    Then I should be redirected to Google Mail Page
    Then I should see 1 bold font
    Then bold font should contain 'bold'
    Then I should see 1 green color font
    Then green color font should contain 'color'
    Then I should see 1 blue background color font
    Then 1st blue background color font should contain 'background color'

    And ---ROLL BACK---
    Given I am on Custom Sign Up Notification Page
    When I click on language tab included 'Traditional Chinese'
    When I fill '' to 1st html text field
    Then header text count should contain '0/1000'
    When I fill '' to 2nd html text field
    Then footer text count should contain '0/1000'
    Then I should see save reminder
    When I click on reminder button included 'SAVE'
    Then I should see alert

    Given I am on Customer List Page
    Then 1st customer row should contain new account email
    When I click on 1st customer checkbox
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button