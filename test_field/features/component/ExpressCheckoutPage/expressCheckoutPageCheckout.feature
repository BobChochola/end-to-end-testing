@BaseCase @Admin @Storefront @ExpressCheckoutPage @expressCheckoutPageCheckout @fixture-payment @fixture-delivery @fixture-product @fixture-shop

Feature: Express shop and checkout page
  As a merchant
  I want to create an express checkout page for customers
  And customers can buy item on the page and checkout it

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

  @C3859
  Scenario: Create an Express Checkout Page
    Given I am on Express Checkout Pages Page
    When I click on create button
    Then I should be redirected to Express Checkout Builder Page
    Then I should see skip the guide button
    When I click on skip the guide button
    Then I should see product picker
    When I input "4th Product for Checkout" to search field
    And I click on search button
    Then 1st product of product list should contain '4th Product for Checkout'
    And I click on 1st product of product list
    And I click on popup save button
    Then I should be on Express Checkout Builder Page
    When I click on save page button
    And I should see view page button
    And I click on view page button
    And I switch to 2 of tabs
    Then I should be on Shop Express Checkout Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "CustomDelivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 5 seconds for loading
    Then I should see buy now button
    When I click on buy now button
    Then I should be redirected to Shop Checkout Page
    When I click on cart summary
    Then I should see row of product items
    Then 1st row of product items should contain "4th Product for Checkout"
    Then total price should contain "NT$40"
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I fill "HelloTest" to remarks for shop field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I should see remarks for shop content
    When I click on summary collapse
    Then 1st row of product unit price should contain "NT$10"
    Then 1st row of product quantity should equal to "1"
    Then 1st row of product items should contain "4th Product for Checkout"
    Then delivery fee should contain "NT$30"
    Then total should contain "NT$40"
    And  ---ROLL BACK---
    Given I am on Express Checkout Pages Page
    When I click on delete button
    Then I should see popup
    And I click on reconfirm checkbox
    And I click on popup ok button
    Then I should not see delete button