@PostTest @PreTest @BaseCase @Admin @Delivery @711 @deliveryAssertHK711-shopOwner
Feature: HK Delivery should not contain 711(shop owner)
  As a merchant
  I want to create new Custom delivery
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
    When I check and click no thanks button

  @EAT-1039-7 @baseLocation-HK
  Scenario: HK Delivery should not contain 711(shop owner)
    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Pick-up' of delivery type dropdown
    When I click on shipping from edit button
    Then I should see popover
    When I click on popover row of country included 'Taiwan'
    When I click on popover tab included 'Shipping To'
    When I click on popover row of country included 'Taiwan'
    And I click on popover ok button
    Then shipping from edit button should contain 'Taiwan'
    Then shipping to edit button should contain 'Taiwan'
    When I click on search provider button
    Then I should see popover
    Then popover should not contain '7-11'