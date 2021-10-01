@BaseCase @Admin @Storefront @Job @Order @CancelOrder @exportOrderReportCancelReason @fixture-shop @fixture-product @fixture-payment @fixture-delivery @C18279
Feature: check export order report have cancel reason type - normal reason
  As a user of Shopline
  I want check export order report default not customer cancel reason
  and report is correct

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
    Given I am on Basic Setting Page
    When I mark the value of shop name field as variable shop name

    Given I am on Order Setting Page
    When I check and click cancel order toggle off
    And I click on 2nd auto cancel order checkbox
    And I scroll down to update button
    And I click on update button
    Then I should be redirected to Dashboard Page

    Given I am on Payment Setting Page
    When I click edit button of payment method list for the same order of row of payment method list included 'Cash on Delivery'
    Then I should be redirected to Payment Edit Page
    And I fill "(rollback data) Cash on Delivery" to name field
    When I check and click cancel order toggle off
    And I click on update button
    Then I should be redirected to Payment Setting Page

  @EAT-1164 @EAT-1164-1
  Scenario: check export order report have cancel reason type - normal reason
    Given I am on Shop Product Index Page
    And I input "10th Product for Checkout" to search field
    Then 1st product of products list should contain '10th Product for Checkout'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
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
    And I select payment dropdown option included "Cash on Delivery" of payment method dropdown
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
    Then I mark the value of order confirm info as variable order info
    Then I should see check order footer
    And I click on order view hyperlink
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Orders'
    Then I should be redirected to Shop Orders Page
    When I click on 1st row of order links

    Then I should be redirected to Shop Orders Show Page
    And I click on order cancel button
    Then I should see order cancel popover
    And I select reason for cancellation dropdown option included "Change your mind" of reason for cancellation dropdown
    Then I click on confirm cancel button
    Then I wait for 5 seconds for loading
    Then I should see succeed cancel popup
    Then I click on ok button

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    And I click on 1st row of order checkbox
    When I select export dropdown option included 'Export Order Report' of export dropdown
    Then I should see export popover
    And I click on selected orders checkbox
    And I click on reset button
    When I click on Option checkbox included 'Customer Cancel Reason'
    Then The Last Fields selected should contain 'Customer Cancel Reason'
    When I click on export button
    Then I should see alert
    Then I wait for 30 seconds for mail sent

    Given I am on Google Mail Page
    Then I should see account field
    When I fill merchant email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    And I wait for 3 seconds for loading
    Then I should see row of mail list
    Then search mail list should contain "Download Order Report"
    When I click on row of mail list included "Download Order Report"
    Then I should see mail detail
    Then I wait for 10 seconds for loading
    Then downloaded file from download button should contain order number
    Then downloaded file from download button should contain "Change your mind"

    And ---ROLL BACK---
    Given I am on Payment Setting Page
    When I click edit button of payment method list for the same order of row of payment method list included 'Cash on Delivery'
    Then I should be redirected to Payment Edit Page
    And I fill "Cash on Delivery" to name field
    When I check and click cancel order toggle on
    And I click on update button
    Then I should be redirected to Payment Setting Page

    Given I am on Order Setting Page
    And I click on 1st auto cancel order checkbox
    When I check and click cancel order toggle on
    And I scroll down to update button
    And I click on update button
    Then I should be redirected to Dashboard Page

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    And I click on 1st row of order checkbox
    When I select export dropdown option included 'Export Order Report' of export dropdown
    Then I should see export popover
    And I click on selected orders checkbox
    And I click on reset button
    When I click on export button
    Then I should see alert