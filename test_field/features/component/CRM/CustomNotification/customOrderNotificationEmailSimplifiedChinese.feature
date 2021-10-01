@BaseCase @Admin @Storefront @CRM @CustomNotification @customOrderNotificationEmailSimplifiedChinese
@fixture-shop @fixture-product @fixture-delivery @fixture-payment @fixture-multi-lang-zh-cn @EAT-1001
Feature: Add custom text to email order notification header / footer and check email receive correctly（Simplified Chinese)
  As a merchant
  I want to add text to Order Confirmation Email footer and header
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

  @EAT-1001-3
  Scenario: Custom Text and Simplified Chinese Support in Order notification email Header and Footer
    Given I am on Custom Notification Page
    When I click on tab included 'Order'
    Then I should see order notification button
    When I click on order notification button
    Then I should be redirected to Custom Order Notification Page
    When I click on language tab included 'Simplified Chinese'
    Then I should see header edit button
    Then I should see footer edit button
    Then I should see english email picture
    When I click on header edit button
    Then I should see editor toolbar
    Then I should see html text field
    When I input 'Order notification email header 简体 test' to 1st html text field
    When I click on 1st color button
    And I click on 1st color option
    And I simply fill 'color ' to 1st html text field
    And I click on 1st color button
    And I click on color tab included 'Highlight'
    And I click on 6th color option
    And I simply fill 'background color ' to 1st html text field
    And I click on 1st link button
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
    Then I should be redirected to Custom Order Notification Page
    Then 1st html text field should contain 'Order notification email header 简体 test'
    Then 1st html text field should contain 'color background color shop link'
    Then header text count should contain '73/1000'
    
    When I click on footer edit button
    Then I should see 2 editor toolbar
    Then I should see 2 html text field
    When I input 'Order notification email footer 简体 test' to 2nd html text field
    When I click on 2nd bold button
    And I simply fill 'bold ' to 2nd html text field
    And I click on 2nd italic button
    And I simply fill 'italic ' to 2nd html text field
    And I click on 2nd underline button
    And I simply fill 'underline ' to 2nd html text field
    And I click on 2nd font size dropdown
    And I click on font size dropdown option included '18'
    And I simply fill 'Font Size' to 2nd html text field
    
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
    Then 2nd html text field should contain 'Order notification email footer 简体 test'
    Then 2nd html text field should contain 'bold italic underline Font Size'
    Then footer text count should contain '71/1000'
    Then I should see save reminder
    Then save reminder should contain 'Unsaved Changes'
    When I click on reminder button included 'SAVE'
    Then I should see alert
    Then alert should contain 'Saved Successfully'

    Given I am on Shop Product Index Page
    When I input "15th Product for Checkout" to search field
    Then 1st product of products list should contain "15th Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Local Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I select language dropdown option included '简体' of language dropdown
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I select delivery address dropdown option included "台北市" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 中正区" of 2nd delivery address dropdown
    And I fill address to delivery address field
    And I click on agree terms checkbox
    And I click on become member checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I select language dropdown option included 'English' of language dropdown
    Then I mark the value of order confirm info as variable order info
    Then I wait for 150 seconds for mail sent

    Given I am on Google Mail Page
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input order number to search field
    And I wait for 3 seconds for loading
    Then I should see row of mail list
    When I click on row of mail list included '谢谢你的订单'
    Then I should see mail detail
    Then mail detail should contain 'Order notification email header 简体 test'
    Then mail detail should contain 'bold italic underline Font Size'
    Then mail detail should contain 'Order notification email footer 简体 test'
    Then mail detail should contain 'color background color shop link'
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
    Then I should be redirected to Google Mail Page
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

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order checkbox
    Then I should see bulk actions dropdown
    And I select Update Status of bulk actions dropdown
    And I select status dropdown option included 'Order Status' of status type dropdown
    And I select status dropdown option included 'Completed' of status item dropdown
    Then I should see update button
    When I click on update button
    Then I should see confirm popover
    When I click on send notification checkbox
    And I click on OK button
    Then 1st row of order status should equal to "Completed"
    Then I wait for 30 seconds for mail sent

    Given I am on Google Mail Page
    Then I should see search field
    When I input order number to search field
    And I wait for 3 seconds for loading
    Then I should see row of mail list
    When I click on row of mail list included '订单状态 更新为: 已完成'
    Then I should see mail detail
    Then mail detail should contain 'Order notification email header 简体 test'
    Then mail detail should contain 'bold italic underline Font Size'
    Then mail detail should contain 'Order notification email footer 简体 test'
    Then mail detail should contain 'color background color shop link'
    Then I should see 1 green color font
    Then green color font should contain 'color'
    Then I should see 3 blue background color font
    Then 1st blue background color font should contain 'background color'
    Then 2nd blue background color font should contain 'shop link'
    Then I should see 1 link text
    Then 1st link text should contain 'shop link'
    When I click on link text
    When I check and click on proceed button
    And I switch to 4 of tabs
    Then I should be redirected to Shop Home Page
    When I switch to 1 of tabs
    Then I should be redirected to Google Mail Page
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

    And ---ROLL BACK---
    Given I am on Custom Order Notification Page
    When I click on language tab included 'Simplified Chinese'
    When I fill '' to 1st html text field
    Then header text count should contain '0/1000'
    When I fill '' to 2nd html text field
    Then footer text count should contain '0/1000'
    Then I should see save reminder
    When I click on reminder button included 'SAVE'
    Then I should see alert