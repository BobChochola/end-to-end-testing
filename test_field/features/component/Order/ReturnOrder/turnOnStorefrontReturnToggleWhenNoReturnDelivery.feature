@BaseCase @Admin @Delivery @Order @ReturnOrder @turnOnStorefrontReturnToggleWhenNoReturnDelivery @fixture-delivery @EAT-1170 @premiumFeature @fixture-storefront-return
Feature: When I try to turn on storefront return toggle and threre is no return delivery option, should see reminder of return delivery option is required.
  As a system
  I should see reminder popup when no return delivery

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
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

    Given I am on Delivery Options Page
    When I click on tab included 'Return Delivery Options'
    When I check and click delete button of return delivery method list
    And I click on delete checkbox
    And I click on confirm delete button
    And id should contain 'You have not set up any return delivery options yet. Set one up now!'

  @EAT-1170-1
  Scenario: When I try to turn on storefront return toggle and threre is no return delivery option, should see reminder of return delivery option is required.
    Given I am on Order Setting Page
    Then I should see setting delivery link
    When I click on setting delivery link
    Then I should be redirected to Delivery Options Page

    Given I am on Order Setting Page
    Then I should see storefront return toggle
    Then storefront return toggle should not be checked
    When I click on storefront return toggle
    Then I should see popover
    And popover should contain 'Please setup at least one return delivery method'
    And popover should contain 'You should create a return delivery method before enable Return Order By Customer.'
    And popover should contain 'Please go to Settings > Delivery Options to setup return delivery method first.'
    And I click on popover ok button
    Then storefront return toggle should not be checked
    When I click on storefront return toggle
    Then I should see popover

    Given I am on Order Setting Page
    Then I should see storefront return toggle
    When I click on storefront return toggle
    Then I should see popover
    Then I should see popover setting delivery link
    When I click on popover setting delivery link
    Then I should be redirected to Delivery Options Page

    And ---ROLL BACK---
    Given I am on Return Delivery Create Page
    When I select delivery type dropdown option included 'Store' of delivery type dropdown
    Then provider dropdown should contain '7-11 Return Only (C2B)'
    And I fill the 711C2B Parent ID to parent id field
    And I fill the 711C2B Shop ID to shop id field
    And I fill the Merchant Name to merchant name field
    And I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be on Delivery Options Page
    And 1st row of return delivery options list should contain "7-11 Return Only (C2B)"