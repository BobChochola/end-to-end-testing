@BaseCase @Admin @Storefront @CRM @Checkout @checkCustomerOrderCount
@fixture-delivery @fixture-payment @fixture-shop @fixture-product @EAT-502

Feature: Customer List - Order Count/ Total Spend should be the same logic
  As a merchant
  I can see Customer Order Count

  Background:
    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    And I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    Given I am on Shop Product Index Page
    When I input "3rd Product for Checkout" to search field
    Then 1st product of products list should contain "3rd Product for Checkout"
    And I click on 1st product of products list
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
    And I fill name to name field
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info

  @EAT-502-1
  Scenario: Customer List - Order Count/ Total Spend should be the same logic by delete
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
    And I mark the value of row of customer order count as variable order count
    Given I am on Orders Page
    And I input email to search field
    Then 1st row of order links should contain order number
    When I click on 1st row of order checkbox
    Then I should see bulk actions dropdown
    When I select Delete of bulk actions dropdown
    And I should see confirm popover
    And I click on confirm checkbox
    When I click on OK button
    Then I should not see confirm popover
    Then I wait for 10 seconds for loading
    Given I am on Customer List Page
    When I input email to search field
    Then 1st customer row should contain email
    Then 1st row of customer order count should contain order result count

  @EAT-502-2
  Scenario: Customer List - Order Count/ Total Spend should be the same logic by cancle
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
    And I mark the value of row of customer order count as variable order count
    Given I am on Orders Page
    And I input email to search field
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I select Cancelled of order status dropdown
    Then I should see YES button
    And I click on YES button
    Then I should not see YES button
    Then order status should equal to 'Cancelled'
    Then I wait for 10 seconds for loading
    Given I am on Customer List Page
    When I input email to search field
    Then 1st customer row should contain email
    Then 1st row of customer order count should contain order result count