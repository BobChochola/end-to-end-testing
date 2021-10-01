@BaseCase @Admin @ExpressCheckoutPage @expressCheckoutPageCreate
@fixture-product
Feature: Express checkout page create
  As a merchant
  I want to create an express checkout page for customers
  So that I can create it in express checkout page

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

  @C3851
  Scenario: Create new express checkout page
    Given I am on Express Checkout Pages Page
    When I click on create button
    Then I should be redirected to Express Checkout Builder Page
    Then I should see skip the guide button
    When I click on skip the guide button
    Then I should see product picker
    And I input "1st Product for Checkout" to search field
    Then I should see popup save button
    Then 1st product of product list should contain '1st Product for Checkout'
    And I click on 1st product of product list
    And I click on popup save button
    Then I should be on Express Checkout Builder Page
    When I click on preview button
    Then I should be redirected to Express Checkout Preview Page
    Then I switch to shop frame
    Then I should see product title
    Then product title should equal to "1ST PRODUCT FOR CHECKOUT"