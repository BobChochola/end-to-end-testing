@BaseCase @Admin @Storefront @Delivery @Order @ReturnOrder @checkInpectedStatusWhenStorefrontReturnToggleOff @fixture-delivery @fixture-payment @fixture-product @fixture-shop @fixture-product
@fixture-storefront-return
Feature: storefront return toggle off >> Checkout and admin return >> toggle on >> inspected status should show Inspected 
  As a merchant,
  I should see inspected status should show Inspected, when checkout with storefront return toggle off and use admin return.

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click no thanks button

    Given I am on Return Delivery Create Page
    When I select delivery type dropdown option included 'Custom' of delivery type dropdown
    And I fill the Merchant Name to merchant name field
    And I fill '(dirty data) Custom Return' to name field
    And I click on add button
    And I click on confirm adding button
    Then I should be redirected to Delivery Options Page
    When I click on tab included 'Return Delivery Options'
    Then 1st row of return delivery options list should contain "Custom Return"

    Given I am on Shop Product Index Page
    When I input "10th Product for Checkout" to search field
    Then 1st product of products list should contain '10th Product for Checkout'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
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
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 5 seconds for loading
    Then I should see 1 row of cart item
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order checkbox
    And I select Update Status of bulk actions dropdown
    And I select status dropdown option included 'Delivery Status' of status type dropdown
    And I select status dropdown option included 'Collected' of status item dropdown
    When I click on update button
    And I click on OK button
    Then 1st row of delivery status should contain 'Collected'

    Given I am on Orders Page
    When I input order number to search field
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    And I should see view return button
    Then I click on view return button
    Then I should be redirected to Place Return Order Page
    And I click on select all checkbox
    And I fill '1' to 1st quantity field
    And I select return delivery dropdown option included 'Custom Return' of return delivery dropdown
    Then recipient name field should contain name
    Then recipient phone field should contain phone
    And I select country dropdown option included "Taiwan" of country dropdown
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill 'qwerty' to address field
    And I select return payment dropdown option included 'Custom' of return payment dropdown
    And I click on place return button
    Then I should see popover
    And I click on OK button
    Then I should be redirected to Return Orders Show Page
    Then I mark the value of return order number label as variable return order info

  @EAT-1175 @EAT-1175-2
  Scenario: storefront return toggle off >> Checkout and admin return >> toggle on >> inspected status should show Inspected
    Given I am on Order Setting Page
    When I check and click storefront return toggle off
    Then storefront return toggle should be checked
    And I click on update button
    Then I should be redirected to Dashboard Page

    Given I am on Return Orders Page
    Then 1st row of order links should contain return order number
    Then 1st row of inspect status should contain 'Uninspected'

    And ---ROLL BACK---
    Given I am on Delivery Options Page
    And I click on tab included 'Return Delivery Options'
    When I click delete button of return delivery method list for the same order of row of return delivery options list included '(dirty data) Custom Return'
    Then I should see delete confirmation popover
    Then I click on delete checkbox
    When I click on confirm delete button
    Then 1st row of return delivery options list should not contain '(dirty data) Custom Return'