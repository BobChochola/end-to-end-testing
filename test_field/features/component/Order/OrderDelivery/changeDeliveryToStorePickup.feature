@BaseCase @Admin @Storefront @Checkout @Order @OrderDelivery @changeDeliveryToStorePickup
@fixture-payment @fixture-delivery @fixture-product @fixture-shop @EAT-1167
Feature: Change Delivery To Store Pickup
  As a merchant
  I can change to store pickup delivery from admin order show page

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
    Then id should not contain 'Specified Date'
    Then id should not contain 'Specified Timeslot'
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
    And I fill '0' to lead time field
    And I fill '4' to selectable day field
    And I select exclude specific day dropdown option included 'Sunday' of exclude specific day dropdown 
    And I click on exclude specific day dropdown option included 'Wednesday'
    Then I click on exclude specific day dropdown
    When I click on excluded date calendar
    When I have sample and click on calendar this month date included only date of tomorrow
    Then I scroll down to option setting field
    When I input '09:00 am ~ 11:00 AM' to option setting field
    When I input '11:00 AM ~ 01:00 pm' to option setting field
    Then 2nd tag item should contain '09:00 am ~ 11:00 AM'
    Then 3rd tag item should contain '11:00 AM ~ 01:00 pm'
    And I fill the description to description field
    When I click on display description checkbox
    When I pick store address file to store address selector
    And I select delivery fee type dropdown option included 'Flat Price' of delivery fee type dropdown
    And I click on select shipping countries link
    Then I should see shipping zone settings popup
    When I click on applicable shipping countries taiwan
    And I click on right angle bracket button
    And I click on ok button
    And I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be on Delivery Options Page
    And 1st row of delivery options list should contain "(dirty data)Store Pick-up"

  @EAT-1167-2
  Scenario: change to store pickup delivery from admin order show page
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I click on login button
    Then I should be redirected to Shop Login Page
    And I fill email to email field
    And I fill password to password field
    And I click on submit button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    When I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then delivery method should contain "Custom Delivery"
    When I click on delivery form edit button
    When I select delivery method dropdown option included 'Store Pick-up' of delivery method dropdown
    Then I should see edit delivery detail popover
    When I select store pickup city dropdown option included 'Taipei City' of store pickup city dropdown
    When I select store pickup area dropdown option included 'Da\'an Dist.' of store pickup area dropdown
    When I select store pickup district dropdown option included 'Da\'an Rd.' of store pickup district dropdown
    When I select store pickup store name dropdown option included 'Daan store 2 - No. 666, Sec. 1, Da\'an Rd.,' of store pickup store name dropdown
    Then store description should contain 'Description: can directly to the store to pick up goods, please show the relevant documents when picking up goods'
    When I click on delivery date field
    Then I should see calendar table
    Then I should count and see amount of available days with exclude specific date in element enabled date
    Then I should see 6 sunday disabled
    Then I should see 6 wednesday disabled
    And I mark the value of 1st enabled date as variable choose date
    Then I click on 1st enabled date
    When I select delivery time dropdown option included '11:00 AM ~ 01:00 pm' of delivery time dropdown
    When I click on delivery detail save button
    Then I should see delivery change agree error message
    Then delivery change agree error message should contain 'Confirmation is required'
    And I click on delivery change agree checkbox
    When I click on delivery detail save button
    Then I should see alert
    And delivery method should contain 'Store Pick-up'
    And delivery time should contain choose date
    And delivery time should contain '11:00 AM ~ 01:00 pm'

    And ---ROLL BACK---
    Given I am on Delivery Options Page
    When I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain "(dirty data)Store Pick-up"