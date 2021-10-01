@BaseCase @Admin @Storefront @Order @Setting @orderEditCustomDetail
@fixture-payment @fixture-delivery @fixture-product @fixture-shop
Feature: Can edit custom details of an order
  As a merchant
  I want to edit custom details of an order
  So that I can edit successful

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
    
    Given I am on Order Setting Page
    When I click on add field button
    And I scroll down to update button
    And I should see custome name field
    And I fill name to custome name field
    And I fill hint to custome hint field
    And I click on update button
    Then I should be redirected to Dashboard Page

  @C3770
  Scenario:  I can edit custom details of an order
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Local Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I fill address to delivery address field
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I click on order edit button
    And I fill "testing" to custom field
    And I click on order save button
    And I should see custom field text
    Then custom field text should contain "testing"
    And ---ROLL BACK---
    Given I am on Order Setting Page
    And I scroll down to delete field button
    Then I should see delete field button
    Then I scroll down to delete field button
    When I click on delete field button
    And I click on update button
    Then I should be redirected to Dashboard Page