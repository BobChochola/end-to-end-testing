@BaseCase2 @Admin @Storefront @Order @OrderEdit @orderReassignment @fixture-shop @fixture-product @fixture-payment @fixture-delivery
Feature: Add feature Order reassignment into basic testcase
  As a merchant
  I can reassign the order
  So that I can check the change of the order

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

    Given I am on Customer List Page
    When I input email to search field
    Then 1st customer row should contain email
    When I mark the value of 1st row of user name as variable reassign name

  @EAT-632
  Scenario: reassign order and check the change of the order
    Given I am on Shop Home Page
    When I click on sign in button
    Then I should be redirected to Shop Login Page
    When I click on switch to signup tab button
    When I fill qa email to signup email field
    And I fill password to signup password field
    And I fill 'shoplineqa' to signup name field
    And I click on agree terms checkbox
    And I click on signup submit button
    Then I should be redirected to Sign Up Confirmation Page
    Then I should be redirected to Shop Home Page

    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Local Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I fill address to delivery address field
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I click on reassign order button
    And I should see select reassign popover
    And I input email to customer search field
    And I click on customer checkbox
    And I click on popup ok button
    And I wait for 3 seconds for loading
    And I should see confirm popover
    And I click on popup ok button
    Then I should see alert
    Then alert should contain 'Notification email sent!'
    Then customer name should contain qa name
    Then customer email should contain qa email
    Then order account details should contain reassign name
    Then order account details should contain email
    When I click on order invoice button
    When I switch to 2 of tabs
    Then I should be redirected to Report Pdf Page
    Then I should see order invoice

    Given I am on Customer List Page
    When I input qa email to search field
    And I click view button for the same order of customer row included 'shoplineqa@gmail.com'
    Then I should be redirected to Customer Detail Page
    Then placed orders should not contain order number
    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on tab included 'Orders'
    Then I should be redirected to Shop Orders Page
    Then order result should not contain order number

    Given I am on Customer List Page
    When I input email to search field
    And I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    Then row of order should contain order number
    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on logout button
    Then I should be redirected to Shop Home Page
    When I click on sign in button
    Then I should be redirected to Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on tab included 'Orders'
    Then I should be redirected to Shop Orders Page
    Then row of order should contain order number

    Given I am on Google Mail Page
    When I fill account email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input order number to search field
    Then I should see row of mail list
    When I click on row of mail list included "Order is reassigned successfully"
    Then I should see mail detail
    Then mail detail should contain email
    Then mail detail should contain qa email
    And ---ROLL BACK---
    Given I am on Customer List Page
    When I input qa email to search field
    And I click on customer checkbox
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button