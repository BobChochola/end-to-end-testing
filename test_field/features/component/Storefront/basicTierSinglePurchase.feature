@BaseCase @Admin @Storefront @Checkout @MemberTier @basicTierSinglePurchase
@fixture-payment @fixture-delivery @fixture-product @fixture-shop
Feature: membership tier single purchase and check unpaid
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

    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    And I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    Then I should see membership level
    Then membership level should contain 'Basic'

    Given I am on Membership Tier Setting Page
    When I click on add button
    Then I should be redirected to Membership Tier New Page
    When I fill "(dirty data) VVIP discount" to membership tier name field
    And I select membership upgrade condition option included "Single purchase" of membership upgrade condition select button
    And I fill "5000" to membership upgrade rules field
    And I fill "20" to member offer field
    And I scroll down to id
    And I click on submit button
    Then I should be redirected to Membership Tier Setting Page
    Then I should see row of membership list
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
    When I input email to search field
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    Then membership tier settings label should contain "Basic"
    Then membership eligible to upgrade should contain 'No single purchase over NT$5000 currently'

  @EAT-954 @EAT-954-1
  Scenario: membership tier single purchase and check unpaid
    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    Then I should see membership level
    Then membership level should contain 'Basic'
    Then 1st row of membership detail list should contain 'Upgrade to (dirty data) VVIP discount , get 20% off Upgrade with single purchase over NT$5000.'
    Then membership next level detail should contain 'No single purchase over NT$5000 currently.'
    Then membership next level detail should contain 'Upgrade condition will be checked during midnight. Membership upgrade will not be effective if order has been cancelled/refunded.'
    When I click on continue shopping link
    And I switch to 2 of tabs
    Then I should be redirected to Shop Home Page
    Given I am on Shop Product Index Page
    When I input "4th Product for Checkout" to search field
    Then 1st product of products list should contain '4th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill "500" to product quantity field
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
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill phone to contact number field
    And I click on save number checkbox
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
    Then membership level should contain 'Basic'
    Then 1st row of membership detail list should contain 'Upgrade to (dirty data) VVIP discount , get 20% off Upgrade with single purchase over NT$5000.'
    Then membership next level detail should contain 'Congrats! Membership upgrade will be effective on midnight.'
    Then membership next level detail should contain 'Upgrade condition will be checked during midnight. Membership upgrade will not be effective if order has been cancelled/refunded.'
    Given I am on Customer List Page
    When I input email to search field
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    Then membership tier settings label should contain "Basic"
    Then membership eligible to upgrade should contain 'Upgrade will be effective on midnight.'
    Given I am on Orders Page
    When I click on 1st row of order checkbox
    And I select Update Status of bulk actions dropdown
    And I select status dropdown option included 'Payment Status' of status type dropdown
    And I select status dropdown option included 'Unpaid' of status item dropdown
    And I click on update button
    Then I should see confirm popover
    When I click on send notification checkbox
    And I click on OK button

    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    Then I should see membership level
    Then membership level should contain 'Basic'
    Then 1st row of membership detail list should contain 'Upgrade to (dirty data) VVIP discount , get 20% off Upgrade with single purchase over NT$5000.'
    Then membership next level detail should contain 'No single purchase over NT$5000 currently.'
    Then membership next level detail should contain 'Upgrade condition will be checked during midnight. Membership upgrade will not be effective if order has been cancelled/refunded.'
    Given I am on Customer List Page
    When I input email to search field
    Then I should see view button
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    Then membership tier settings label should contain "Basic"
    Then membership eligible to upgrade should contain 'No single purchase over NT$5000 currently'
    And ---ROLL BACK---
    Given I am on Membership Tier Setting Page
    Then I should see dropdown button
    When I select dropdown option included "Delete" of dropdown button
    And I should see confirmation popup window
    And I click on delete button
    Then membership table should contain "No membership tiers"
    Given I am on Customer Settings Page
    When I click on membership upgrade reminder toggle
    And I click on update button
    Then membership upgrade reminder toggle should not be checked