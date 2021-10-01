@BaseCase2 @Admin @Order @OrderDelivery @orderDeliveryRemarkCheck
@fixture-delivery @fixture-product @EAT-472
Feature: Delivery remark and check packing slip
  As a merchant
  I want to comment on delivery remark
  So that I can see delivery remark on packing slip

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

  Scenario: Delivery remark and check packing slip
    Given I am on Basic Setting Page
    When I mark the value of shop name field as variable shop name
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I should see comments tab
    When I click on comments tab included 'Delivery Remark'
    Then I check and click delivery comment delete button
    Then I should see comments field
    When I fill delivery remark description 256 character to comments field
    Then delivery comment hint should contain 'Delivery remarks will show on the packing slip.256 / 255'
    When I click on delivery comment submit button
    Then delivery comment error should contain 'Delivery Remark is too long'
    When I fill 'ABCDE' to comments field
    Then delivery comment hint should contain 'Delivery remarks will show on the packing slip.5 / 255'
    And I click on delivery comment submit button
    Then I should see delivery comment delete button
    Then 1st row of order activities logs should contain 'Add Delivery Remark'
    Given I am on Orders Page
    When I click on 1st row of order checkbox
    When I select export dropdown option included "Packing Slip" of export dropdown
    Then I should see export popover
    And I should see export button
    When I click on export button
    Then I should see export alert
    Then I wait for 60 seconds for mail sent
    Given I am on Google Mail Page
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    And I should see search field
    When I input shop name to search field
    Then I should see search mail list
    Then search mail list should contain "Download Packing Slip"
    When I click on row of mail list included "Download Packing Slip"
    Then I should see mail detail
    When I click on download button
    And I switch to 2 of tabs
    And I should be redirected to Report Pdf Page
    Then pdf should contain 'DELIVERY REMARK: ABCDE'
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I should see comments tab
    When I click on comments tab included 'Delivery Remark'
    When I should see delivery comment delete button
    And I click on delivery comment submit button
    Then I should see comments field
    Then I should see delivery comment submit button
    When I fill 'TEST EDIT' to comments field
    Then delivery comment hint should contain 'Delivery remarks will show on the packing slip.9 / 255'
    And I click on delivery comment submit button
    Then I should see delivery comment delete button
    Then 1st row of order activities logs should contain 'Edit Delivery Remark'
    Given I am on Orders Page
    When I click on 1st row of order checkbox
    When I select export dropdown option included "Packing Slip" of export dropdown
    Then I should see export popover
    And I should see export button
    When I click on export button
    Then I should see export alert
    Then I wait for 60 seconds for mail sent
    Given I am on Google Mail Page
    When I input shop name to search field
    Then I should see search mail list
    Then search mail list should contain "Download Packing Slip"
    When I click on row of mail list included "Download Packing Slip"
    Then I should see mail detail
    When I click on download button
    And I switch to 3 of tabs
    And I should be redirected to Report Pdf Page
    Then pdf should contain 'DELIVERY REMARK: TEST EDIT'
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I should see comments tab
    When I click on comments tab included 'Delivery Remark'
    When I should see delivery comment delete button
    When I click on delivery comment delete button
    Then I should see comments field
    Then I should see delivery comment submit button
    Then 1st row of order activities logs should contain 'Delete Delivery Remark'
    Given I am on Orders Page
    When I click on 1st row of order checkbox
    When I select export dropdown option included "Packing Slip" of export dropdown
    Then I should see export popover
    And I should see export button
    When I click on export button
    Then I should see export alert
    Then I wait for 20 seconds for mail sent
    Given I am on Google Mail Page
    When I input shop name to search field
    Then I should see search mail list
    Then search mail list should contain "Download Packing Slip"
    When I click on row of mail list included "Download Packing Slip"
    Then I should see mail detail
    When I click on download button
    And I switch to 4 of tabs
    And I should be redirected to Report Pdf Page
    Then pdf should not contain 'DELIVERY REMARK: ABCDE'
    Then pdf should not contain 'DELIVERY REMARK: TEST EDIT'