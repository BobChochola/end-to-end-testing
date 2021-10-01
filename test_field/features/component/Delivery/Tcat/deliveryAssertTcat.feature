@BaseCase @Admin @Delivery @Tcat @deliveryAssertTcat
Feature: Tcat Delivery Assertion Feature
  As a merchant
  I want to create tcat delivery
  So that I can have different delivery for my shoppers

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

  @C5162
  Scenario: Non-superadmin - Assert Tcat - Room Temp. field
    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Delivery' of delivery type dropdown
    Then shipping from edit button should contain 'Taiwan'
    Then shipping to edit button should contain 'Taiwan'
    When I click on search provider button
    Then I should see popover
    And I click on popover row of provider included "Tcat - Room Temp."
    And I click on popover ok button
    Then contract code field should be disabled
    Then sender name field should be disabled
    Then sender phone field should be disabled
    Then sender address field should be disabled
    Then add button should be disabled