@BaseCase @Admin @Order @OrderExport @Search @Job @orderCustomizeDeleteOptionExport
@fixture-shop @fixture-delivery @fixture-payment @fixture-product
Feature: Order Customize Report Export Check Phase
  As a merchant
  I want to control which I need to export

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

  @C4371
  Scenario: Choose options to export Customize order report
    Given I am on Orders Page
    When I select export dropdown option included "Order Report" of export dropdown
    Then I should see export popover
    And I click on reset button
    When I click on Option checkbox included "Field"
    And I click on Option checkbox included "Order Subtotal"
    And I click on Option checkbox included "Tracking "
    And I click on Option checkbox included "Invoice Type"
    And I click on Option checkbox included "Invoice Number"
    And I click on Option checkbox included "Preorder Product Note"
    And I click on Option checkbox included "Customer"
    Then I should see The Last Fields selected
    Then The Last Fields selected should contain "Customer"
    When I click on reset button
    And I click on Option cancel button
    And I click on Option cancel button
    And I click on Option cancel button
    And I click on Option cancel button
    And I click on Option cancel button
    And I click on Option cancel button
    And I click on Option cancel button
    And I click on Option cancel button
    And I click on Option cancel button
    And I click on Option cancel button
    And I click on Option cancel button
    And I click on Option cancel button
    And I should see export button
    And I click on export button
    Then I wait for 200 seconds for mail sent
    Given I am on Google Mail Page
    Then I should see account field
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    And I should see search field
    And I input shop name to search field
    Then I should see search mail list
    Then search mail list should contain "Download Order Report"