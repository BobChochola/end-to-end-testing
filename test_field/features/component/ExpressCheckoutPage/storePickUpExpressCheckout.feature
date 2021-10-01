@BaseCase @Admin @ExpressCheckoutPage @Storefront @Checkout @storePickUpExpressCheckout
@fixture-payment @fixture-product @fixture-shop @EAT-957
Feature: Store pick up express checkout
  As a merchant
  I want to setup store up by myself and it can checkout

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

    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Store Pick-up' of delivery type dropdown
    And I fill "(dirty data) Store Pick-up" to name field
    And I fill the description to description field
    When I click on display description checkbox
    Then uploaded address content should contain 'Upload File'
    And I select delivery fee type dropdown option included 'Flat Price' of delivery fee type dropdown
    And I click on select shipping countries link
    Then I should see shipping zone settings popup
    When I click on select the rest of the world checkbox
    When I pick store address only title 2 file to store address selector
    And I click on ok button
    And I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be on Delivery Options Page
    And 1st row of delivery options list should contain "Store Pick-up"
    And I click on edit button of delivery method list
    Then I should be redirected to Delivery Edit Page
    Then I scroll down to update button
    Then store preview list should contain "City"
    Then store preview list should contain "Area"
    Then store preview list should not contain "District"
    Then store preview list should contain "Address"
    Then store preview list should contain "Pick-up-store Name"
    Then 1st store city preview should contain "Taipei City"
    Then 1st store area preview should contain "Da'an Dist."
    Then 1st store address preview should contain "No. 100, Sec. 1, Da'an Rd.,"
    Then 1st store name preview should contain "Daan store 1"

    Then 2nd store city preview should contain "Taipei City"
    Then 2nd store area preview should contain "Da'an Dist."
    Then 2nd store address preview should contain "No. 666, Sec. 1, Da'an Rd.,"
    Then 2nd store name preview should contain "Daan store 2"

    Given I am on Express Checkout Pages Page
    When I click on create button
    Then I should be redirected to Express Checkout Builder Page
    Then I should see skip the guide button
    When I click on skip the guide button
    Then I should see product picker
    When I input "4th Product for Checkout" to search field
    And I click on search button
    And I should see product of product list
    Then 1st product of product list should contain '4th Product for Checkout'
    And I click on 1st product of product list
    And I click on popup save button
    Then I should be on Express Checkout Builder Page
    When I click on save page button
    And I should see view page button
    And I click on view page button
    And I switch to 2 of tabs

  @EAT-957-2
  Scenario: Store pick up checkout via express checkout
    Then I should be on Shop Express Checkout Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Store Pick-up" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 3 seconds for loading
    Then delivery description should contain the description
    And I click on buy now button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should see required field error
    Then required field error should contain 'store is required'
    When I select store pick up city dropdown option included 'Taipei' of store pick up city dropdown
    When I select store pick up area dropdown option included "Da'an Dist." of store pick up area dropdown
    Then I should not see tore pick up district
    When I select store pick up store name dropdown option included "Daan store 1 - No. 100, Sec. 1, Da'an Rd." of store pick up store name dropdown
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then 3th row of delivery detail should contain 'Store Pick-up'
    Then 5th row of delivery detail should contain 'testing description'
    Then 6th row of delivery detail should contain 'Store:Daan store 1'
    Then 7th row of delivery detail should contain 'No. 100, Sec. 1, Da\'an Rd.'
    Then 6th row of delivery detail should contain 'Daan store 1'
    And  ---ROLL BACK---
    Given I am on Express Checkout Pages Page
    When I click on delete button
    Then I should see popup
    And I click on reconfirm checkbox
    And I click on popup ok button
    Given I am on Delivery Options Page
    When I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain "(dirty data) Store Pick-up"