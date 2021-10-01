@BaseCase @Admin @Storefront @Order @OrderEdit @Invoice @orderCheckInvoiceWords @EAT-479
@fixture-shop @fixture-product @fixture-payment @fixture-delivery @premiumFeature
Feature: Detect to show re-invoice reminder
  As a merchant
  I can see the re-invoice reminder after order edit

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

    Given I am on Order Setting Page
    When I check and click invoice toggle off
    And I should see Nat No field
    And I fill Nat No to Nat No field
    And I select Donation Recipient of Donation Recipient dropdown
    And I fill 'SLINE02' to website code field
    And I fill '4DDC6C4EE' to api password field
    And I select tax type dropdown option included 'Taxable' of tax type dropdown
    Then I should see update button
    And I click on update button
    Then I should be redirected to Dashboard Page

    Given I am on Shop Product Index Page
    When I input "2nd Product for Checkout" to search field
    Then 1st product of products list should contain '2nd Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill "2" to product quantity field
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
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill address to delivery address field
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page

  Scenario: Detect to show re-invoice reminder
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    When I fill '3' to product quantity field
    When I click on product details save button
    Then I should see confirm popover
    Then confirm description should contain 'If the receipt has not been created, it will be automatically created with edited details later'
    When I click on cancel button
    And I select ZH of language dropdown
    And I click on product details save button
    Then I should see confirm popover
    Then confirm description should contain '請放心，尚未開立發票的訂單將稍後自動依照更新後訂單內容開立發票'
    When I click on yes button
    Then I should see alert
    Then total should contain "NT$13"
    Then ---ROLL BACK---
    Given I am on Order Setting Page
    When I click on invoice toggle
    And I click on update button
    Then I should be redirected to Dashboard Page
