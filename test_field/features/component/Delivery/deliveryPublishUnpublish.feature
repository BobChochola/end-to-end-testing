@PostTest @PreTest @BaseCase @Admin @Delivery @deliveryPublishUnpublish
Feature: Delivery Update Unpublish / Publish Feature
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

  @C2103 @C2103-2
  Scenario: Update Delivery - Unpublish / Publish 1st delivery
    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Pick-up' of delivery type dropdown
    Then shipping from edit button should contain 'Taiwan'
    Then shipping to edit button should contain 'Taiwan'
    When I click on search provider button
    Then I should see popover
    And I click on popover row of provider included "ezship pickup and pay in store"
    And I click on popover ok button
    And I fill "(dirty data) ezship pickup and pay in store" to name field
    And I fill the description to description field
    And I select delivery fee type dropdown option included 'Flat Price' of delivery fee type dropdown
    When I fill Delivery Fee to delivery fee field
    And I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Delivery Options Page
    Given I am on Delivery Options Page
    When I click on 1st publish button of delivery method list
    Then I should not see loading icon
    Then 1st publish button of delivery method list should contain "Publish"
    And ---ROLL BACK---
    When I click on 1st publish button of delivery method list
    Then 1st publish button of delivery method list should contain "Unpublish"
    When I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain "(dirty data) ezship pickup and pay in store"