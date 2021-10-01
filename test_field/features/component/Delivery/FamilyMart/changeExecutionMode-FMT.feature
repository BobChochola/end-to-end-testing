@BaseCase @Admin @Delivery @FamilyMart @changeExecutionMode-FMT @premiumFeature
Feature: change Family Mart B2C delivery Execution Mode from manual to auto
  As a merchant
  I would like to enable to change delivery execution mode

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

  @C3735 @C3735-3
  Scenario: Change to Auto-execution - Family Mart Pickup and pay in store B2C
    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Pick-up' of delivery type dropdown
    Then shipping from edit button should contain 'Taiwan'
    Then shipping to edit button should contain 'Taiwan'
    When I click on search provider button
    Then I should see popover
    And I click on popover row of provider included "Family Mart Pickup and pay in store (B2C)"
    And I click on popover ok button
    When I fill "(dirty data) Family Mart Pickup and pay in store (B2C)" to name field
    And I fill the Parent ID to parent id field
    And I fill the Shop ID to shop id field
    And I fill the Merchant Name to merchant name field
    And I fill the Phone Number to custom support phone number field
    And I fill "(dirty data) Family Mart Pickup and pay in store (B2C)" to name field
    And I fill the description to description field
    And I select delivery fee type dropdown option included 'Order Weight' of delivery fee type dropdown
    And I fill "0.1" to 1st weight field
    And I fill "20" to 1st delivery by weight fee field
    And I input "25" to 2nd delivery by weight fee field
    And I click on confirm adding button
    Then I should be redirected to Delivery Options Page
    When I click on edit button of delivery method list
    Then I should be redirected to Delivery Edit Page
    Then delivery execution mode should contain "Manual"
    When I select delivery execution mode dropdown option included 'Auto' of delivery execution mode dropdown
    And I click on update button
    Then I should be redirected to Delivery Options Page
    When I click on edit button of delivery method list
    Then I should be redirected to Delivery Edit Page
    Then delivery execution mode should contain "Auto"
    And ---ROLL BACK---
    Given I am on Delivery Options Page
    When I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain "(dirty data) Family Mart Pickup and pay in store (B2C)"