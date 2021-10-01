@BaseCase @Admin @Order @Setting @CancelOrder @checkShopOrderCancelMemberWithoutRevertCredit @fixture-shop @fixture-product @fixture-payment @fixture-delivery @C17431 @C17437

Feature: check shop order cancel flow detail, cancel order without revert credit and revert credits. member/custom
  As a user of Shopline
  I want ckeck order setting cancel order on
  and shop member login checkout flow

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

    Given I am on Order Setting Page
    When I check and click cancel order toggle off
    And I click on 1st auto cancel order checkbox
    And I scroll down to update button
    And I click on update button
    Then I should be redirected to Dashboard Page

    Given I am on Payment Setting Page
    When I click edit button of payment method list for the same order of row of payment method list included 'Custom'
    Then I should be redirected to Payment Edit Page
    And I fill "(rollback data) Custom" to name field
    When I check and click cancel order toggle off
    And I click on update button
    Then I should be redirected to Payment Setting Page

    Given I am on Customer List Page
    When I input email to search field
    Then I should see view button
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    When I click on assign credits button
    Then I should see popover
    When I fill "13" to amount of credit field
    And I click on never expires button
    And I fill "Testing amount of credits" to reason field
    And I click on credit save button
    Then I should see row of credit list

  @EAT-1162 @EAT-1162-3 @C17405
  Scenario: check shop order cancel flow detail, cancel order without revert credit and revert credits. member/custom
    Given I am on Shop Product Index Page
    And I input "10th Product for Checkout" to search field
    Then 1st product of products list should contain '10th Product for Checkout'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill "3" to product quantity field
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I click on login button
    Then I should be redirected to Shop Login Page
    When I fill email to email field
    And I fill password to password field
    And I click on submit button
    Then I should be redirected to Shop Cart Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for cart update
    And I select delivery dropdown option included "Local Delivery" of delivery method dropdown
    And I wait for 5 seconds for cart update
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 5 seconds for cart update
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
    And I check contact number field and fill phone
    And I check and click save number checkbox
    And I click on same as checkbox
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill address to delivery address field
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
   
    When I click on summary collapse
    Then credit should contain "NT$13"
    Then I mark the value of order confirm info as variable order info
    Then I should see check order footer
    Then order view hyperlink should contain 'Member Center> Orders'
    And I click on order view hyperlink
    Then I should be redirected to Shop User Profile Page

    When I switch to 2 of tabs
    Given I am on Orders Page
    Then 1st row of order links should contain order number
    And I click on 1st row of order links

    Then I should be redirected to Orders Show Page
    Then order status should contain "Open"
    Then payment status should contain "Unpaid"
    Then delivery status should contain "Unfulfilled"

    When I switch to 1 of tabs
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Orders'
    Then I should be redirected to Shop Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Shop Orders Show Page
    Then I should see order cancel button
    And I click on order cancel button
    Then I should see order cancel popover
    And I select reason for cancellation dropdown option included "Change your mind" of reason for cancellation dropdown
    Then I click on confirm cancel button
    Then I wait for 3 seconds for loading
    Then I should see succeed cancel popup 
    Then I click on ok button

    When I switch to 2 of tabs
    Given I am on Orders Page
    When I click on tab included 'Cancelled by Customer'
    Then 1st row of order links should contain order number
    And I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I should see credit revert status
    Then credit revert status should contain "Not Reverted"
    Then reason for cancellation should contain "Change your mind"
    Then order status should contain "Cancelled"
    Then credit revert status should contain "Not Reverted"
    Then 1st row of activity log list should contain "Updated Order Status As Cancelled"
    Then 2nd row of activity log list should contain "Cancelled order from customer IP"
    When I select Cancelled of order status dropdown
    Then I should see revert credit popover
    And I click on revert credit checkbox included 'Revert credits with original expiry date'
    And I click on YES button
    And I click on send notification checkbox
    And I click on OK button
    Then credit revert status should contain "Processing"
    Then I Refresh
    Then credit revert status should contain "Reverted"

    Given I am on Customer List Page
    When I input email to search field
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I click on view button
    Then I should be redirected to Customer Detail Page
    Then I scroll down to row of credit list
    Then I should see row of credit list
    Then 1st row of credit list should contain "Credits reverted from cancelled order"

    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on tab included 'Store Credits'
    Then I should be redirected to Shop User Credit Page
    Then I should see row of credit list
    Then 2nd row of credit list should contain "- 13"
    Then 2nd row of credit list should contain "Use of credits in order"
    Then 1st row of credit list should contain "+ 13"
    Then 1st row of credit list should contain "Credits reverted from cancelled order"

    Given I am on Google Mail Page
    Then I should see account field
    When I fill merchant email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input order number to search field
    Then I should see row of mail list
    And I click on row of mail list included "Order cancellation confirmation"
    Then mail detail should contain "Cancelled"
    Then mail detail should contain "Unpaid"
    Then mail detail should contain "Unfulfilled"
    And I should see view order button
    And I click on view order button
    When I switch to 3 of tabs
    Then I should be redirected to Shop Orders Show Page

    And ---ROLL BACK---
    Given I am on Payment Setting Page
    When I click edit button of payment method list for the same order of row of payment method list included 'Custom'
    Then I should be redirected to Payment Edit Page

    And I fill "Custom" to name field
    When I check and click cancel order toggle on
    And I click on update button
    Then I should be redirected to Payment Setting Page
    Given I am on Customer List Page
    When I input email to search field
    Then I should see view button
    When I click view button for the same order of customer row included 'testuser'
    Then I should be redirected to Customer Detail Page
    When I click on assign credits button
    Then I should see popover
    When I fill "-13" to amount of credit field
    And I fill "Rolling back amount of credits" to reason field
    And I click on credit save button
    Then I should see row of credit list

    Given I am on Order Setting Page
    And I click on 1st auto cancel order checkbox
    When I check and click cancel order toggle on
    And I scroll down to update button
    And I click on update button
    Then I should be redirected to Dashboard Page