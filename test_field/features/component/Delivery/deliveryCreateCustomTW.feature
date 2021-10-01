@PostTest @PreTest @BaseCase @Admin @Delivery @deliveryCreateCustomTW
@baseLocation-TW
Feature: Delivery TW Custom Create Feature
  As a merchant
  I want to create new TW Custom delivery
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

  @C2101 @C2101-6 @EAT-978 @EAT-978-7
  Scenario: Create Delivery and than check action logs - Custom Delivery
    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Custom' of delivery type dropdown
    And I click on requires customer address checkbox
    And I fill "(dirty data) Custom Delivery" to name field
    And I fill the description to description field
    And I select delivery fee type dropdown option included 'Flat Price' of delivery fee type dropdown
    And I click on select shipping countries link
    Then I should see shipping zone settings popup
    When I click on applicable shipping countries taiwan
    And I click on right angle bracket button
    And I click on ok button
    Then I should not see shipping zone settings popup
    When I fill Delivery Fee to delivery fee field
    And I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be on Delivery Options Page
    And 1st row of delivery options list should contain "Custom Delivery"
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
    Then id should contain "Custom Delivery"
    Then id should contain "region_type\":[null,\"custom\"]"
    And ---ROLL BACK---
    Given I am on Delivery Options Page
    Then I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain "(dirty data) Custom Delivery"