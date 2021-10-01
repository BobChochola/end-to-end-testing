@PostTest @PreTest @BaseCase @Admin @Delivery @deliveryEditName
Feature: Delivery Update Edit Name Feature
  As a merchant
  I want to update my delivery
  So that I can modify all of my deliveries for my shoppers

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

  @C2103 @C2103-3 @fixture-delivery
  Scenario: Update Delivery - Edit delivery and Delete delivery
    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Pick-up' of delivery type dropdown
    Then shipping from edit button should contain 'Taiwan'
    Then shipping to edit button should contain 'Taiwan'
    When I click on search provider button
    Then I should see popover
    And I click on popover row of provider included "ezship pickup and pay in store"
    And I click on popover ok button
    And I fill "(dirty data) Edit Me" to name field
    And I fill the description to description field
    And I select delivery fee type dropdown option included 'Flat Price' of delivery fee type dropdown
    When I fill Delivery Fee to delivery fee field
    And I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Given I am on Delivery Options Page
    When I click on edit button of delivery method list
    Then I should be redirected to Delivery Edit Page
    And I fill "(dirty data) Delete Me" to name field
    And I click on update button
    Then I should be redirected to Delivery Options Page
    Then 1st row of delivery options list should contain "Delete Me"
    And ---ROLL BACK---
    When I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain "(dirty data) Delete Me"