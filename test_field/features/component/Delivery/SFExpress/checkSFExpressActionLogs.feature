@BaseCase @Admin @Delivery @SFExpress @checkSFExpressActionLogs @premiumFeature
Feature: Create Delivery and than check action logs - S.F express integration
  As a merchant
  I want to create new delivery and than check action logs

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

  @EAT-978 @EAT-978-6 @baseLocation-HK
  Scenario: Create Delivery and than check action logs - S.F express integration
    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Delivery' of delivery type dropdown
    Then shipping from edit button should contain 'Hong Kong'
    Then shipping to edit button should contain 'Hong Kong'
    When I click on search provider button
    Then I should see popover
    And I click on popover row of provider included "S.F. Express (with integration)"
    And I click on popover ok button
    And I fill sf merchant id to sf merchant id field
    And I fill sender name to sf company name field
    And I fill the Merchant Name to hk sender name field
    And I fill sender phone to hk sender phone field
    And I fill sender address to hk sender address field
    And I select surcharge dropdown option included 'Paid by Consignee' of surcharge dropdown
    Then description field should contain 'You will be charged for shipping when the goods arrive.'
    And delivery fee type dropdown should be disabled
    And delivery by weight fee field should be disabled
    And selected shipping countries should contain 'For Hong Kong only'
    And I fill '(dirty data)S.F. Express - Office / Home Delivery' to name field
    When I click on add button
    Then I should see confirm adding button
    When I click on confirm adding button
    Then I should be on Delivery Options Page
    And 1st row of delivery options list should contain '(dirty data)S.F. Express - Office / Home Delivery'
    Then I click on edit button of delivery method list
    Then I should be redirected to Delivery Edit Page
    Then I get idcode from page url and mask as key

    When I switch to 2 of tabs
    Given I am on Google Mail Page
    Then I should see account field
    When I fill merchant email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button

    Given I am on Action Logs Delivery Page
    Then id should contain key
    Then id should contain "S.F. Express - Office / Home Delivery"
    Then id should contain "辦公室/住宅地址直送 (經順豐速運)"
    Then id should contain "region_type\":[null,\"hk_integrated_sfexpress\""
    And ---ROLL BACK---
    Given I am on Delivery Options Page
    Then I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain "(dirty data)S.F. Express - Office / Home Delivery"