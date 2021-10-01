@PostTest @PreTest @BaseCase @Admin @Order @Search @orderStatusBulkChange
@fixture-shop @fixture-delivery @fixture-payment @fixture-product
Feature: Bulk change Order Status
  As a merchant
  I want to bulk change Order Status

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
    When I input "4th Product for Checkout" to search field
    Then 1st product of products list should contain '4th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 3 seconds for loading
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

  @C3764 @C3764-12
  Scenario: Bulk change Order Status
    Given I am on Basic Setting Page
    When I mark the value of shop name field as variable shop name
    Given I am on Orders Page
    Then I should see select all checkbox
    When I click on select all checkbox
    And I should see bulk actions dropdown
    And I select Update Status of bulk actions dropdown
    And I select status dropdown option included 'Order Status' of status type dropdown
    And I select status dropdown option included 'Confirmed' of status item dropdown
    And I click on update button
    Then I should see confirm popover
    When I click on send notification checkbox
    And I click on OK button
    Then I should see row of order status
    Then I should see update button
    Then I should not see loading icon
    Then 1st row of order status should equal to "Confirmed"
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
    Then search mail list should contain "Order status is updated to: Confirmed"