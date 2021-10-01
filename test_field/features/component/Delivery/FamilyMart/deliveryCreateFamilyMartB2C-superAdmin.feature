@PostTest @PreTest @BaseCase @Admin @Delivery @FamilyMart @deliveryCreateFamilyMartB2C-superAdmin 
@premiumFeature
Feature: create family mart b2c
  As a merchant
  I want to create new delivery
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

  @C2101 @C2101-12 @EAT-978 @EAT-978-5
  Scenario: Create Delivery and check action log- Family Mart Pickup and pay in store (B2C)
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
    And I fill the description to description field
    And I select delivery fee type dropdown option included 'Flat Price' of delivery fee type dropdown
    When I fill Delivery Fee to delivery fee field
    And I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be on Delivery Options Page
    And 1st row of delivery options list should contain "Family Mart Pickup and pay in store (B2C)"
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
    Then id should contain "Family Mart Pickup and pay in store (B2C)"
    Then id should contain "全家 取貨付款 (B2C)"
    Then id should contain "region_type\":[null,\"tw_fm_b2c_pay\"]"
    And ---ROLL BACK---
    Given I am on Delivery Options Page
    Then I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain "(dirty data) Family Mart Pickup and pay in store (B2C)"

  @C2101 @C2101-13
  Scenario: Create Delivery - Family Mart Pickup only (B2C)
    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Pick-up' of delivery type dropdown
    Then shipping from edit button should contain 'Taiwan'
    Then shipping to edit button should contain 'Taiwan'
    When I click on search provider button
    Then I should see popover
    And I click on popover row of provider included "Family Mart Pickup only (B2C)"
    And I click on popover ok button
    When I fill "(dirty data) Family Mart Pickup only (B2C)" to name field
    And I fill the Parent ID to parent id field
    And I fill the Shop ID to shop id field
    And I fill the Merchant Name to merchant name field
    And I fill the Phone Number to custom support phone number field
    And I fill the description to description field
    And I select delivery fee type dropdown option included 'Flat Price' of delivery fee type dropdown
    When I fill Delivery Fee to delivery fee field
    And I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be on Delivery Options Page
    And 1st row of delivery options list should contain "Family Mart Pickup only (B2C)"
    And ---ROLL BACK---
    Then I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain "(dirty data) Family Mart Pickup only (B2C)"