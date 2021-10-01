@BaseCase @Admin @Storefront @Checkout @blockBlacklistCheckout
@fixture-payment @fixture-delivery @fixture-product @fixture-shop
Feature: Block blacklist customer from checkout
  As a blacklist customer
  I want to place order
  So that I will be blocked

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

    Given I am on Customer List Page
    When I select language dropdown option included 'English' of language dropdown
    Then I should see search field
    When I input email to search field
    And I should see row of select checkbox list
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    When I click on blacklist button
    Then I should see popover
    When I click on popover confirm button
    Then blacklist button should contain "Remove from blacklist"

  @C3849 @C3849-1
  Scenario: I want to place order by blacklist customer without login
    Given I am on Shop Product Index Page
    When I input "18th Product for Checkout" to search field
    Then 1st product of products list should contain "18th Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Local Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Cash on Delivery" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I select delivery address dropdown option included "New Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "208 Jinshan District" of 2nd delivery address dropdown
    And I fill address to delivery address field
    And I click on agree terms checkbox
    And I click on place order button
    Then I should see error alert
    Then error alert should contain "Error processing order, please verify your information and try again. If the problem persists, please email shop owner for details"
    And ---ROLL BACK---
    Given I am on Customer List Page
    When I input email to search field
    And I should see row of select checkbox list
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    And I click on blacklist button
    And I click on popover confirm button
    Then blacklist button should contain "Add to blacklist"

  @C3849 @C3849-2
  Scenario: I want to place order by blacklist customer with login
    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    And I click on submit button
    Then error message box should contain "You cannot sign into your account right now, please verify your information and try again. If the problem persists, please email shop owner for details."
    And ---ROLL BACK---
    Given I am on Customer List Page
    When I input email to search field
    And I should see row of select checkbox list
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    And I click on blacklist button
    And I click on popover confirm button
    Then blacklist button should contain "Add to blacklist"