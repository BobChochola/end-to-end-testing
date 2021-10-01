@BaseCase @Admin @Delivery @deliveryCreateZone
Feature: Delivery Create select zone Feature
  As a merchant
  I want to create new delivery with delivery by weight
  So that I can separate every weight to every shipping fee

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

  @C3732 @C3732-1
  Scenario: Create Delivery - Global Shipping Zone
    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Custom' of delivery type dropdown
    And I fill '(dirty data) Custom Delivery' to name field
    And I fill the description to description field
    And I select delivery fee type dropdown option included 'Flat Price' of delivery fee type dropdown
    And I click on select shipping countries link
    Then I should see shipping zone settings popup
    When I click on select the rest of the world checkbox
    And I click on ok button
    Then I should not see shipping zone settings popup
    Then selected shipping countries should contain "Rest of the World"
    When I fill Delivery Fee to delivery fee field
    And I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Delivery Options Page
    And ---ROLL BACK---
    When I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain "(dirty data) Custom Delivery"

  @C3732 @C3732-2
  Scenario: Create Delivery - Choose 25 shipping Zone
    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Custom' of delivery type dropdown
    And I fill '(dirty data) Local Delivery' to name field
    And I fill the description to description field
    And I select delivery fee type dropdown option included 'Flat Price' of delivery fee type dropdown
    And I click on select shipping countries link
    Then I should see shipping zone settings popup
    And I click on 1st row of nonapplicable shipping countries
    And I click on right angle bracket button
    And I click on 1st row of nonapplicable shipping countries
    And I click on right angle bracket button
    And I click on 1st row of nonapplicable shipping countries
    And I click on right angle bracket button
    And I click on 1st row of nonapplicable shipping countries
    And I click on right angle bracket button
    And I click on 1st row of nonapplicable shipping countries
    And I click on right angle bracket button
    And I click on 1st row of nonapplicable shipping countries
    And I click on right angle bracket button
    And I click on 1st row of nonapplicable shipping countries
    And I click on right angle bracket button
    And I click on 1st row of nonapplicable shipping countries
    And I click on right angle bracket button
    And I click on 1st row of nonapplicable shipping countries
    And I click on right angle bracket button
    And I click on 1st row of nonapplicable shipping countries
    And I click on right angle bracket button
    And I click on 1st row of nonapplicable shipping countries
    And I click on right angle bracket button
    And I click on 1st row of nonapplicable shipping countries
    And I click on right angle bracket button
    And I click on 1st row of nonapplicable shipping countries
    And I click on right angle bracket button
    And I click on 1st row of nonapplicable shipping countries
    And I click on right angle bracket button
    And I click on 1st row of nonapplicable shipping countries
    And I click on right angle bracket button
    And I click on 1st row of nonapplicable shipping countries
    And I click on right angle bracket button
    And I click on 1st row of nonapplicable shipping countries
    And I click on right angle bracket button
    And I click on 1st row of nonapplicable shipping countries
    And I click on right angle bracket button
    And I click on 1st row of nonapplicable shipping countries
    And I click on right angle bracket button
    And I click on 1st row of nonapplicable shipping countries
    And I click on right angle bracket button
    And I click on 1st row of nonapplicable shipping countries
    And I click on right angle bracket button
    And I click on 1st row of nonapplicable shipping countries
    And I click on right angle bracket button
    And I click on 1st row of nonapplicable shipping countries
    And I click on right angle bracket button
    And I click on 1st row of nonapplicable shipping countries
    And I click on right angle bracket button
    And I click on 1st row of nonapplicable shipping countries
    And I click on right angle bracket button
    And I click on ok button
    Then I should not see shipping zone settings popup
    Then selected shipping countries should contain "United Arab Emirates , Afghanistan and 23 countries"
    When I fill Delivery Fee to delivery fee field
    And I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Delivery Options Page
    And ---ROLL BACK---
    When I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain "(dirty data) Local Delivery"