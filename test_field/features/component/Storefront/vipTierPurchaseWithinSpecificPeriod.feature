@BaseCase @Admin @Storefront @Checkout @vipTierPurchaseWithinSpecificPeriod
@fixture-payment @fixture-delivery @fixture-product @fixture-shop
Feature: membership tier purchase within specific period and check half target
  As a merchant
  I want to my employee and customer can see the reminder of membership tier
  So that They discuss of membership issue more smoothly

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

    Given I am on Shop Sign Up Page
    When I fill new account email to email field
    And I fill new account password to password field
    And I fill name to name field
    And I click on agree terms checkbox
    When I click on submit button
    Then I should be redirected to Shop Home Page

    Given I am on Membership Tier Setting Page
    When I click on add button
    Then I should be redirected to Membership Tier New Page
    When I fill "(dirty data) silver vip" to membership tier name field
    And I select membership upgrade condition option included "Purchase within specific period" of membership upgrade condition select button
    And I fill "6" to membership upgrade period field
    And I fill "50" to membership upgrade rules field
    And I fill "20" to member offer field
    And I click on set valid period radio checkbox
    And I fill "6" to membership valid period field
    And I select membership upgrade condition option included "Purchase within specific period" of membership extension condition select button
    Then specific period within field should contain "6"
    And I fill "30" to membership extension total spend field
    And I scroll down to id
    And I click on submit button
    Then I should be redirected to Membership Tier Setting Page
    Then I should see 1 row of membership list

    Given I am on Membership Tier Setting Page
    When I click on add button
    Then I should be redirected to Membership Tier New Page
    When I fill "(dirty data) golden vip" to membership tier name field
    And I select membership upgrade condition option included "Purchase within specific period" of membership upgrade condition select button
    And I fill "6" to membership upgrade period field
    And I fill "100" to membership upgrade rules field
    And I fill "50" to member offer field
    And I click on set valid period radio checkbox
    And I fill "6" to membership valid period field
    And I select membership upgrade condition option included "Purchase within specific period" of membership extension condition select button
    Then specific period within field should contain "6"
    And I fill "50" to membership extension total spend field
    And I scroll down to id
    And I click on submit button
    Then I should be redirected to Membership Tier Setting Page
    Then I should see 2 row of membership list
    # 下面這段必須用owner帳號執行
    When I check and click member tier active button
    And I check and click active popup confirm button
    And I check and click exclude old order checkbox
    And I check and click active popup next button
    And I check and click popup confirm button


    Given I am on Customer Settings Page
    Then I should see membership upgrade reminder toggle
    When I check and click membership upgrade reminder toggle off
    And I click on update button
    Then membership upgrade reminder toggle should be checked

    Given I am on Customer List Page
    When I input new account email to search field
    Then customer row should contain new account email
    When I click on view button
    Then I should be redirected to Customer Detail Page
    When I click on membership tier settings update button
    Then I should see membership tier dropdown
    When I select membership tier dropdown option included "silver vip" of membership tier dropdown
    And I should see popover
    And I click on popover confirm button
    Then membership tier settings label should contain "silver vip"
    Then membership eligible to upgrade should contain 'NT$100 more to upgrade'
    Then membership expiry date should contain six months expiry date

  @EAT-954 @EAT-954-2
  Scenario: membership tier purchase within specific period and check half target
    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    Then I should see membership level
    Then membership level should contain 'silver vip'
    Then 1st row of membership detail list should contain six month membership expiry date
    Then 2nd row of membership detail list should contain 'Membership Offer 20% off'
    Then 3rd row of membership detail list should contain 'Upgrade to (dirty data) golden vip , get 50% off Upgrade with total purchase over NT$100 within 6 month(s).'
    Then 4th row of membership detail list should contain 'Extension Condition Total purchase over NT$30 within membership valid period 6 months.'
    Then membership next level detail should contain 'NT$100 more to upgrade'
    Then membership next level detail should contain 'Upgrade condition will be checked during midnight. Membership upgrade will not be effective if order has been cancelled/refunded.'
    Given I am on Shop Product Index Page
    When I input "4th Product for Checkout" to search field
    Then 1st product of products list should contain '4th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill "5" to product quantity field
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 3 seconds for loading
    Then promotion description should contain 'Get 20% off on Entire Order'
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page

    Given I am on Orders Page
    When I click on 1st row of order checkbox
    And I select Update Status of bulk actions dropdown
    And I select status dropdown option included 'Payment Status' of status type dropdown
    And I select status dropdown option included 'Paid' of status item dropdown
    And I click on update button
    Then I should see confirm popover
    When I click on send notification checkbox
    And I click on OK button

    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    Then I should see membership level
    Then membership level should contain 'silver vip'
    Then 1st row of membership detail list should contain six month membership expiry date
    Then 2nd row of membership detail list should contain 'Membership Offer 20% off'
    Then 3rd row of membership detail list should contain 'Upgrade to (dirty data) golden vip , get 50% off Upgrade with total purchase over NT$100 within 6 month(s).'
    Then 4th row of membership detail list should contain 'Extension Condition Total purchase over NT$30 within membership valid period 6 months.'
    Then membership next level detail should contain 'NT$50 more to upgrade'
    Then membership next level detail should contain 'Upgrade condition will be checked during midnight. Membership upgrade will not be effective if order has been cancelled/refunded.'

    Given I am on Customer List Page
    When I input new account email to search field
    Then customer row should contain new account email
    When I click on view button
    Then I should be redirected to Customer Detail Page
    Then membership tier settings label should contain "silver vip"
    Then membership eligible to upgrade should contain 'NT$50 more to upgrade'
    Then membership expiry date should contain six months expiry date

    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    And I fill "10" to product quantity field
    And I click on product details save button
    Then I should see confirm popover
    Then I check re create receipt and click included 'Yes, please re-create the receipt based on edited order'
    And I click on YES button

    Given I am on Customer List Page
    When I input new account email to search field
    Then customer row should contain new account email
    When I click on view button
    Then I should be redirected to Customer Detail Page
    Then membership tier settings label should contain "silver vip"
    Then membership eligible to upgrade should contain 'Upgrade will be effective on midnight.'
    Then membership expiry date should contain six months expiry date
    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    Then I should see membership level
    Then membership level should contain 'silver vip'
    Then 1st row of membership detail list should contain six month membership expiry date
    Then 2nd row of membership detail list should contain 'Membership Offer 20% off'
    Then 3rd row of membership detail list should contain 'Upgrade to (dirty data) golden vip , get 50% off Upgrade with total purchase over NT$100 within 6 month(s).'
    Then 4th row of membership detail list should contain 'Extension Condition Total purchase over NT$30 within membership valid period 6 months.'
    Then membership next level detail should contain 'Congrats! upgrade will be effective on midnight.'
    Then membership next level detail should contain 'Upgrade condition will be checked during midnight. Membership upgrade will not be effective if order has been cancelled/refunded.'
    And ---ROLL BACK---
    Given I am on Customer List Page
    Then 1st customer row should contain new account email
    When I click on customer checkbox
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button
    Then I wait for 3 seconds for loading
    Given I am on Membership Tier Setting Page
    Then I should see dropdown button
    When I select dropdown option included "Delete" of dropdown button
    And I should see confirmation popup window
    And I click on delete button
    And I Refresh
    Then membership table should not contain "silver vip"
    When I select dropdown option included "Delete" of dropdown button
    And I should see confirmation popup window
    And I click on delete button
    Then membership table should contain "No membership tiers"
    Given I am on Customer Settings Page
    When I click on membership upgrade reminder toggle
    And I click on update button
    Then membership upgrade reminder toggle should not be checked