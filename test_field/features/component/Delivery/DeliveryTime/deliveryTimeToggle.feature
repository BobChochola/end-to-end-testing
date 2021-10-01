@BaseCase @Admin @Storefront @Delivery @DeliveryTime @deliveryTimeToggle @fixture-product @fixture-shop @fixture-payment
Feature: Delivery Assert Feature
  As a nonsuperadmin merchant
  I can't input some field on delivery form

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

  Scenario: delivery setting specified date and excluded date
    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Custom' of delivery type dropdown
    And I fill "(dirty data) DeliverySpecifiedDate" to name field
    And I click on specified date toggle
    Then I scroll down to specified date toggle
    Then I should see selectable day field
    When I fill '1' to selectable day field
    And I select exclude specific day dropdown option included 'Sunday' of exclude specific day dropdown
    And I click on exclude specific day dropdown
    And I click on excluded date calendar
    And I click on calendar today button
    And I click on specified date required checkbox
    And I click on specified timeslot toggle
    Then I should see option setting field
    When I fill 'AM' to option setting field
    And I select delivery fee type dropdown option included 'Flat Price' of delivery fee type dropdown
    And I click on select shipping countries link
    Then I should see shipping zone settings popup
    When I click on applicable shipping countries taiwan
    And I click on right angle bracket button
    And I click on ok button
    Then I should be redirected to Delivery Create Page
    When I fill Delivery Fee to delivery fee field
    And I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Delivery Options Page
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "DeliverySpecifiedDate" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill phone to contact number field
    And I fill email to email address field
    And I click on same as checkbox
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill address to delivery address field
    And I click on agree terms checkbox
    And I select arrival time dropdown option included 'AM' of arrival time dropdown
    And I click on place order button
    Then I should see required field error
    Then required field error should equal to "Arrival Date is required"
    When I fill date to arrival date field
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    And ---ROLL BACK---
    Given I am on Delivery Options Page
    Then I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain "(dirty data) DeliverySpecifiedDate"