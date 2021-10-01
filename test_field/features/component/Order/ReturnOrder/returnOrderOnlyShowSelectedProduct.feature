@BaseCase @Admin @Storefront @Order @ReturnOrder @returnOrderOnlyShowSelectedProduct @fixture-shop @fixture-product @fixture-payment @fixture-delivery
Feature: Check return order search should only show selected products
  As a PM of shopline
  I want return order only show returned products

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

  @EAT-737 @EAT-819 @EAT-819-3
  Scenario: Check return order search should show only selected products
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on close cart panel area
    When I input "7th Product for Checkout" to search field
    Then I should be redirected to Shop Product Index Page
    Then 1st product of products list should contain '7th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I select dropdown option included "Red" of variation dropdown
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
    When I input order number to search field
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then 1st row of product detail should contain '1st Product for Checkout'
    Then 2nd row of product detail should contain '7th Product for Checkout'
    And I should see view return button
    Then I click on view return button
    Then I should be redirected to Place Return Order Page
    Then 1st row of product list should contain '1st Product for Checkout'
    Then 2nd row of product list should contain '7th Product for Checkout'
    When I click on 1st row of product checkbox
    And I select return delivery dropdown option included '7-11 Return Only (C2B)' of return delivery dropdown
    Then I should see recipient name field
    Then I should see recipient phone field
    Then recipient name field should contain name
    Then recipient phone field should contain phone
    And I fill name to recipient name field
    And I fill phone to recipient phone field
    And I select return payment dropdown option included 'No Pay on 7-11 Return (C2B)' of return payment dropdown
    And I click on place return button
    Then I should see popover
    And I click on OK button
    Then I should be redirected to Return Orders Show Page
    Then product details should contain '1st Product for Checkout'
    Then product details should not contain '7th Product for Checkout'
    Then return type should contain '7-11 Return Only'
    Then return name should contain name
    Then return phone should contain phone
    When I click on delivery details edit button
    Then I should see return name field
    Then I should see return phone field
    Then I should not see return address field
    Then I should not see return address dropdown
    Then I should not see return city field
    Then I fill 'name' to return name field
    When I click on delivery details save button
    Then I should see popover
    Then I click on yes button
    Then I should see alert
    Then return name should contain 'name'