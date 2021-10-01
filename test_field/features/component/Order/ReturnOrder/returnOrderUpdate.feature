@BaseCase @Admin @Storefront @Order @ReturnOrder @returnOrderUpdate @fixture-shop @fixture-product @fixture-payment @fixture-delivery
Feature: I want to go to Return Order Show Page
  As a merchant
  I want to update the return orders in Return Order Show Page

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
    And I mark the value of shop name field as variable shop name
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Bank" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    And I should see view return button
    Then I click on view return button
    Then I should be redirected to Place Return Order Page
    When I click on row of product checkbox
    And I select return delivery dropdown option included '7-11 Return Only (C2B)' of return delivery dropdown
    And I fill name to recipient name field
    And I fill phone to recipient phone field
    And I select return payment dropdown option included 'No Pay on 7-11 Return (C2B)' of return payment dropdown
    And I click on place return button
    Then I should see popover
    And I click on OK button
    Then I should be redirected to Return Orders Show Page
    Then I should see return order number label
    Then I mark the value of return order number label as variable return order info

  @C3768 @C3768-1
  Scenario: update status
    Given I am on Return Orders Page
    When I input return order number to search field
    Then 1st row of order links should contain return order number
    When I click on 1st row of order links
    Then I should be redirected to Return Orders Show Page
    When I select cancelled return of return status dropdown
    Then I should see popover
    And I click on yes button
    Then I should not see popover
    Then return status should equal to "Cancelled"
    When I input '1' to refund amount field
    And I select refunded refund of refund status dropdown
    Then I should see popover
    When I click on notification mail checkbox
    And I click on yes button
    Then I should not see popover
    Then refund status should equal to "Refunded"
    Given I am on Return Orders Page
    Then 1st row of return status should contain "Cancelled"
    Then 1st row of refund status should contain "Refunded"
    Then I wait for 200 seconds for mail sent
    Given I am on Google Mail Page
    Then I should see account field
    When I fill merchant email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    Then I should see row of mail list
    And I click on row of mail list included "Return Order Status: Cancelled Refund"
    Then mail detail should contain "Return Order Status: Cancelled"
    Then mail detail should contain "Refund Status: Refunded"
    And I should see info box button
    When I click on info box button
    Then row of info box list should not contain 'bcc'