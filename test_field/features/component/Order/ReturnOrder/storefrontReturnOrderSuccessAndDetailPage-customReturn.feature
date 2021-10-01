@BaseCase @Admin @Storefront @Delivery @Order @ReturnOrder @promotion @storefrontReturnOrderSuccessAndDetailPage-customReturn @fixture-delivery @fixture-product @fixture-shop @fixture-product @fixture-payment @fixture-storefront-return
Feature: After applying return order, I should be redirected to success page and should see return progress page (custom return)
  As a merchant
  I can turn on return order toggle for customer so that customer can return order in storefront

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
    When I input "2nd Product for Checkout" to search field
    Then 1st product of products list should contain '2nd Product for Checkout'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
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
    And I select status dropdown option included 'Arrived' of status item dropdown
    When I click on update button
    And I click on OK button
    Then 1st row of delivery status should contain 'Arrived'

    Given I am on Order Setting Page
    When I check and click storefront return toggle off
    Then storefront return toggle should be checked
    And I click on update button
    Then I should be redirected to Dashboard Page

  @EAT-1172 @EAT-1172-2
  Scenario: After applying return order, I should be redirected to success page and should see return progress page (custom return)
    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on tab included 'Orders'
    Then I should be redirected to Shop Orders Page
    Then 1st row of order should contain order number
    When I click on row of order links
    Then I should be redirected to Shop Orders Show Page
    Then I should see apply return order button
    When I click on apply return order button
    Then I should be redirected to Shop Return Order Page
    When I click on 1st row of product checkbox
    And I select first return reason dropdown option included 'Size issue' of return reason dropdown

    And I select return delivery dropdown option included 'Custom Return' of return delivery dropdown
    Then I fill '陳大明' to name field
    Then I fill '0987654321' to phone field
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill 'qwerty' to delivery address field
    And I select refund dropdown option included 'Provide refund account' of refund dropdown
    And I fill '5422882800700007' to bank account field
    And I click on agree checkbox
    And I click on confirm return button

    Then I should be redirected to Shop Return Order Success Page
    Then I should see return order confirm image
    And id should contain 'Your return order has been submitted!'
    And id should contain 'An return order confirmation email will be sent to below email'
    Then I mark the value of return order number info as variable return order info
    And return order number info should contain 'Return Order No. ：'
    And return date should contain today date
    And return method should contain 'Custom Return'
    And return status should contain 'Returning'
    And refund status should contain 'Pending'
    And 1st row of return product name should contain '2nd Product for Checkout'
    And 1st row of return product quantity should contain '1'
    And 1st row of return product reason should contain 'Size issue'
    And refund description should contain 'The acutal refund amount will be displayed on Return Order Information Page.'
    And I should see return order link
    And refund description should contain 'Please Contact Us if you have any question.'
    When I click on contact us link
    Then I should see popover
    And I fill 'message test' to message text field
    And I click on message send button
    And I should not see popover
    And go to shoppping button should contain 'Continue Shopping'
    When I click on go to shoppping button
    Then I should be redirected to Shop Home Page

    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on tab included 'Orders'
    Then I should be redirected to Shop Orders Page
    Then 1st row of order should contain order number
    When I click on return order progress button
    Then I should be redirected to Shop Return Status Check Page
    And return order number info should contain return order number
    And return date should contain today date
    And return method should contain 'Custom Return'
    And return status should contain 'Returning'
    And refund status should contain 'Pending'
    And 1st row of return product name should contain '2nd Product for Checkout'
    And 1st row of return product quantity should contain '1'
    And 1st row of return product reason should contain 'Size issue'
    And 1st row of product inspect status should contain 'Uninspected'
    And refund amount should contain 'Pending'
    And refund date should contain 'Pending'
    And refund option should contain '*************007'
    When I click on go to order show page button
    Then I should be redirected to Shop Orders Show Page
    Then delivery detail should not contain return order number

    Given I am on Return Orders Page
    Then I click on 1st row of order links
    Then I should be redirected to Return Orders Show Page
    Then return no should contain return order number

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