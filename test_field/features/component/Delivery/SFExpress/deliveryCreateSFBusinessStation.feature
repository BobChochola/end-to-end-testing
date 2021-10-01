@BaseCase @Admin @Delivery @SFExpress @deliveryCreateSFBusinessStation
@baseLocation-HK @premiumFeature
Feature: SF with Business Station Delivery Create Feature
  As a merchant
  I want to create new SF with Business Station delivery
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

  @C3785 @C3785-5
  Scenario: Create Delivery - SF with Business Station
    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Pick-up' of delivery type dropdown
    Then shipping from edit button should contain 'Hong Kong'
    Then shipping to edit button should contain 'Hong Kong'
    When I click on search provider button
    Then I should see popover
    And I click on 2nd popover row of provider included "S.F. Express"
    And I click on popover ok button
    And I select services dropdown option included "S.F. - Business Station" of services dropdown
    And I fill '(dirty data)S.F. Express - S.F. - Business Station' to name field
    And I select delivery fee type dropdown option included 'Flat Price' of delivery fee type dropdown
    And I scroll down to add button
    And I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be on Delivery Options Page
    And 1st row of delivery options list should contain "(dirty data)S.F. Express - S.F. - Business Station"
    And ---ROLL BACK---
    Given I am on Delivery Options Page
    When I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain "(dirty data)S.F. Express - S.F. - Business Station"