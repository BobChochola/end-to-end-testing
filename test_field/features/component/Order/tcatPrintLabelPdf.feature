@BaseCase2 @Admin @Order @tcatPrintLabelPdf
@fixture-delivery @fixture-payment @fixture-shop @fixture-tcat-order @premiumFeature
Feature: Tcat orders print label order index and order detail
  As a merchant
  I want to select multiple delivery type management to print pdf

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

    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Delivery' of delivery type dropdown
    Then shipping from edit button should contain 'Taiwan'
    Then shipping to edit button should contain 'Taiwan'
    When I click on search provider button
    Then I should see popover
    And I click on popover row of provider included "Tcat - Frozen"
    And I click on popover ok button
    And I fill '(dirty data) Tcat - Frozen' to name field
    And I fill contract code to contract code field
    And I fill sender name to sender name field
    And I fill sender phone to sender phone field
    And I fill sender address to sender address field
    When I fill 'test desctiption' to description field
    And I select delivery fee type dropdown option included 'Flat Price' of delivery fee type dropdown
    And I input Delivery Fee to delivery fee field
    And I click on confirm adding button
    Then I should be redirected to Delivery Options Page
    Then row of delivery options list should contain '(dirty data) Tcat - Frozen'

   @C5221
   Scenario: Tcat orders print label order index and order detail
    Given I am on Orders Page
    And I select Tcat Frozen Order Management of Orders delivery type dropdown
    Then I should see breadcrumb
    Then breadcrumb should contain "Tcat - Frozen Order Management"
    Then I should see tcat shippable tab
    When I click on tcat shippable tab
    Then I should see row of order list
    And I click on 1st row of order checkbox
    And I click on print labels button
    Then I should see confirm popover
    When I click on OK button
    And I switch to 2 of tabs
    And I should be redirected to Report Pdf Page
    And I switch to 1 of tabs
    Then I should be redirected to Orders Page
    Then I should see row of order list
    And I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    And I click on print labels button
    Then I should see confirm popover
    When I click on OK button
    And I switch to 2 of tabs
    And I should be redirected to Report Pdf Page
    And I switch to 1 of tabs
    And I should be redirected to Orders Show Page
    When I click on print order button
    And I switch to 3 of tabs
    Then I should be redirected to Report Pdf Page
    # Then I should see order invoice
    Given I am on Orders Page
    And I select Tcat Frozen Order Management of Orders delivery type dropdown
    Then I should see row of order list
    When I click on tcat non executed tab
    Then I should see row of order list
    And I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I should see execute shipment button
    And ---ROLL BACK---
    Given I am on Delivery Options Page
    When I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
    Then I should see delete confirmation popover
    When I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain '(dirty data) Tcat - Frozen'