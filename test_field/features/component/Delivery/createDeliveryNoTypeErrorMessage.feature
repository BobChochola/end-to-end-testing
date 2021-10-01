@BaseCase @Admin @Delivery @createDeliveryNoTypeErrorMessage
Feature: I can't create delivey at no select delivery type and should be errors message
  As a merchant
  I can't create delivey at no select delivery type and should be errors message

  Background:
    Given I am on Admin Login Page
    And I fill correct admin email to email field
    And I fill correct admin password to password field
    And I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button    
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

  @EAT-978
  Scenario: create delivey at no select delivery type and should be errors message
    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Custom' of delivery type dropdown
    And I fill 'Custom' to name field
    And I fill the description to description field
    And I click on add button
    Then I should see field error message
    Then field error message should contain error message