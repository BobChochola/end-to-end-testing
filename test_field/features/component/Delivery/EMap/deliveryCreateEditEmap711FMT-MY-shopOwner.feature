@BaseCase @Admin @Delivery @EMap @deliveryCreateEditEmap711FMT-MY-shopOwner @fixture-delivery-with-emap
Feature: 711/FMT non-integrated delivery: add 2 new delivery options
  As a merchant
  I can correct cerate/edit 711 and family emap delivey 
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

  @EAT-1010 @EAT-1010-3 @baseLocation-MY @EAT-1300 @EAT-1300-16
  Scenario: 711/FMT non-integrated delivery: add 2 new delivery options-MY
    Given I am on Delivery Create Page
    When I select 2nd delivery type dropdown option included 'Pick-up' of delivery type dropdown
    When I click on shipping from edit button
    Then I should see popover
    When I click on popover row of country included 'Taiwan'
    When I click on popover tab included 'Shipping To'
    When I click on popover row of country included 'Taiwan'
    And I click on popover ok button
    Then shipping from edit button should contain 'Taiwan'
    Then shipping to edit button should contain 'Taiwan'
    When I click on search provider button
    Then I should see popover
    And I click on popover row of provider included "7-11 Store Pickup (e-map)"
    And I click on popover ok button
    And I click on language tab included 'English'
    And I fill "（dirty data）7-11 Store Pickup (e-map)" to name field
    And I fill the description to description field
    When I fill Delivery Fee to delivery fee field
    And I click on add button
    And I click on confirm adding button
    
    Then I should be redirected to Delivery Options Page
    And 1st row of delivery options list should contain "7-11 Store Pickup (e-map)"
    And I click on edit button of delivery method list
    Then I should be redirected to Delivery Edit Page
    And I fill "（dirty data）Delete Me" to name field
    And I click on update button
    Then I should be redirected to Delivery Options Page
    Then 1st row of delivery options list should contain "Delete Me"
    
    Given I am on Delivery Options Page
    When I select language dropdown option included '繁' of language dropdown
    And I click on add button
    Then I should be redirected to Delivery Create Page
    When I select 2nd delivery type dropdown option included '自取' of delivery type dropdown
    When I click on shipping from edit button
    Then I should see popover
    When I click on popover row of country included '台灣'
    When I click on popover tab included '配送地'
    When I click on popover row of country included '台灣'
    And I click on popover ok button
    Then shipping from edit button should contain '台灣'
    Then shipping to edit button should contain '台灣'
    When I click on search provider button
    Then I should see popover
    And I click on popover row of provider included "全家超商取貨 (純地圖)"
    And I click on popover ok button
    And I fill "全家超商取貨 (純地圖)" to name field
    And I fill the description to description field
    When I fill Delivery Fee to delivery fee field
    And I click on add button
    And I click on confirm adding button
    
    Then I should be redirected to Delivery Options Page
    And 1st row of delivery options list should contain "全家超商取貨 (純地圖)"
    When I select language dropdown option included 'English' of language dropdown
    And I click on edit button of delivery method list
    
    Then I should be redirected to Delivery Edit Page
    And I fill "（dirty data）New Delete Me" to name field
    And I click on update button
    Then I should be redirected to Delivery Options Page
    Then 1st row of delivery options list should contain "New Delete Me"
    And ---ROLL BACK---
    When I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain "New Delete Me"
    When I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain "Delete Me"