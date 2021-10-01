@BaseCase2 @Admin @Storefront @OrderExport @Order @orderInvoicePrivateInfoHandle
@fixture-shop @fixture-product @fixture-payment @fixture-delivery
Feature: Order Invoice Private Info Handle
  As a Merchant
  I can turn on hide information of order invoice toggle toggle to hide the customer info

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
    Given I am on Basic Setting Page
    And I mark the value of shop name field as variable shop name

  @EAT-1257
  Scenario: Order Invoice Private Info Handle
    Given I am on Customer Settings Page
    And I click on gender checkout include
    And I click on birthday checkout include
    And I click on add button
    And I fill 'custom customer info field' to Field Name field
    And I click on update button
    Then I should be redirected to Customer Settings Page

    Given I am on Order Setting Page
    When I check and click hide information of order invoice toggle off
    Then I scroll down to hide information of order invoice toggle on
    Then I should see hide information of order invoice custom checkbox
    And I click on hide information of order invoice custom checkbox
    Then hide information of order invoice custom checkbox should be checked
    And I click on add field button
    And I fill 'custom order field' to custome name field
    And I fill 'custome hint field' to custome hint field
    And I click on update button
    Then I should be redirected to Dashboard Page

    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    And I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Local Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I check contact number field and fill phone
    And I check and click save number checkbox
    And I select gender dropdown option included 'Male' of gender dropdown
    And I fill '1996/03/09' to birthday field
    And I fill 'custom customer' to custom customer field
    And I fill 'custom order' to customer field
    And I click on same as checkbox
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill address to delivery address field
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order checkbox
    When I select export dropdown option included 'Export Order Invoice' of export dropdown
    Then I should see export popover
    When I click on selected orders checkbox
    And I click on export button
    Then I should see export alert
    Then I wait for 20 seconds for mail sent
    Given I am on Google Mail Page
    Then I should see account field
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    And I should see search field
    When I input shop name to search field
    Then I wait for 5 seconds for loading
    Then I should see row of mail list
    When I click on row of mail list included "Download Order Invoice"
    When I click on download button
    And I switch to 2 of tabs
    And I should be redirected to Report Pdf Page
    Then pdf should contain "ORDER CUSTOMER:陳**"
    Then pdf should contain "EMAIL:t*******@shoplineapp.com"
    Then pdf should contain "0912***678"
    Then pdf should contain "GENDER:*"
    Then pdf should contain "BIRTHDAY:************"
    Then pdf should contain "CUSTOMER INFOFIELD:FIELD:***************"
    Then pdf should contain "14F., No.44, Ln. 11, GuangfuN. Rd."
    Then pdf should contain "RECIPIENT NAME:陳**"
    Then pdf should contain "CUSTOM ORDERFIELDFIELD************"
    Then pdf should contain "RECIPIENT PHONE:0912***678"

    And ---ROLL BACK---
    Given I am on Customer Settings Page
    When I click on gender checkout include
    When I click on birthday checkout include
    And I click on delete custom button
    And I click on OK button
    When I click on update button
    And gender checkout include should not be checked
    And birthday checkout include should not be checked

    Given I am on Order Setting Page
    And I click on hide information of order invoice custom checkbox
    Then hide information of order invoice custom checkbox should not be checked
    When I click on hide information of order invoice toggle on
    And I click on delete field button
    And I click on update button
    Then I should be redirected to Dashboard Page