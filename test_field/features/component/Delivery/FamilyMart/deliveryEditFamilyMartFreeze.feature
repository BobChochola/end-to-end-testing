@BaseCase @Admin @Delivery @FamilyMart @deliveryEditFamilyMartFreeze @fixture-fmt-freeze
Feature: update family mart freeze delivery
  As a merchant
  I want to edit family mart freeze delivery
  So that I can update family mart freeze delivery info

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

  @EAT-1282 @EAT-1282-1
  Scenario: Edit Delivery - Family Mart Freeze Pickup Only
    Given I am on Delivery Options Page
    When I click edit button of delivery method list for the same order of row of delivery options list included 'Family Mart Freeze Pickup only (B2C)'
    Then I should be redirected to Delivery Edit Page
    And parent id field should contain '902'
    And shop id field should contain '0006'
    And I fill 'merchant' to merchant name field
    And I fill '0987654321' to custom support phone number field
    And I fill the description to description field
    And I should see delivery execution toggle
    And I should see delivery execution mode dropdown
    And I fill '100' to lead time field
    And time lead error message should contain 'Please enter 1 ~ 90'
    And I fill '1' to lead time field
    When I click on language tab included 'English'
    And I fill '(edit data)Family Mart Freeze Pickup only (B2C)' to name field
    And selected shipping countries should contain 'For Taiwan Main Island only'
    When I fill Delivery Fee to delivery fee field
    And I click on update button
    Then I should be on Delivery Options Page
    When I click edit button of delivery method list for the same order of row of delivery options list included '(edit data)Family Mart Freeze Pickup only (B2C)'
    Then I should be redirected to Delivery Edit Page
    Then merchant name field should contain 'merchant'
    Then custom support phone number field should contain '0987654321'
    When I click on language tab included 'English'
    And name field should contain '(edit data)Family Mart Freeze Pickup only (B2C)'
    And ---ROLL BACK---
    And I fill the Merchant Name to merchant name field
    And I fill the Phone Number to custom support phone number field
    When I click on language tab included 'English'
    And I fill 'Family Mart Freeze Pickup only (B2C)' to name field
    And I click on update button
    And I should be redirected to Delivery Options Page

  @EAT-1282 @EAT-1282-2
  Scenario: Edit Delivery - Family Mart Freeze Pickup and Pay in store
    Given I am on Delivery Options Page
    When I click edit button of delivery method list for the same order of row of delivery options list included 'Family Mart Freeze Pickup and pay in store (B2C)'
    Then I should be redirected to Delivery Edit Page
    And parent id field should contain '902'
    And shop id field should contain '0006'
    And I fill 'test' to merchant name field
    And I fill '0987654321' to custom support phone number field
    And I fill the description to description field
    And I should see delivery execution toggle
    And I should see delivery execution mode dropdown
    And I fill '100' to lead time field
    And time lead error message should contain 'Please enter 1 ~ 90'
    And I fill '1' to lead time field
    When I click on language tab included 'English'
    And I fill '(edit data)Family Mart Freeze Pickup and pay in store (B2C)' to name field
    And selected shipping countries should contain 'For Taiwan Main Island only'
    When I fill Delivery Fee to delivery fee field
    And I click on update button
    Then I should be on Delivery Options Page
    When I click edit button of delivery method list for the same order of row of delivery options list included '(edit data)Family Mart Freeze Pickup and pay in store (B2C)'
    Then I should be redirected to Delivery Edit Page
    Then merchant name field should contain 'test'
    Then custom support phone number field should contain '0987654321'
    When I click on language tab included 'English'
    And name field should contain '(edit data)Family Mart Freeze Pickup and pay in store (B2C)'

    Given I am on Payment Create Page
    And I select payment type dropdown option included 'Family Mart Freeze Pickup and pay in store (B2C)' of payment type dropdown
    When I click on English tab
    When I fill '(edit data)Family Mart Freeze Pickup and pay in store (B2C)' to name field
    When I click on add button
    And I click on confirm adding button
    Then I should be redirected to Payment Setting Page
    And ---ROLL BACK---
    When I click on 1st delete button of payment method list
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then 1st row of payment method list should not contain '(edit data)Family Mart Freeze Pickup and pay in store (B2C)'

    Given I am on Delivery Options Page
    When I click edit button of delivery method list for the same order of row of delivery options list included '(edit data)Family Mart Freeze Pickup and pay in store (B2C)'
    Then I should be redirected to Delivery Edit Page
    And I fill the Merchant Name to merchant name field
    And I fill the Phone Number to custom support phone number field
    When I click on language tab included 'English'
    And I fill 'Family Mart Freeze Pickup and pay in store (B2C)' to name field
    And I click on update button
    And I should be redirected to Delivery Options Page