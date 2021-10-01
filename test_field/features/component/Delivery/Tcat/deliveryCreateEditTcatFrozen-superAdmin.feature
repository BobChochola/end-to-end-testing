@PostTest @PreTest @BaseCase @Admin @Delivery @Tcat @deliveryCreateEditTcatFrozen-superAdmin @premiumFeature
Feature: Tcat Delivery Create Feature
  As a merchant
  I want to create new tcat delivery
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

  @C5163 @C5163-3
  Scenario: Create Delivery - Tcat - Frozen
    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Delivery' of delivery type dropdown
    Then shipping from edit button should contain 'Taiwan'
    Then shipping to edit button should contain 'Taiwan'
    When I click on search provider button
    Then I should see popover
    And I click on popover row of provider included "Tcat - Frozen"
    And I click on popover ok button
    And I fill '(dirty data) Tcat - Frozen' to name field
    And I fill contract code to contract code field
    And I fill sender name to sender name field
    And I fill sender phone to sender phone field
    And I fill sender address to sender address field
    When I fill 'test desctiption' to description field
    And I select delivery fee type dropdown option included 'Order Weight' of delivery fee type dropdown
    And I fill "5" to 1st weight field
    And I fill "30" to 1st delivery by weight fee field
    And I click on add zone button
    And I fill "10" to 2nd weight field
    And I fill "60" to 2nd delivery by weight fee field
    And I input "90" to 3rd delivery by weight fee field
    And I click on confirm adding button
    Then I should be redirected to Delivery Options Page
    Then 1st row of delivery options list should contain "Tcat - Frozen"
    When I click on 1st edit button of delivery method list
    Then I should be redirected to Delivery Edit Page

    Then sender phone field should equal to sender phone
    Then sender name field should equal to sender name
    Then sender address field should equal to sender address
    Then description field should equal to 'test desctiption'
    Then 1st delivery by weight fee field should equal to '30' 
    Then 2nd delivery by weight fee field should equal to '60' 
    Then 3rd delivery by weight fee field should equal to '90' 
    And I fill '(dirty data) Tcat - Frozen edit' to name field
    And I fill '0987654321' to contract code field
    And I fill 'testEdit' to sender name field
    And I fill '0987654321' to sender phone field
    And I fill '14F., No.44, Ln. 11, Guangfu N. Rd.' to sender address field
    Then delivery execution toggle should be checked
    And I click on delivery execution toggle
    When I fill 'test edit desctiption' to description field
    And delivery fee type dropdown should be disabled
    And I fill "10" to 1st delivery by weight fee field
    And I fill "20" to 2nd delivery by weight fee field
    And I input "30" to 3rd delivery by weight fee field
    When I click on update button
    Then I should be redirected to Delivery Options Page
    Then 1st row of delivery options list should contain "Tcat - Frozen edit"
    When I click on 1st edit button of delivery method list
    Then I should be redirected to Delivery Edit Page
    Then name field should equal to '(dirty data) Tcat - Frozen edit' 
    Then contract code field should equal to '0987654321'
    Then sender phone field should equal to '0987654321'
    Then sender name field should equal to 'testEdit'
    Then sender address field should equal to '14F., No.44, Ln. 11, Guangfu N. Rd.'
    Then description field should equal to 'test edit desctiption'
    Then 1st delivery by weight fee field should equal to '10' 
    Then 2nd delivery by weight fee field should equal to '20' 
    Then 3rd delivery by weight fee field should equal to '30' 
    Then delivery execution toggle should not be checked
    And ---ROLL BACK---
    Given I am on Delivery Options Page
    When I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
    Then I should see delete confirmation popover
    When I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain 'Tcat - Frozen'