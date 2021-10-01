@BaseCase @Admin @Storefront @Search @Delivery @Order @ReturnOrder @returnOderShowsPageFilterInspectStatusAndExport @fixture-delivery @fixture-payment @fixture-product @fixture-shop @fixture-product @fixture-storefront-return
Feature: As a merchant I can filter inspect status on return order index page and click on uninspected tab and export return order
  As a merchant,
  I want to know all inspect status. So that I can filter inspect status on return order shows page

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

    Given I am on Shop Product Index Page
    When I input "13th Product for Checkout" to search field
    Then 1st product of products list should contain '13th Product for Checkout'
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
    And I select first return reason dropdown option included 'Parcel damaged on arrival' of 1st return reason dropdown
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

  @EAT-1175 @EAT-1175-1 @EAT-1176 @EAT-1259
  Scenario: As a merchant I can filter inspect status on return order index page
    Given I am on Return Orders Page
    Then 1st row of order links should contain return order number
    Then 1st row of inspect status should contain 'Uninspected'    
    When I select inspect status of filter type dropdown
    When I select uninpected of filter value dropdown
    And I wait for 3 seconds loading
    Then I should see search label
    And search label should contain 'Return Inspection Status is Uninspected'
    Then 1st row of order links should contain return order number
    Then 1st row of inspect status should contain 'Uninspected'
    And I click on remove filter button
    And I wait for 3 seconds loading
    When I click on tab included 'Uninspected'
    And I should see search label
    And search label should contain 'Return Inspection Status is Uninspected'
    Then 1st row of order links should contain return order number
    When I click on 1st row of order links
    Then I should be redirected to Return Orders Show Page
    Then I mark the value of return order number label as variable return order info
    And inspection status should contain 'Uninspected'
    When I select return delivery status dropdown option included 'Returned' of return delivery status dropdown option
    Then I should see popover
    And I click on yes button
    Then return delivery status should contain 'Returned'
    When I click on inspection button
    Then I should be redirected to Return Product Inspection Page
    When I fill '1' to 1st row of product inspect success quantity field
    When I click on confirm inspection button
    Then I should see popover
    When I click on popover confirm button

    Given I am on Return Orders Page
    And 1st row of inspect status should contain 'Inspected'
    When I select inspect status of filter type dropdown
    When I select inpected of filter value dropdown
    And I wait for 5 seconds loading
    Then 1st row of order links should contain return order number
    Then 1st row of inspect status should contain 'Inspected'
    And I click on remove filter button
    And I wait for 3 seconds loading
    When I click on tab included 'Uninspected'
    And I should see search label
    And search label should contain 'Return Inspection Status is Uninspected'
    Then return orders table should not contain return order number

    Given I am on Return Orders Page
    Then I should see export return order report button
    And export return order report button should contain 'Export Return Order Report'
    And I click on 1st row of return checkbox
    When I click on export return order report button
    Then I should see popover
    And I click on selected orders checkbox
    And I click on export button
    Then I should see alert
    And alert should contain 'Exporting your Return Order Report'
    Given I am on Bulk Import Export Progress Page
    And 1st report list should contain 'Return Order Report Export'
    And 1st report list should contain 'Successful / Failed : 1 / 0'

    Given I am on Basic Setting Page
    And I mark the value of shop name field as variable shop name
    And I wait for 20 seconds for mail sent
    Given I am on Google Mail Page
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    Then I should see row of mail list
    Then row of mail list should contain 'Download Return Order Report'
    When I click on 1st row of mail list
    Then downloaded file from download button should contain 'Inspected'
    Then downloaded file from download button should contain return order number
    Then downloaded file from download button should contain 'Returned'
    Then downloaded file from download button should contain 'Parcel damaged on arrival'
    Then downloaded file from download button should not contain 'Uninspected'

    And ---ROLL BACK---
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