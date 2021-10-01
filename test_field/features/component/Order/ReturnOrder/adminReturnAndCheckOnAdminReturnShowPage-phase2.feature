@BaseCase @ImageService @Admin @Storefront @Delivery @Order @ReturnOrder @Promotion @adminReturnAndCheckOnAdminReturnShowPage-phase2 @fixture-delivery @fixture-payment @fixture-product @fixture-shop @fixture-freegift @fixture-addon @fixture-storefront-return
Feature: admin return >> execute inspect >> check the different on admin/shop return show page(Custom, Custom refund)
  As a merchant,
  I can return order from admin and see new feature on return order show page

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

    Given I am on Order Setting Page
    When I check and click storefront return toggle off
    Then storefront return toggle should be checked
    And I click on update button
    Then I should be redirected to Dashboard Page

    Given I am on Shop Product Index Page
    When I input "2nd Product for Checkout" to search field
    Then 1st product of products list should contain '2nd Product for Checkout'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I fill '3' to product quantity field
    And I click on add to cart button
    Then I should see cart panel

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
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 5 seconds for loading
    Then I should see 2 row of cart item
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
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    And I should see view return button
    Then I click on view return button
    Then I should be redirected to Place Return Order Page
    And I click on select all checkbox
    And I fill '2' to 1st quantity field
    And I fill '1' to 2nd quantity field
    And I select return delivery dropdown option included 'Custom Return' of return delivery dropdown
    Then recipient name field should contain name
    Then recipient phone field should contain phone
    And I select country dropdown option included "Taiwan" of country dropdown
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill '14F., No.44, Ln. 11, Guangfu N. Rd.' to address field
    And I select return payment dropdown option included 'Custom' of return payment dropdown
    And I click on place return button
    Then I should see popover
    And I click on OK button

  @EAT-1173 @EAT-1173-2 @EAT-1174 @EAT-1174-1
  Scenario: admin return >> execute inspect >> check the different on admin/shop return show page(Custom, Custom refund)
    Then I should be redirected to Return Orders Show Page
    Then I mark the value of return order number label as variable return order info
    And return status should contain 'Confirmed'
    And I should see refund amount field
    And I should see refund amount confirm button
    And return delivery status should contain 'Returning'
    And inspection button should be disabled
    And inspection status should contain 'Uninspected'
    And product inspection area should contain 'Product Inspection Status'
    And product inspection area should contain 'You can execute inspection once return order delivery status turns to returned or arrived.'
    Then I should not see show return reason checkbox
    Then show inspection remark checkbox should be disabled
    When I select return delivery status dropdown option included 'Returned' of return delivery status dropdown option
    Then I should see popover
    And I click on yes button
    Then return delivery status should contain 'Returned'
    And 1st activity log should contain 'Updated Order Delivery As Returned'
    And 1st activity log should contain date now
    And inspection button should be enabled
    When I fill '-100' to refund amount field
    And I click on refund amount confirm button
    Then I should see refund error message
    Then refund error message should contain 'Refund Amount is invalid'
    When I fill '35' to refund amount field
    And I click on refund amount confirm button
    Then I should see alert
    And refund amount should contain 'Please do refund operation by yourself'
    And refund amount should contain 'NT$35'
    And 1st activity log should contain 'Refund Amount NT$35'
    And 1st activity log should contain date now
    When I click on inspection button
    Then I should be redirected to Return Product Inspection Page
    When I click on cancel button
    Then I should be redirected to Return Orders Show Page
    When I click on inspection button
    Then I should be redirected to Return Product Inspection Page
    And I should have image product image for 1st row of product image
    And I should have image product image for 2nd row of product image
    And 1st row of product name should contain '2nd Product for Checkout'
    And 2nd row of product name should contain '10th Product for Checkout'
    And 2nd row of product variant should contain 'BlueS'
    And 1st row of product quantity should contain '2'
    And 2nd row of product quantity should contain '1'
    When I fill '4' to 1st row of product inspect success quantity field
    When I fill more than 60 characters to 1st row of product inspect remark field
    Then 1st inspection quantity error message should contain 'Should less or equal original return quantity'
    When I click on confirm inspection button
    Then 2nd inspection quantity error message should contain 'Pass Inspection Quantity is required'
    Then inspection remark too long error message should contain 'Inspection Remark is too long'
    When I fill '1' to 1st row of product inspect success quantity field
    When I fill '1' to 2nd row of product inspect success quantity field
    Then 1st row of product inspect fail quantity should contain '1'
    Then 2nd row of product inspect fail quantity should contain '0'
    And I fill 'first remark' to 1st row of product inspect remark field
    And I fill 'second remark' to 2nd row of product inspect remark field
    When I click on confirm inspection button
    Then I should see popover
    And popover should contain 'Confirm Inspection'
    And popover should contain 'Inspection result can not be changed, please make sure your inspect quantity and product are correct.'
    And popover should contain 'Please manually restore inventory stock if needed'
    And popover should contain 'Please do refund operation by yourself'
    When I click on popover confirm button
    Then I should be redirected to Return Orders Show Page
    And I should see alert
    And inspection status should contain 'Inspected'
    And activity log should contain 'Update Product Inspection Status As Inspected'
    And activity log should contain date now
    Then show inspection remark checkbox should be checked
    Then 1st row of inspect remark should contain 'first remark'
    Then 1st row of return product should contain 'Pass'
    Then 2nd row of inspect remark should contain 'first remark'
    Then 2nd row of return product should contain 'Fail'
    Then 3rd row of inspect remark should contain 'second remark'
    Then 3rd row of return product should contain 'Pass'

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    And I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I should see view return button
    When I click on view return button
    Then I should be redirected to Return Orders Show Page

    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on tab included 'Orders'
    Then I should be redirected to Shop Orders Page
    Then 1st row of order should contain order number
    When I click on row of order links
    Then I should be redirected to Shop Orders Show Page
    When I click on view return order button
    Then I should be redirected to Shop Return Status Check Page
    And return order number info should contain return order number
    And return status should contain 'Returned'
    And refund status should contain 'Pending'
    And 1st row of return product name should contain '2nd Product for Checkout'
    And 1st row of return product quantity should contain '1'
    And 1st row of product inspect status should contain 'Pass'
    And 1st row of return product reason should contain 'Return By Merchant'
    And 1st row of product inspect status should contain 'first remark'
    And 2nd row of return product name should contain '2nd Product for Checkout'
    And 2nd row of return product quantity should contain '1'
    And 2nd row of product inspect status should contain 'Fail'
    And 2nd row of return product reason should contain 'Return By Merchant'
    And 2nd row of product inspect status should contain 'first remark'
    And 3rd row of return product name should contain '10th Product for Checkout'
    And 3rd row of return product quantity should contain '1'
    And 3rd row of product inspect status should contain 'Pass'
    And 3rd row of return product reason should contain 'Return By Merchant'
    And 3rd row of product inspect status should contain 'second remark'
    And refund amount should contain 'Pending'
    And refund date should contain 'Pending'
    And refund option should contain 'Custom'

    And ---ROLL BACK---
    Given I am on Delivery Options Page
    And I click on tab included 'Return Delivery Options'
    When I click delete button of return delivery method list for the same order of row of return delivery options list included '(dirty data) Custom Return'
    Then I should see delete confirmation popover
    Then I click on delete checkbox
    When I click on confirm delete button
    Then 1st row of return delivery options list should not contain '(dirty data) Custom Return'

    Given I am on Order Setting Page
    When I click on storefront return toggle
    Then storefront return toggle should not be checked
    And I click on update button
    Then I should be redirected to Dashboard Page