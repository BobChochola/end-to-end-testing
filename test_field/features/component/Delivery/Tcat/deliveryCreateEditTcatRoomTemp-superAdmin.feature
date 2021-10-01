@PostTest @PreTest @BaseCase @Admin @Delivery @Tcat @deliveryCreateEditTcatRoomTemp-superAdmin @premiumFeature
Feature: Tcat Delivery Create Feature
  As a merchant
  I want to create new tcat delivery
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

  @C5163 @C5163-1 @EAT-978 @EAT-978-3
  Scenario: Create Delivery and than check action logs - Tcat - Room Temp
    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Delivery' of delivery type dropdown
    Then shipping from edit button should contain 'Taiwan'
    Then shipping to edit button should contain 'Taiwan'
    When I click on search provider button
    Then I should see popover
    And I click on popover row of provider included "Tcat - Room Temp."
    And I click on popover ok button
    And I fill '(dirty data) Tcat - Room Temp.' to name field
    And I fill contract code to contract code field
    And I fill sender name to sender name field
    And I fill sender phone to sender phone field
    And I fill sender address to sender address field
    And I select delivery fee type dropdown option included 'Flat Price' of delivery fee type dropdown
    And I fill Delivery Fee to delivery fee field
    And I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Delivery Options Page
    Then 1st row of delivery options list should contain "Tcat - Room Temp."
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
    Then id should contain "Tcat - Room Temp."
    Then id should contain "黑貓宅配 - 常溫"
    Then id should contain "region_type\":[null,\"tw_tcat_roomtemp\"]"
    And ---ROLL BACK---
    Given I am on Delivery Options Page
    When I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
    Then I should see delete confirmation popover
    When I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain '(dirty data) Tcat - Room Temp.'