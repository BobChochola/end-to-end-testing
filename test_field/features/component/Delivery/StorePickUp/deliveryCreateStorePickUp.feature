@BaseCase @Admin @Delivery @StorePickUp @deliveryCreateStorePickUp
Feature: Third Party Delivery Create Feature
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

  @EAT-956 @EAT-956-2
  Scenario: Create Delivery - Store pick up
    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Store Pick-up' of delivery type dropdown
    And I fill "(dirty data) Store Pick-up" to name field
    
    And I select delivery fee type dropdown option included 'Flat Price' of delivery fee type dropdown
    And I click on select shipping countries link
    Then I should see shipping zone settings popup
    When I click on select the rest of the world checkbox
    And I click on ok button
    Then I should see upload button
    When I pick store address file to store address selector
    Then uploaded address content should contain 'Upload File'
    And I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Given I am on Delivery Options Page
    And 1st row of delivery options list should contain "Store Pick-up"
    And I click on edit button of delivery method list
    Then I should be redirected to Delivery Edit Page
    Then I scroll down to update button
    Then store preview list should contain "City"
    Then store preview list should contain "Area"
    Then store preview list should contain "District"
    Then store preview list should contain "Address"
    Then store preview list should contain "Pick-up-store Name"
    Then 1st store city preview should contain "Taipei City"
    Then 1st store area preview should contain "Da'an Dist."
    Then 1st store district preview should contain "Da'an Rd."
    Then 1st store address preview should contain "No. 100, Sec. 1, Da'an Rd.,"
    Then 1st store name preview should contain "Daan store 1"

    Then 2nd store city preview should contain "Taipei City"
    Then 2nd store area preview should contain "Da'an Dist."
    Then 2nd store district preview should contain "Da'an Rd."
    Then 2nd store address preview should contain "No. 666, Sec. 1, Da'an Rd.,"
    Then 2nd store name preview should contain "Daan store 2"

    Then I should see upload button
    And ---ROLL BACK---
    Given I am on Delivery Options Page
    Then I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain "(dirty data) Store Pick-up" 