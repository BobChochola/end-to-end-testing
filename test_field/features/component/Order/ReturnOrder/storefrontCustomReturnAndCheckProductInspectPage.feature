@BaseCase @ImageService @Admin @Storefront @Delivery @Order @ReturnOrder @Promotion @storefrontCustomReturnAndCheckProductInspectPage @fixture-delivery @fixture-payment @fixture-product @fixture-shop @fixture-freegift @fixture-promotion @fixture-storefront-return
Feature: shop return >> execute inspect >> check the different on admin/shop return show page(Custom, Provide refund account)
  As a merchant,
  I can execute product inspect.

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

    Given I am on Return Delivery Create Page
    When I select delivery type dropdown option included 'Custom' of delivery type dropdown
    And I fill the Merchant Name to merchant name field
    And I fill '(dirty data) Custom Return' to name field
    And I click on add button
    And I click on confirm adding button
    Then I should be redirected to Delivery Options Page
    When I click on tab included 'Return Delivery Options'
    Then 1st row of return delivery options list should contain "Custom Return"

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
    When I fill '2' to 3rd row of product return quantity field
    And I select third return reason dropdown option included 'Not as expected' of 1st return reason dropdown

    And I select return delivery dropdown option included 'Custom Return' of return delivery dropdown
    And I fill '陳小明' to name field
    And I fill '0912345678' to phone field
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill 'qwerty' to delivery address field
    And I select refund dropdown option included 'Provide refund account' of refund dropdown
    And I fill '1111111111111111' to bank account field
    And I click on agree checkbox
    And I click on confirm return button
    Then I should be redirected to Shop Return Order Success Page
    Then I mark the value of return order number info as variable return order info

  @EAT-1174 @EAT-1174-2
  Scenario: shop return >> execute inspect >> check the different on admin/shop return show page(Custom, Provide refund account)
    Given I am on Return Orders Page
    Then 1st row of order links should contain return order number
    When I click on 1st row of order links
    Then I should be redirected to Return Orders Show Page
    And inspection status should contain 'Uninspected'
    When I select return delivery status dropdown option included 'Returned' of return delivery status dropdown option
    Then I should see popover
    And I click on yes button
    Then return delivery status should contain 'Returned'
    When I click on inspection button
    Then I should be redirected to Return Product Inspection Page
    And I should see 3 row of product
    And I should have image product image for 1st row of product image
    And I should have image product image for 2nd row of product image
    And 1st row of product name should contain '13th Product for Checkout'
    And 2nd row of product name should contain '3rd Addon for Checkout'
    And 3rd row of product name should contain '1st Created Free Gift'
    And 1st row of product variant should contain 'Blue'
    And 1st row of product quantity should contain '1'
    And 2nd row of product quantity should contain '1'
    And 3rd row of product quantity should contain '2'
    When I fill '0' to 1st row of product inspect success quantity field
    When I fill '1' to 2nd row of product inspect success quantity field
    When I fill '2' to 3rd row of product inspect success quantity field
    Then 1st row of product inspect fail quantity should contain '1'
    Then 2nd row of product inspect fail quantity should contain '0'
    Then 3rd row of product inspect fail quantity should contain '0'
    And I fill 'first remark' to 1st row of product inspect remark field
    And I fill 'third remark' to 3rd row of product inspect remark field
    When I click on confirm inspection button
    Then I should see popover
    When I click on popover confirm button
    Then I should be redirected to Return Orders Show Page
    And I should see alert
    And inspection status should contain 'Inspected'
    When I should see show return reason checkbox
    Then show return reason checkbox should be checked
    Then show inspection remark checkbox should be checked
    Then 1st row of return product should contain '13th Product for Checkout'
    Then 1st row of return product should contain '1 x NT$'
    Then 1st row of return product should contain 'Fail'
    Then 1st row of return product reason should contain 'Parcel damaged on arrival'
    Then 1st row of inspect remark should contain 'first remark'
    Then 2nd row of return product should contain '3rd Addon for Checkout'
    Then 2nd row of return product should contain 'Add-on Item'
    Then 2nd row of return product should contain '1 x NT$'
    Then 2nd row of return product should contain 'Pass'
    Then 2nd row of return product reason should contain '3rd addon return'
    Then 2nd row of inspect remark should equal to ''
    Then 3rd row of return product should contain '1st Created Free Gift'
    Then 3rd row of return product should contain 'Free Gift'
    Then 3rd row of return product should contain '2 x NT$'
    Then 3rd row of return product should contain 'Pass'
    Then 3rd row of return product reason should contain 'Not as expected'
    Then 3rd row of inspect remark should equal to 'third remark'
    When I fill '80' to refund amount field
    And I click on refund amount confirm button
    Then I should see alert
    And refund amount should contain 'Please do refund operation by yourself'
    And refund amount should contain 'NT$80'
    And 1st activity log should contain 'Refund Amount NT$80'
    And 1st activity log should contain date now
    When I select refunded refund of refund status dropdown
    Then I should see popover
    And I click on yes button
    Then refund status should contain 'Refunded'
    And 1st activity log should contain 'Updated Order Payment As Refunded'
    And 1st activity log should contain date now

    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on tab included 'Orders'
    Then I should be redirected to Shop Orders Page
    Then 1st row of order should contain order number
    When I click on return order progress button
    Then I should be redirected to Shop Return Status Check Page
    And return order number info should contain return order number
    And return status should contain 'Returned'
    And refund status should contain 'Refunded'
    And 1st row of return product name should contain '13th Product for Checkout'
    And 1st row of return product quantity should contain '1'
    And 1st row of product inspect status should contain 'Fail'
    And 1st row of product inspect status should contain 'first remark'
    And 2nd row of return product name should contain '3rd Addon for Checkout'
    And 2nd row of return product quantity should contain '1'
    And 2nd row of product inspect status should contain 'Pass'
    And 2nd row of product inspect status should not contain 'remark'
    And 3rd row of return product name should contain '1st Created Free Gift'
    And 3rd row of return product quantity should contain '2'
    And 3rd row of product inspect status should contain 'Pass'
    And 3rd row of product inspect status should contain 'third remark'
    And refund amount should contain 'NT$80'
    And refund date should contain today date
    And refund option should contain '*************111'

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

    Given I am on Delivery Options Page
    And I click on tab included 'Return Delivery Options'
    When I click delete button of return delivery method list for the same order of row of return delivery options list included '(dirty data) Custom Return'
    Then I should see delete confirmation popover
    Then I click on delete checkbox
    When I click on confirm delete button
    Then 1st row of return delivery options list should not contain '(dirty data) Custom Return'