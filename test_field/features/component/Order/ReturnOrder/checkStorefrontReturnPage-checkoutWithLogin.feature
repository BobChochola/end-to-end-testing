@BaseCase @Admin @Storefront @Delivery @Order @ReturnOrder @CancelOrder @Promotion @checkStorefrontReturnPage-checkoutWithLogin @fixture-delivery @fixture-product @fixture-shop @fixture-payment 
@fixture-storefront-return
Feature: checkout an order(login with member) >> execute return order at storefront and can't see apply return button when delivery status is 'unfulfill' but cancel button >> check rerurn delivery on admin return detail page
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

    Given I am on Order Setting Page
    And I click on cancel order toggle off
    Then I should see storefront return toggle
    When I click on storefront return toggle
    Then storefront return toggle should be enabled
    And I fill '5' to return order limit day field
    And I click on update button
    Then I should be redirected to Dashboard Page

    Given I am on Payment Setting Page
    And I click edit button of payment method list for the same order of row of payment method list included 'Custom'
    Then I should be redirected to Payment Edit Page
    And I click on cancel order toggle off
    Then I click on update button
    Then I should be redirected to Payment Setting Page

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
    And I select payment dropdown option included "Custom" of payment method dropdown
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

  @EAT-1171 @EAT-1171-2 @EAT-1260 @EAT-1260-1
  Scenario: checkout an order(login with member) >> execute return order at storefront and can't see apply return button when delivery status is 'unfulfill' but cancel button >> check rerurn delivery on admin return detail page
    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on tab included 'Orders'
    Then I should be redirected to Shop Orders Page
    Then 1st row of order should contain order number
    When I click on row of order links
    Then I should be redirected to Shop Orders Show Page
    Then I should see apply return order button
    And apply return order button should contain 'Apply Return Order'
    And return expiry date should contain five day of return expiry date

    And I switch to 2 of tabs
    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    And I select update order delivery status option included 'Unfulfilled' of update order delivery status dropdown
    And I click on OK button

    When I switch to 1 of tabs
    Then I should be redirected to Shop Orders Show Page
    When I Refresh
    Then I should not see apply return order button

    When I switch to 2 of tabs
    Then I should be redirected to Orders Show Page
    And I select update order delivery status option included 'Collected' of update order delivery status dropdown
    And I click on OK button

    When I switch to 1 of tabs
    Then I should be redirected to Shop Orders Show Page
    When I Refresh
    Then I should see apply return order button
    When I click on apply return order button
    Then I should be redirected to Shop Return Order Page
    When I click on confirm return button
    Then not select item error should contain 'Select Return Product is required'

    And 1st row of product name should contain '2nd Product for Checkout'
    And 1st row of product quantity should contain '1'
    And 1st row of product return quantity should contain '0'
    When I click on 1st row of product checkbox
    Then 1st row of product quantity should contain '1'
    And I select first return reason dropdown option included 'Others' of 1st return reason dropdown
    When I click on confirm return button
    Then I fill '' to name field
    Then I fill '' to phone field
    Then 1st error message should contain 'Please specify in additional note is required'
    Then 2nd error message should contain 'Return Nameis required'
    Then 3rd error message should contain 'Return Phoneis required'
    Then 4th error message should contain 'is required'
    Then 5th error message should contain 'is required'
    Then 6th error message should contain 'is required'
    Then 7th error message should contain 'Bank Name & Account is required'
    Then 8th error message should contain 'You must agree with the return policy'
    And I select first return reason dropdown option included 'Size issue' of 1st return reason dropdown

    And I select return delivery dropdown option included 'Custom Return' of return delivery dropdown
    Then I fill '陳大明' to name field
    Then I fill '0987654321' to phone field
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill 'qwerty' to delivery address field
    And I select refund dropdown option included 'Provide refund account' of refund dropdown
    And I fill '5422882800700007' to bank account field
    And I should see back to order show button
    And back to order show button should contain 'Back to order information page'
    And I click on agree checkbox
    And I click on confirm return button

    When I switch to 2 of tabs
    Given I am on Return Orders Page
    Then I click on 1st row of order links
    Then I should be redirected to Return Orders Show Page
    And 1st row of return product should contain '2nd Product for Checkout'
    And 1st row of return product should contain '1 x NT$1'
    And return type should contain 'Custom Return'
    Then return address should contain 'qwerty'
    Then return address should contain 'Zhongzheng District'
    Then return address should contain '100Taipei City'
    Then return address should contain 'Taiwan'
    And return name should contain '陳大明'
    And return phone should contain '0987654321'

    When I switch to 1 of tabs
    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on tab included 'Orders'
    Then I should be redirected to Shop Orders Page
    Then 1st row of order should contain order number
    When I click on row of order links
    Then I should be redirected to Shop Orders Show Page
    Then I should not see order cancel button

    When I switch to 2 of tabs
    Then I should be redirected to Return Orders Show Page
    When I select cancelled return of return status dropdown
    And I click on yes button
    Given I am on Orders Page
    Then 1st row of order links should contain order number
    And I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    And I select update order delivery status option included 'Unfulfilled' of update order delivery status dropdown
    And I click on yes button

    When I switch to 1 of tabs
    Then I should be redirected to Shop Orders Show Page
    And I Refresh
    Then I should see order cancel button

    And ---ROLL BACK---
    Given I am on Delivery Options Page
    And I click on tab included 'Return Delivery Options'
    When I click delete button of return delivery method list for the same order of row of return delivery options list included '(dirty data) Custom Return'
    Then I should see delete confirmation popover
    Then I click on delete checkbox
    When I click on confirm delete button
    Then 1st row of return delivery options list should not contain '(dirty data) Custom Return'

    Given I am on Order Setting Page
    And I click on cancel order toggle on
    And I fill '7' to return order limit day field
    When I click on storefront return toggle
    Then storefront return toggle should not be checked
    And I click on update button
    Then I should be redirected to Dashboard Page