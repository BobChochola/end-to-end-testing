@BaseCase @Admin @Order @Setting @CancelOrder @orderCancelSplitEditCheck @fixture-shop @fixture-product @fixture-payment @fixture-delivery @C17444
Feature: split the parent order when should not see order cancel button on shop orders show page
  As a user of Shopline
  I split the parent order should not see order cancel button on shop order show page

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

  @EAT-1162 @EAT-1162-7
  Scenario: split the parent order when should not see order cancel button on shop orders show page
    Given I am on Shop Product Index Page
    And I input "10th Product for Checkout" to search field
    Then 1st product of products list should contain '10th Product for Checkout'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill "2" to product quantity field
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

    When I switch to 2 of tabs
    Then I should be redirected to Orders Show Page
    When I click on split button
    Then I should be redirected to Order Split Page
    When I fill '1' to 1st row of split quantity field
    And I click on split button
    Then I should see confirm popup
    When I click on confirm button
    Then I should be redirected to Orders Page
    Then I should see alert
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then alert should contain "This order is split from (parent order):"
    
    When I switch to 1 of tabs
    Then I should be redirected to Shop Orders Show Page
    Then I Refresh
    Then I should not see order cancel button

    And I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Orders'
    Then I should be redirected to Shop Orders Page
    When I click row of order links for the same order of row of order included 'A'
    Then I should be redirected to Shop Orders Show Page
    Then I should not see order cancel button

    And I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Orders'
    Then I should be redirected to Shop Orders Page
    When I click row of order links for the same order of row of order included order number
    Then I should be redirected to Shop Orders Show Page
    Then I should not see order cancel button
    And ---ROLL BACK---
    Given I am on Payment Setting Page
    When I click edit button of payment method list for the same order of row of payment method list included 'Cash on Delivery'
    Then I should be redirected to Payment Edit Page
    And I fill "Cash on Delivery" to name field
    When I check and click cancel order toggle on
    And I click on update button
    Then I should be redirected to Payment Setting Page

    Given I am on Order Setting Page
    When I check and click cancel order toggle on
    And I scroll down to update button
    And I click on update button
    Then I should be redirected to Dashboard Page