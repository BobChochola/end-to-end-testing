@BaseCase @Admin @Storefront @Order @OrderEdit @tcatOrderCancelledSplitEditCheck @fixture-shop @fixture-product @fixture-payment @fixture-delivery @premiumFeature
Feature: tCat Order Edit Print and Edit
  As a merchant
  I want to edit some details of a order
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

    Given I am on Delivery Create Page
    When I select delivery type dropdown option included 'Delivery' of delivery type dropdown
    Then shipping from edit button should contain 'Taiwan'
    Then shipping to edit button should contain 'Taiwan'
    When I click on search provider button
    Then I should see popover
    And I click on popover row of provider included "Tcat - Refrigerated"
    And I click on popover ok button
    And I fill contract code to contract code field
    And I fill sender name to sender name field
    And I fill sender phone to sender phone field
    And I fill sender address to sender address field
    And I select delivery fee type dropdown option included 'Flat Price' of delivery fee type dropdown
    And I fill "(dirty data) Tcat - Refrigerated" to name field
    And I fill "0" to delivery fee field
    And I click on add button
    Then I should see confirm adding button
    And I click on confirm adding button
    Then I should be redirected to Delivery Options Page
    Then 1st row of delivery options list should contain "Tcat - Refrigerated"

  @EAT-690
  Scenario: I want to edit customer details of a order
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Refrigerated" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Bank" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill address to delivery address field
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I select Cancelled of order status dropdown
    Then I should see confirm popover
    When I click on YES button
    Then order status should equal to "Cancelled"
    Then I scroll down to breadcrumb
    Then product details edit button should be disabled
    Then split button should be disabled
    Given I am on Orders Page
    When I select Tcat Refrigerated Order Management of Orders delivery type dropdown
    Then I should see breadcrumb
    Then breadcrumb should contain "Tcat - Refrigerated Order Management"
    And ---ROLL BACK---
    Given I am on Delivery Options Page
    Then 1st row of delivery options list should contain "Tcat - Refrigerated"
    When I click delete button of delivery method list for the same order of row of delivery options list included 'dirty data'
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then table should not contain "(dirty data) Tcat - Refrigerated"