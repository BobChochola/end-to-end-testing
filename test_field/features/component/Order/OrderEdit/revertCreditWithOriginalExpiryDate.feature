@BaseCase @Admin @Storefront @Order @OrderEdit @revertCreditWithOriginalExpiryDate @fixture-product @fixture-delivery @fixture-payment @fixture-shop
Feature: in order details, update order status to cancelled. check revert credit
  As a merchant
  update order status to cancelled. check revert credit

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
    And I check and click auto cancel toggle off
    Then auto cancel toggle should be checked
    And I click on auto cancel manually revert checkbox
    And I click on update button
    Then I should be redirected to Dashboard Page

    Given I am on Customer List Page
    Then I input 'testuser@shoplineapp.com' to search field
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    And I click on assign credits button
    And I fill "10" to amount of credit field
    And I fill "1" to validity period field
    And I fill "Testing amount of credits" to reason field
    And I click on credit save button
    Then I should see row of credit list
    Then 1st row of credit movement should contain "+ 10"
    Then 1st row of credit list should contain "Testing amount of credits"

    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'

    Given I am on Shop Product Index Page
    When I input "4th Product for Checkout" to search field
    Then 1st product of products list should contain '4th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain "4th Product for Checkout"
    And I click on add to cart button
    Then I should see cart panel
    And I click on checkout button

    Then I should be on Shop Cart Page
    Then applied store credits should contain "-NT$10 credits"
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Local Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Cash on Delivery" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button

    Then I should be on Shop Checkout Page
    And I fill "0912345678" to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill address to delivery address field
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info

  @EAT-946 @EAT-946-1
  Scenario: Check credit revert is enable.(click without revert credit checkbox & click revert credit with Never expires)
    Given I am on Orders Page
    Then I input order number to search field
    Then 1st row of order links should contain order number
    And I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    And I select Cancelled of order status dropdown
    Then I should see revert credit popover
    And I click on revert credit checkbox included 'Do not revert credits'
    And I click on YES button
    And I click on OK button
    Then credit revert status should contain "Not Reverted"

    And I click on order status dropdown
    And I click on Open
    And I click on YES button

    And I click on order status dropdown
    And I click on Cancelled
    Then I should see revert credit popover
    And I click on revert credit checkbox included 'Revert credits with original expiry date'
    And I click on extend credit expires button
    And I click on never expires checkbox
    And I click on YES button
    And I click on OK button
    Then I Refresh
    Then credit revert status should contain "Reverted"
    Then 1st row of order activities logs should contain "Cancelled"
    And I click on customer detail link
    Then I should be redirected to Customer Detail Page
    Then 1st row of credit list should contain "Credits reverted from cancelled order"
    Then 1st row of credit movement should contain "+ 10"
    Then 1st row of credit expiry date should contain "Never Expires"
    Then 1st row of credit balance should contain '10'

    And ---ROLL BACK---
    Given I am on Order Setting Page
    When I check and click auto cancel toggle on
    Then auto cancel toggle should not be checked
    And I click on update button
    Given I am on Customer List Page
    Then I input 'testuser@shoplineapp.com' to search field
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    And I click on assign credits button
    And I fill "-10" to amount of credit field
    And I fill "Testing amount of credits" to reason field
    And I click on credit save button
    Then I should see row of credit list
    Then 1st row of credit list should contain "Testing amount of credits"
    Then 1st row of credit movement should contain "- 10"
    Then 1st row of credit expiry date should contain '-'
    Then 1st row of credit balance should contain '0'

  @EAT-946 @EAT-946-2
  Scenario: Check credit revert is enable.(click revert credit with expend expires)
    Given I am on Orders Page
    Then I input order number to search field
    Then 1st row of order links should contain order number
    And I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    And I select Cancelled of order status dropdown
    Then I should see revert credit popover
    And I click on revert credit checkbox included 'Revert credits with original expiry date'
    And I click on extend credit expires button
    And I fill "1" to extend days field
    And I click on YES button
    And I click on OK button
    Then I Refresh
    Then credit revert status should contain "Reverted"
    Then 1st row of order activities logs should contain "Cancelled"
    And I click on customer detail link
    Then I should be redirected to Customer Detail Page
    Then I scroll down to 1st row of credit list
    Then 1st row of credit list should contain "Credits reverted from cancelled order"
    Then 1st row of credit movement should contain "+ 10"
    Then 1st row of credit expiry date should contain dateTomorrow with hyphen
    Then 1st row of credit balance should contain '10'

    And ---ROLL BACK---
    Given I am on Order Setting Page
    And I check and click auto cancel toggle on
    Then auto cancel toggle should not be checked
    And I click on update button
    Given I am on Customer List Page
    Then I input 'testuser@shoplineapp.com' to search field
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be on Customer Detail Page
    And I click on assign credits button
    And I fill "-10" to amount of credit field
    And I fill "Testing amount of credits" to reason field
    And I click on credit save button
    Then I should see row of credit list
    Then 1st row of credit list should contain "Testing amount of credits"
    Then 1st row of credit movement should contain "- 10"
    Then 1st row of credit expiry date should contain '-'
    Then 1st row of credit balance should contain '0'