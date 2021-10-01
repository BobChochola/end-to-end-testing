@BaseCase @Admin @Delivery @FamilyMart @deliveryAssertFMT-shopOwner
Feature: Create Assert Family Mart Pickup and pay in store (B2C)
  As a nonsuperadmin merchant
  I can't input some field on delivery form

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

  @C3889-4
  Scenario: Non-superadmin - Assert Family Mart Pickup and pay in store (B2C) field
    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Pick-up' of delivery type dropdown
    Then shipping from edit button should contain 'Taiwan'
    Then shipping to edit button should contain 'Taiwan'
    When I click on search provider button
    Then I should see popover
    And I click on popover row of provider included "Family Mart Pickup and pay in store (B2C)"
    And I click on popover ok button
    Then parent id field should be disabled
    Then shop id field should be disabled
    Then merchant name field should be disabled
    Then custom support phone number field should be disabled
    Then add button should be disabled
