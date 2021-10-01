@BaseCase @Admin @Storefront @Product @Checkout @AdvancedPage @oneProductWithWeightProductAdvancedPageLocalDeliveryV2
@fixture-payment @fixture-delivery @fixture-product @theme-kingsman @fixture-shop @EAT-927
Feature: Variant product checkout without login from advanced page (Local Delivery) V2
  As a merchant
  I want each product to apply different weight
  So that delivery fee can be more accurate

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
    And I click on basic info update button
    Then I should be redirected to Dashboard Page

    Given I am on Pages Page
    When I click on add advanced page button
    Then I should be redirected to Advanced Select Page
    When I click on 2th template
    Then I should be redirected to Page Builder Page
    Then I should see skip the guide button
    When I click on skip the guide button
    When I click on menu button
    Then I should see menu
    Then I should see single product button
    When I drag single product button to top location
    And I check and click empty single product
    And I wait for 3 seconds for loading
    Then I should see popup
    When I input '6th Product for Checkout' to popup search field
    When I click on popup product included '6th Product for Checkout'
    And I click on popup save button
    Then I should see 1 single product
    And I click on save button
    Then I should see view page button
    And I click on view page button
    And I switch to 2 of tabs

  @EAT-927-13
  Scenario: I want to buy products with different weight and pay correct shipping fee
    Then I should be redirected to Shop Advanced Layout V Two Page
    When I scroll down to product
    Then 1st product should contain '6th Product for Checkout'
    Then 1st regular price of product list should contain 'NT$59'
    And I hover over 1st product
    And I click on 1st add to cart button
    Then I should see popover
    Then popover regular price should contain 'NT$59'
    When I fill '3' to popover variation quantity field
    And I click on popover add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then 1st row of unit price should contain "NT$59"
    Then 1st row of subtotal price should contain "NT$177"
    Then 1st item quantity field should contain '3'
    Then 1st row of cart item should contain '6th Product for Checkout'
    When I select country dropdown option included "Taiwan" of country list dropdown
    Then I wait for 3 seconds for loading
    And I select delivery dropdown option included "(DBW) - LocalDelivery" of delivery method dropdown
    Then I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    Then cart item subtotal should contain 'NT$177'
    Then delivery fee should contain 'NT$15'
    Then total should contain 'NT$192'
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    Then I click on cart summary
    Then 1st row of product items should contain "6th Product for Checkout"
    Then 1st cart item price should contain 'NT$59'
    Then 1st cart item quantity should contain '3'
    Then 1st cart item subtotal should contain 'NT$177'
    Then total price should contain "NT$192"
    Then order summary should contain 'Item Subtotal:NT$177'
    Then order summary should contain 'Delivery Fee:NT$15'
    Then order summary should contain 'Total:NT$192'
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill address to delivery address field
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then delivery fee should contain "NT$15"
    Then total should contain "NT$192"
    Then 1st row of product unit price should contain "NT$59"
    Then 1st row of product subtotal should contain "NT$177"
    Then 1st row of product quantity should equal to "3"
    Then 1st row of product items should contain "6th Product for Checkout"
    Then item subtotal should contain 'NT$177'
    Then delivery fee should contain 'NT$15'
    Then total should contain 'NT$192'
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then delivery fee should contain "NT$15"
    Then total should contain "NT$192"
    Then product details should contain '3 x NT$59 = NT$177'
    And ---ROLL BACK---
    Given I am on Pages Page
    When I click on delete button
    Then I should see popover
    And I click on confirm button
    Then I click on ok button