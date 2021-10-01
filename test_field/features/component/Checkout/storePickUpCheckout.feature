@BaseCase2 @Admin @Storefront @Checkout @storePickUpCheckout
@fixture-payment @fixture-product @fixture-shop @EAT-957 @EAT-958 @EAT-960 @EAT-1167
Feature: Store pick up checkout
  As a merchant
  I want to setup store pick-up by myself and it can checkout

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
    Given I am on Basic Setting Page
    And I mark the value of shop name field as variable shop name

    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Store Pick-up' of delivery type dropdown
    Then specified date toggle should not be checked
    Then specified timeslot toggle should not be checked
    And I fill "(dirty data)Store Pick-up" to name field
    And I click on specified date toggle
    And I click on specified timeslot toggle
    Then I scroll down to specified date toggle
    Then I should see selectable day field
    And I should see lead time field
    And I should see exclude specific day dropdown
    And I fill '1' to lead time field
    And I fill '4' to selectable day field
    And I select exclude specific day dropdown option included 'Sunday' of exclude specific day dropdown 
    And I click on exclude specific day dropdown option included 'Wednesday'
    Then I click on exclude specific day dropdown
    Then I scroll down to option setting field
    When I input '09:00 am ~ 11:00 AM' to option setting field
    When I input '11:00 AM ~ 01:00 pm' to option setting field
    Then 1st tag item should contain '09:00 am ~ 11:00 AM'
    Then 2nd tag item should contain '11:00 AM ~ 01:00 pm'
    And I fill the description to description field
    When I click on display description checkbox

    When I pick store address file to store address selector
    And I select delivery fee type dropdown option included 'Flat Price' of delivery fee type dropdown
    And I click on select shipping countries link
    Then I should see shipping zone settings popup
    When I click on select the rest of the world checkbox
    And I click on ok button
    And I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be on Delivery Options Page
    And 1st row of delivery options list should contain "(dirty data)Store Pick-up"

  @EAT-957-1 @EAT-1167-1
  Scenario: Store pick up checkout via normal add to cart and check order list/report info
    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain "1st Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "(dirty data)Store Pick-up" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 3 seconds for loading
    Then delivery description should contain the description
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    When I click on agree terms checkbox
    And I click on place order button
    Then I should see required field error
    Then required field error should contain 'store is required'
    When I click on arrival date button
    Then I should see calendar table
    Then I should count and see amount of available days with exclude day of week in element enabled date
    Then I should see 6 sunday disabled
    Then I should see 6 wednesday disabled
    And I mark the value of 1st enabled date as variable choose date
    Then I click on 1st enabled date
    Then I select arrival time dropdown option included '11:00 AM ~ 01:00 pm' of arrival time dropdown
    When I select store pick up city dropdown option included 'Taipei City' of store pick up city dropdown
    When I select store pick up area dropdown option included 'Da\'an Dist.' of store pick up area dropdown
    When I select store pick up district dropdown option included 'Da\'an Rd.' of store pick up district dropdowndown
    When I select store pick up store name dropdown option included 'Daan store 2 - No. 666, Sec. 1, Da\'an Rd.,' of store pick up store name dropdownshop name dropdown
    Then store description should contain 'Description: can directly to the store to pick up goods, please show the relevant documents when picking up goods'
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then 3th row of delivery detail should contain 'Store Pick-up'
    Then 4th row of delivery detail should contain full choose date
    Then 4th row of delivery detail should contain '11:00 AM ~ 01:00 pm'
    Then 6th row of delivery detail should contain 'testing description'
    Then 7th row of delivery detail should contain 'Daan store 2'
    Then 8th row of delivery detail should contain "Address:No. 666, Sec. 1, Da'an Rd.,"
    Then I mark the value of order confirm info as variable order info
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on tab included 'Orders'
    Then I should be redirected to Shop Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Shop Orders Show Page
    Then 3th row of delivery detail should contain 'Store Pick-up'
    Then 4th row of delivery detail should contain full choose date
    Then 4th row of delivery detail should contain '11:00 AM ~ 01:00 pm'
    Then 6th row of delivery detail should contain 'testing description'
    Then 7th row of delivery detail should contain 'Store:Daan store 2'
    Then 8th row of delivery detail should contain "Address:No. 666, Sec. 1, Da'an Rd.,"

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order checkbox
    And I select export dropdown option included "Order Invoice" of export dropdown
    Then I should see export popover
    When I click on selected orders checkbox
    And I should see export button
    And I click on export button
    Then I should see export alert
    And I select export dropdown option included "Export Packing Slip" of export dropdown
    Then I should see export popover
    When I click on selected orders checkbox
    And I should see export button
    And I click on export button
    Then I should see export alert
    When I click on additional filters button
    Then I should see additional filters section
    And I select filter dropdown option included "Delivery Method" of filter dropdown
    And I select delivery method filter dropdown option included "Store Pick-up" of delivery method filter dropdown
    Then 1st search label should contain "Delivery Method is (dirty data)Store Pick-up"
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then delivery method should contain "Store Pick-up"
    Then delivery address should contain "Delivery AddressNo. 666, Sec. 1, Da'an Rd.,"
    Then delivery time should contain full choose date
    Then delivery time should contain '11:00 AM ~ 01:00 pm'
    And I wait for 60 seconds for loading

    Given I am on Google Mail Page
    Then I should see account field
    When I fill merchant email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input order number to search field
    Then I should see row of mail list
    Then I wait for 5 seconds for loading
    When I click on row of mail list included "Thank you for your order"
    Then I should see mail detail
    Then mail detail should contain "Store Pick-up"
    Then mail detail should contain "DELIVERY ADDRESS"
    Then mail detail should contain "No. 666, Sec. 1, Da'an Rd.,"
    Then mail detail should contain "11:00 AM ~ 01:00 pm"
    Then mail detail should contain full choose date
    When I input shop name to search field
    Then I should see row of mail list
    Then I wait for 5 seconds for loading
    When I click on row of mail list included "Download Order Invoice"
    When I click on download button
    And I switch to 2 of tabs
    And I should be redirected to Report Pdf Page
    Then pdf should contain "DELIVERY METHOD:(dirty data)Store Pick-up"
    Then pdf should contain "No. 666, Sec. 1, Da'an Rd.,"
    Then pdf should contain full choose date
    Then pdf should contain "11:00 AM ~ 01:00pm"
    And I switch to 1 of tabs
    And I should be redirected to Google Mail Page
    When I input shop name to search field
    Then I should see row of mail list
    Then I wait for 5 seconds for loading
    When I click on row of mail list included "Download Packing Slip"
    When I click on download button
    And I switch to 3 of tabs
    And I should be redirected to Report Pdf Page
    Then pdf should contain "DELIVERY METHOD: (dirty data)Store Pick-up"
    Then pdf should contain "No. 666, Sec. 1, Da'an Rd.,"
    Then pdf should contain full choose date
    Then pdf should contain "11:00 AM ~ 01:00 pm"

    And ---ROLL BACK---
    Given I am on Delivery Options Page
    When I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain "(dirty data)Store Pick-up"