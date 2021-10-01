@BaseCase @Admin @Delivery @checkBasketPlanDelivery @fixture-basket-plan @EAT-1169
Feature: Modularize for integrated delivery
  As a merchant
  If I turn ON Basket Plan and feature key disable-old-upgrade-eminder, I will see new reminder

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

  @EAT-1169-2 @EAT-1169-2-1 @fixture-basket-plan
  Scenario: New reminder Non-superadmin - Basket Plan - 7-11 (B2C)
    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Pick-up' of delivery type dropdown
    Then shipping from edit button should contain 'Taiwan'
    Then shipping to edit button should contain 'Taiwan'
    When I click on search provider button
    Then I should see popover
    And I click on popover row of provider included "7-11 Pickup and pay in store (B2C)"
    And I click on popover ok button
    Then I should see reminder
    Then reminder should contain "Reminder: Please contact our Customer Support for the integration setup."
    
  @EAT-1169-2 @EAT-1169-2-2 @fixture-basket-plan
  Scenario: New reminder Non-superadmin - Basket Plan - 7-11 (C2C)
    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Pick-up' of delivery type dropdown
    Then shipping from edit button should contain 'Taiwan'
    Then shipping to edit button should contain 'Taiwan'
    When I click on search provider button
    Then I should see popover
    And I click on popover row of provider included "7-11 Pickup and pay in store (C2C)"
    And I click on popover ok button
    Then I should see reminder
    Then reminder should contain "Reminder: Please contact our Customer Support for the integration setup."

  @EAT-1169-2 @EAT-1169-2-3 @fixture-basket-plan
  Scenario: New reminder Non-superadmin - Basket Plan - Return Only 7-11 (C2B)
    Given I am on Return Delivery Create Page
    When I select delivery type dropdown option included 'Store' of delivery type dropdown
    Then provider dropdown should contain '7-11 Return Only (C2B)'
    Then I should see reminder
    Then reminder should contain "Reminder: Please contact our Customer Support for the integration setup."

  @EAT-1169-2 @EAT-1169-2-4 @fixture-basket-plan
  Scenario: New reminder Non-superadmin - Basket Plan - Family Mart (B2C)
    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Pick-up' of delivery type dropdown
    Then shipping from edit button should contain 'Taiwan'
    Then shipping to edit button should contain 'Taiwan'
    When I click on search provider button
    Then I should see popover
    And I click on popover row of provider included "Family Mart Pickup and pay in store (B2C)"
    And I click on popover ok button
    Then I should see reminder
    Then reminder should contain "Reminder: Please contact our Customer Support for the integration setup."

  @EAT-1169-2 @EAT-1169-2-5 @fixture-basket-plan
  Scenario: New reminder Non-superadmin - Basket Plan - Family Mart (C2C)
    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Pick-up' of delivery type dropdown
    Then shipping from edit button should contain 'Taiwan'
    Then shipping to edit button should contain 'Taiwan'
    When I click on search provider button
    Then I should see popover
    And I click on popover row of provider included "Family Mart Pickup and pay in store (C2C)"
    And I click on popover ok button
    Then I should see reminder
    Then reminder should contain "Reminder: Please contact our Customer Support for the integration setup."

  @EAT-1169-2 @EAT-1169-2-6 @fixture-basket-plan
  Scenario: New reminder Non-superadmin - Basket Plan - Tcat - Room Temp
    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Delivery' of delivery type dropdown
    Then shipping from edit button should contain 'Taiwan'
    Then shipping to edit button should contain 'Taiwan'
    When I click on search provider button
    Then I should see popover
    And I click on popover row of provider included "Tcat - Room Temp."
    And I click on popover ok button
    Then I should see reminder
    Then reminder should contain "Reminder: Please contact our Customer Support for the integration setup."

  @EAT-1169-2 @EAT-1169-2-7 @baseLocation-HK
  Scenario: New reminder Non-superadmin - Basket Plan - sf express
    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Delivery' of delivery type dropdown
    Then shipping from edit button should contain 'Hong Kong'
    Then shipping to edit button should contain 'Hong Kong'
    When I click on search provider button
    Then I should see popover
    And I click on popover row of provider included "S.F. Express (with integration)"
    And I click on popover ok button
    Then I should see reminder
    Then reminder should contain "Reminder: Please contact our Customer Support for the integration setup."