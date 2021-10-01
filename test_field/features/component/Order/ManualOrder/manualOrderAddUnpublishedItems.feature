@BaseCase @Admin @Order @ManualOrder @manualOrderAddUnpublishedItems
@fixture-payment @fixture-delivery @fixture-product @EAT-570
Feature: manual order add unpublished items
  As a merchant
  I want to add unpublished items to manual order

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

  Scenario: manual order can add unpublished items
    Given I am on Product Index Page
    When I input "4th Product for Checkout" to search field
    Then 1st row of product list should contain '4th Product for Checkout'
    And I click on 1st row of publish button included 'Unpublish'
    Then 1st row of publish button should contain 'Publish'
    Given I am on Orders Page
    When I select export dropdown option included "Create Order" of export dropdown
    Then I should be redirected to Orders Create Page
    When I click on select customer button
    And I input email to search customer field
    And I click on 1st row of customer checkbox
    And I click on ok save button
    Then I should see phone number field
    And I fill phone to phone number field
    And I click on save phone number checkbox
    Then I click on next button
    Then I should see select product button
    When I click on select product button
    And I input "4th Product for Checkout" to search product field
    Then 1st row of select product should contain '4th Product for Checkout'
    And I click on 1st row of select product
    And I click on ok save button
    Then I should see product next button
    Then I click on product next button
    Then I should see shipping destination dropdown
    And I select shipping destination dropdown option included "Taiwan" of shipping destination dropdown
    Then I wait for 3 seconds for loading
    And I select delivery method dropdown option included "Custom Delivery" of delivery method dropdown
    Then I should see same as customer info checkbox
    And I click on same as customer info checkbox
    Then I click on delivery next button
    Then I should see payment method dropdown
    When I select payment method dropdown option included "Custom" of payment method dropdown
    Then I should see create order button
    And I click on create order button
    Then I should be redirected to Orders Show Page
    Then product details should contain "4th Product for Checkout"
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I input "4th Product for Checkout" to search field
    Then 1st row of product list should contain '4th Product for Checkout'
    And I click on 1st row of publish button included 'Publish'
    Then 1st row of publish button should contain 'Unpublish'