@BaseCase @Admin @Delivery @Order @ReturnOrder @shouldSeeStorefrontReturnToggleOnReminderWhenDeleteLastReturnOrder @EAT-1170 @fixture-delivery @fixture-storefront-return
Feature: When delete last one return order option, should see reminder of storefront return toggle is checked
  As a system
  I should let merchant see storefront-return-toggle is on reminder when delete last return order option

  Background:
    Given I am on Admin Login Page
    And I fill correct admin email to email field
    And I fill correct admin password to password field
    And I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click no thanks button

    Given I am on Order Setting Page
    Then I check and click storefront return toggle on
    When I click on update button
    Then I should be redirected to Dashboard Page

  @EAT-1170-2
  Scenario: When delete last one return order option, should see reminder of storefront return toggle is checked
    Given I am on Delivery Options Page
    When I click on tab included 'Return Delivery Options'
    Then I should see 1 row of return delivery options list

    Given I am on Order Setting Page
    Then I should see storefront return toggle
    When I click on storefront return toggle
    Then storefront return toggle should be checked
    When I fill '0' to return order limit day field
    When I click on update button
    Then I should see error message
    And error message should contain 'Days of return is not applicable'
    When I Refresh
    When I click on storefront return toggle
    When I fill '' to return order limit day field
    When I click on update button
    Then I should see error message
    And error message should contain 'Days of return is required'
    And I fill '5' to return order limit day field
    And I click on update button
    Then I should be redirected to Dashboard Page

    Given I am on Delivery Options Page
    When I click on tab included 'Return Delivery Options'
    When I click on delete button of return delivery method list
    Then I should see popover
    Then popover should contain 'Return order by customer is enable, you can\'t delete the last return delivery method before turn off the function.'
    And I click on popover ok button
    Then I should see 1 row of return delivery options list

    And ---ROLL BACK--- 
    Given I am on Order Setting Page
    And I fill '7' to return order limit day field
    When I click on storefront return toggle
    Then storefront return toggle should not be checked
    And I click on update button
    Then I should be redirected to Dashboard Page