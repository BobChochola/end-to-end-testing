@BaseCase @Admin @Storefront @Delivery @Order @ReturnOrder @Promotion @storefrontReturnAndCheckOnAdminReturnShowPage @fixture-delivery @fixture-payment @fixture-product @fixture-shop @fixture-freegift @fixture-promotion @fixture-storefront-return
Feature: storefront Return And Check On Admin Return Show Page(7-11 Return Only, other refund option)
  After appling return order, merchant should see return info on Admin Return Show Page

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

    Given I am on Order Setting Page
    When I check and click storefront return toggle off
    Then storefront return toggle should be checked
    And I click on update button
    Then I should be redirected to Dashboard Page

    Given I am on Promotion Index Page
    When I input "14th Free Gift Promotion" to search field
    Then I should see row of select checkbox list
    Then 1st row of promotion list should contain "14th Free Gift Promotion"
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

    Given I am on Shop Product Index Page
    When I input "13th Product for Checkout" to search field
    Then 1st product of products list should contain '13th Product for Checkout'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on increase button
    And I fill '2' to addon quantity field
    And I click on buy together button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I click on login button
    Then I should be redirected to Shop Login Page

    And I fill email to email field
    And I fill password to password field
    And I click on submit button
    Then I should be redirected to Shop Cart Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 5 seconds for loading
    Then I should see 3 row of cart item
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
    And I fill phone to contact number field
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

    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on tab included 'Orders'
    Then I should be redirected to Shop Orders Page
    Then 1st row of order should contain order number
    When I click on row of order links
    Then I should be redirected to Shop Orders Show Page
    When I click on apply return order button
    Then I should be redirected to Shop Return Order Page
    And 1st row of product name should contain '13th Product for Checkout'
    When I click on 1st row of product checkbox
    When I fill '1' to 1st row of product return quantity field
    And I select first return reason dropdown option included 'Parcel damaged on arrival' of 1st return reason dropdown

    And 2nd row of product name should contain '3rd Addon for Checkout'
    When I click on 2nd row of product checkbox
    When I fill '1' to 2nd row of product return quantity field
    And I select second return reason dropdown option included 'Others' of 2nd return reason dropdown
    Then I should see 1 return reason field
    And I fill '3rd addon return' to 1st return reason field

    And 3rd row of product name should contain '1st Created Free Gift'
    When I click on 3rd row of product checkbox
    When I fill '2' to 1st row of product return quantity field
    And I select third return reason dropdown option included 'Incorrect item received' of 1st return reason dropdown

    And I select return delivery dropdown option included '7-11 Return Only (C2B)' of return delivery dropdown
    And I select refund dropdown option included 'Other' of refund dropdown
    And I click on agree checkbox
    And I click on confirm return button
    Then I should be redirected to Shop Return Order Success Page
    Then I mark the value of return order number info as variable return order info

  @EAT-1173 @EAT-1173-1
  Scenario: storefront Return And Check On Admin Return Show Page(7-11 Return Only, other refund option)
    Given I am on Return Orders Page
    Then 1st row of order links should contain return order number
    When I click on 1st row of order links
    Then I should be redirected to Return Orders Show Page
    And return status should contain 'Confirmed'
    And I should see refund amount field
    And I should see refund amount confirm button
    And return delivery status should contain 'Returning'
    And inspection button should be disabled
    And inspection status should contain 'Uninspected'
    And show inspection remark checkbox should be disabled
    And 1st row of return product reason should contain 'Parcel damaged on arrival'
    And 2nd row of return product reason should contain '3rd addon return'
    And 3rd row of return product reason should contain 'Incorrect item received'
    When I click on show return reason checkbox
    Then product detail area should not contain 'Parcel damaged on arrival'
    And refund area should contain 'Refund Amount'
    And refund area should contain 'Please input the actual refund amount. The refund amount will be displayed to customer on return order detail page.'
    When I select refunded refund of refund status dropdown
    Then I should see popover
    And popover should contain 'Please input refund amount first'
    And popover should contain 'Please input refund amount before change status to Refunded.'
    And popover should contain 'Note: Refund amount is not editable'
    And I click on yes button
    When I fill '35' to refund amount field
    And I click on refund amount confirm button
    And refund amount should contain 'Please do refund operation by yourself'
    And refund amount should contain 'NT$35'
    And activity log should contain 'Refund Amount NT$35'
    And refund status should contain 'Pending'
    And 2nd activity log should contain 'Updated Order Status As Confirmed'
    And 2nd activity log should contain date now
    When I select refunded refund of refund status dropdown
    Then I should see popover
    When I click on yes button
    And 1st activity log should contain 'Updated Order Payment As Refunded'
    And 1st activity log should contain date now

    And ---ROLL BACK---
    Given I am on Promotion Index Page
    When I input "14th Free Gift Promotion" to search field
    Then I should see apply filter label
    Then I should see row of select checkbox list
    Then 1st row of promotion list should contain "14th Free Gift Promotion"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item

    Given I am on Order Setting Page
    When I click on storefront return toggle
    Then storefront return toggle should not be checked
    And I click on update button
    Then I should be redirected to Dashboard Page