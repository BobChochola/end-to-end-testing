@BaseCase @Admin @Storefront @Order @ReturnOrder @Search @returnOrderSearch
@fixture-shop @fixture-product @fixture-payment @fixture-delivery
Feature: Return order search
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

  @C4080 @C4080-1
  Scenario: Return order search
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
    Then I mark the value of order confirm info as variable order info

    Given I am on Orders Page
    Then 1st row of order links should contain order number
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
    Then I mark the value of return order no as variable return order info

    Given I am on Return Orders Page
    When I input return order number to search field
    Then row of order links should equal to return order number
    When I input customer name to search field
    Then I should see row of return orders
    Then 1st row of customer name should contain '陳小明'
    When I input customer email to search field
    Then I should see row of return orders
    Then 1st row of customer email should contain 'testuser@shoplineapp.com'
    When I input customer phone to search field
    Then I should see row of return orders
    When I click on 1st row of view original order button

  # @C4080 @C4080-2
  # Scenario: Return order search by product
  #   Given I am on Shop Product Index Page
  #   When I input "1st Product for Checkout" to search field
  #   Then 1st product of products list should contain '1st Product for Checkout'
  #   When I click on 1st product of products list
  #   Then I should be redirected to Shop Product Show Page
  #   And I click on add to cart button
  #   Then I should see cart panel
  #   When I click on checkout button
  #   Then I should be redirected to Shop Cart Page
  #   And I select country dropdown option included "Taiwan" of country list dropdown
  #   And I wait for 5 seconds for loading
  #   And I select delivery dropdown option included "Local Delivery" of delivery method dropdown
  #   And I wait for 5 seconds for loading
  #   And I select payment dropdown option included "Custom" of payment method dropdown
  #   And I wait for 5 seconds for loading
  #   And I click on proceed to checkout button
  #   Then I should be redirected to Shop Checkout Page
  #   When I fill name to name field
  #   And I fill email to email address field
  #   And I fill phone to contact number field
  #   And I click on same as checkbox
  #   And I fill address to delivery address field
  #   And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
  #   And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
  #   And I click on agree terms checkbox
  #   And I click on accept marketing checkbox
  #   And I click on place order button
  #   Then I should be redirected to Shop Order Confirm Page
  #   Then I mark the value of order confirm info as variable order info

  #   Given I am on Orders Page
  #   When I click on 1st row of order links
  #   Then I should be redirected to Orders Show Page
  #   Then I should see view return button
  #   When I click on view return button
  #   Then I should be redirected to Place Return Order Page
  #   When I click on row of product checkbox
  #   And I select return delivery dropdown option included '7-11 Return Only (C2B)' of return delivery dropdown
  #   And I fill name to recipient name field
  #   And I fill phone to recipient phone field
  #   And I select return payment dropdown option included 'No Pay on 7-11 Return (C2B)' of return payment dropdown
  #   When I click on place return button
  #   Then I should see popover
  #   When I click on OK button
  #   Then I should be redirected to Return Orders Show Page

  #   Given I am on Return Orders Page
  #   When I input "1st Product for Checkout" to search field
  #   Then I should see row of return orders
  #   When I click on 1st row of order links
  #   Then I should be redirected to Return Orders Show Page
  #   Then product details should contain "1st Product for Checkout"