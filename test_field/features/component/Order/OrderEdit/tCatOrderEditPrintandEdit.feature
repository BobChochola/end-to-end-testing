@BaseCase2 @Admin @Order @OrderEdit @tCatOrderEditPrintandEdit @fixture-tcat-order
Feature: tCat Order Edit Print and Edit
  As a merchant
  I want to edit some details of a order
  So that I can edit successful

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

  @C5222 @C5222-1
  Scenario: I want to edit devlivery details of a order and print tact label
    Given I am on Orders Page
    When I select Tcat Frozen Order Management of Orders delivery type dropdown
    Then I should see breadcrumb
    Then breadcrumb should contain "Tcat - Frozen Order Management"
    Then I should see row of order list
    When I click on tcat shippable tab
    Then I should see row of order list
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then delivery status should contain "Unfulfilled"
    Then I Refresh
    Then I should see delivery form edit button
    And I click on delivery form edit button
    And I fill edited name to third party recipient name field
    And I fill edited phone to third party recipient phone field
    When I select delivery address dropdown option included "Keelung City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "200 Ren'ai District" of 2nd delivery address dropdown
    And I fill edited address to delivery address field
    Then I click on delivery save button
    And I should see attention alert

    And third party recipient name should contain edited name
    And third party recipient phone should contain edited phone
    And delivery address should contain edited address
    And delivery address should contain edited city
    And delivery address should contain edited district
    And I click on OK button
    Then I scroll down to breadcrumb
    Then I should see print labels button
    When I click on print labels button
    Then I should see confirm popover
    When I click on OK button
    And I switch to 2 of tabs
    And I should be redirected to Report Pdf Page
    And ---ROLL BACK---
    When I switch to 1 of tabs
    Then I should be on Orders Show Page
    And I click on delivery form edit button
    And I fill name to third party recipient name field
    And I fill phone to third party recipient phone field
    And I fill address to delivery address field
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    Then I click on delivery save button
    And I should see attention alert
    And I click on OK button