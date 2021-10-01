@BaseCase2 @Storefront @Admin @Order @Search @orderFiltersReturnedExportPackingSlip
@fixture-shop @fixture-product @fixture-payment @fixture-delivery
Feature: Check order delivery status filters
  As a merchant
  I want to check filter delivery status

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

    Given I am on Shop Product Index Page
    When I input "2nd Product for Checkout" to search field
    Then 1st product of products list should contain '2nd Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Given I am on Basic Setting Page
    And I mark the value of shop name field as variable shop name

  @C8252 @C8252-5
  Scenario: Add date filter(Returned) and status filter then export the packing slip
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    And I select Returned of delivery status dropdown
    Then I should see confirm popover
    And I click on YES button
    Then delivery status should equal to "Returned"
    Given I am on Orders Page
    Then I should see row of order links
    When I click on additional filters button
    Then I should see additional filters section
    And I select filter dropdown option included "Delivery Status" of filter dropdown
    And I select delivery status filter dropdown option included "Returned" of delivery status filter dropdown
    Then 1st search label should contain "Delivery Status is Returned"
    Then I should see row of order links
    Then I should not see loading icon
    Then 1st row of delivery status should equal to "Returned"
    When I click on 1st row of order checkbox
    Then I select export dropdown option included "Packing Slip" of export dropdown
    Then I should see export popover
    And I click on selected orders checkbox
    And I should see export button
    When I click on export button
    Then I should see export alert
    Then I wait for 180 seconds for mail sent
    Given I am on Google Mail Page
    Then I should see account field
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    Then I should see search mail list
    Then search mail list should contain "Download Packing Slip"
    When I click on row of mail list included "Download Packing Slip"
    Then I should see mail detail
    When I click on download button
    And I switch to 2 of tabs
    And I should be redirected to Report Pdf Page
    Then I should see mail packing slip