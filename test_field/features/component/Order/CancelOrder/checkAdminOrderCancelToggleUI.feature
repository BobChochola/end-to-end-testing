@BaseCase @Admin @Order @CancelOrder @checkAdminOrderCancelToggleUI @C17389 @C17390 @C17391 @C17392 @17393 @C17390 @C17409
Feature: check switch order cancel toggle support to payment function
  As a user of Shopline
  I want check & subswitch order setting cancel order toggle
  and payment setting order cancel subswith

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
    When I check and click cancel order toggle on
    And I scroll down to update button
    And I click on update button
    Then I should be redirected to Dashboard Page

  @EAT-1161 @EAT-1161-1 @premiumFeature
  Scenario: check switch order cancel toggle support to payment function
    Given I am on Payment Setting Page
    When I click on add button
    Then I should be redirected to Payment Create Page
    When I select payment type dropdown option included 'Taishin' of payment type dropdown
    Then I should not see cancel order toggle

    When I switch to 2 of tabs
    Given I am on Order Setting Page
    Then I should see cancel order toggle
    Then cancel order info should contain 'Cancel Order By Customer'
    Then I should see payment hyperlink
    Then payment hyperlink should contain 'Settings > Payment Options'
    Then I should see cancel order toggle off
    Then I should not see auto cancel order checkbox
    And I click on cancel order toggle
    And I wait for 3 seconds for loading
    Then I should see cancel order toggle on
    Then I should see auto cancel order checkbox
    Then cancel order info should contain 'Cancel order without revert credits & points (You can manually revert credits & points in order management.)'
    Then cancel order info should contain 'Revert credits & points with original expiry date. (Note: Order with expired credits or points will not be reverted.)'
    And I scroll down to update button
    And I click on update button
    Then I should be redirected to Dashboard Page

    When I switch to 1 of tabs
    Then I should be redirected to Payment Create Page
    Then I Refresh
    When I select payment type dropdown option included 'Bank Transfer' of payment type dropdown
    And I fill instruction to payment instructions field
    When I click on language tab included 'English'
    And I fill "(dirty data) Bank Transfer cancel order" to name field
    Then cancel order info should contain 'Customers can cancel orders using this payment method in storefront. You can check the cancel reasons in order detail.'
    Then cancel order info should contain 'Please note: This function will not be available if the "Cancel Order By Customer" function in Settings > Order Settings is turned off.'
    Then I should see cancel order toggle
    Then I click on cancel order toggle
    When I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Payment Setting Page
    And 1st row of payment method list should contain "Bank Transfer cancel order"

    Given I am on Payment Create Page
    Then I should see name field
    When I select payment type dropdown option included 'Taishin' of payment type dropdown
    And I fill Taishin Merchant ID to id field
    And I fill Taishin TID to tid field
    When I click on language tab included 'English'
    And I fill "(dirty data) Taishin pay cancel order" to name field
    Then I should see cancel order toggle
    Then I click on cancel order toggle
    Then I click on cancel order faq
    Then I should see faq hint
    When I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Payment Setting Page
    Then 1st row of payment method list should contain 'Taishin pay cancel order'

    Given I am on Payment Create Page
    When I select payment type dropdown option included 'Custom' of payment type dropdown
    When I click on language tab included 'English'
    And I fill "(dirty data) Custom order cancel" to name field
    Then I should see cancel order toggle
    Then I click on cancel order toggle
    And I fill instruction to payment instructions field
    When I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Payment Setting Page
    And 1st row of payment method list should contain "Custom order cancel"

    Given I am on Payment Create Page
    When I select payment type dropdown option included 'Cash on Delivery' of payment type dropdown
    When I click on language tab included 'English'
    And I fill "(dirty data) Cash order cancel" to name field
    Then I should see cancel order toggle
    Then I click on cancel order toggle
    And I fill instruction to payment instructions field
    When I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Payment Setting Page
    And 1st row of payment method list should contain "Cash order cancel"

    Given I am on Payment Create Page
    When I select payment type dropdown option included 'Cash on Delivery' of payment type dropdown
    Then I should see setting hyperlink
    Then setting hyperlink should contain 'Settings > Order Settings'
    Then I click on setting hyperlink

    Then I should be redirected to Order Setting Page
    Then I should see cancel order toggle
    Then I should see cancel order toggle on
    Then I should see auto cancel order checkbox
    And I click on cancel order toggle
    Then I should see cancel order toggle off
    Then I should not see auto cancel order checkbox
    And I click on update button
    Then I should be redirected to Dashboard Page

    Given I am on Payment Setting Page
    When I click edit button of payment method list for the same order of row of payment method list included "Cash order cancel"
    Then I should be redirected to Payment Edit Page
    Then I should not see cancel order toggle
    When I click on update button
    Then I should be redirected to Payment Setting Page

    Given I am on Order Setting Page
    Then I click on payment hyperlink
    Then I should be redirected to Payment Setting Page

    And ---ROLL BACK---
    When I click on 4th delete button of payment method list
    And I click on delete checkbox
     And I click on confirm delete button
    When I click on 3rd delete button of payment method list
    And I click on delete checkbox
    And I click on confirm delete button
    When I click on 2nd delete button of payment method list
    And I click on delete checkbox
    And I click on confirm delete button
    When I click on 1st delete button of payment method list
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain 'Bank Transfer cancel order'
    Then table should not contain "Taishin pay cancel order"
    Then table should not contain "Custom order cancel"
    Then table should not contain "Cash order cancel"