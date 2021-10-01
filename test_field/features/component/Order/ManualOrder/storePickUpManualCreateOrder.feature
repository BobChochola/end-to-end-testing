@BaseCase @Admin @Order @ManualOrder @storePickUpManualCreateOrder
@fixture-payment @fixture-product
Feature: Store pick up manually create order
  As a merchant
  I want to create store pick up order manually

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
    When I pick store address only title 1 file to store address selector

    And I select delivery fee type dropdown option included 'Flat Price' of delivery fee type dropdown
    And I click on select shipping countries link
    Then I should see shipping zone settings popup
    When I click on select the rest of the world checkbox
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
    Then store preview list should contain "Address"
    Then store preview list should contain "Pick-up-store Name"
    Then store preview list should not contain "Area"
    Then store preview list should not contain "District"

  @EAT-959
  Scenario: Store pick up manually create order
    Given I am on Orders Create Page
    When I click on new customer button
    And I fill name to name field
    And I fill email to email field
    And I fill phone to phone number field
    Then I click on next button
    Then I should see select product button
    When I click on select product button
    And I input '15th Product for Checkout' to search product field
    Then 1st row of select product should contain '15th Product for Checkout'
    And I click on 1st row of select product
    And I click on ok save button
    Then I should see product next button
    Then I click on product next button
    Then I should see shipping destination dropdown
    And I select shipping destination dropdown option included 'Taiwan' of shipping destination dropdown
    Then I wait for 3 seconds for loading
    And I select delivery method dropdown option included 'Store Pick-up' of delivery method dropdown
    Then I should see same as customer info checkbox
    And I click on same as customer info checkbox
    When I select store pick up city dropdown option included 'Taipei City' of store pick up city dropdown
    Then I should not see store pick up area dropdown
    Then I should not see store pick up district dropdown
    When I select store pick up store name dropdown option included "Daan store 2 - No. 666, Sec. 1, Da\'an Rd.," of store pick up store name dropdown
    Then delivery note should contain 'Description: can directly to the store to pick up goods, please show the relevant documents when picking up goods'
    When I click on delivery next button
    Then I should see payment method dropdown
    When I select payment method dropdown option included 'Custom' of payment method dropdown
    And I wait for 3 seconds for loading
    Then I should see create order button
    And I click on create order button
    Then I should be redirected to Orders Show Page
    Then delivery method should contain "Store Pick-up"
    Then delivery address should contain "Delivery AddressNo. 666, Sec. 1, Da\'an Rd.,"
    And ---ROLL BACK---
    Given I am on Delivery Options Page
    When I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain "(dirty data) Store Pick-up"