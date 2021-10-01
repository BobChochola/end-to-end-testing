@BaseCase @Admin @Storefront @Product @ProductSubscription @subscriptionSearchStatusCheck
@fixture-shop @fixture-delivery @fixture-payment @fixture-subscription-product
Feature: Search Product Subscription next billing
  As a merchant
  I want to search subscription and check status

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

  Scenario: Check Search Product Subscription
    Given I am on Product Index Page
    When I input '18th Product for Checkout' to search field
    Then 1st row of product name should contain '18th Product for Checkout'
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on quantity and pricing tab
    When I click on subscription toggle
    Then I should see product subscription enabled
    When I click on update button
    Then I should be redirected to Product Index Page

    Given I am on Shop Product Index Page
    When I input '18th Product for Checkout' to search field
    Then 1st product of products list should contain '18th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button

    Then I should be redirected to Shop Checkout Page
    When I fill new name to name field
    And I mark the value of name field as variable new name
    And I fill new email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on become member checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info

    Given I am on Product Subscription Management Page
    # 現在subscription的search不能search有加號的email
    # When I input new email to subscription product search field
    # Then I should see apply filter label
    # Then I should see 1 row of product subscription
    Then 1st row of product subscription should contain new email
    When I input '18th Product for Checkout' to subscription product search field
    Then 1st row of product subscription should contain '18th Product for Checkout'
    When I input new name to subscription product search field
    Then 1st row of product subscription should contain new name
    When I input order number to subscription product search field
    Then 1st row of product subscription should contain new name
    Then 1st row of product subscription should contain '18th Product for Checkout'
    Then 1st row of product subscription should contain new email
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I input '18th Product for Checkout' to search field
    Then 1st row of product name should contain '18th Product for Checkout'
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on quantity and pricing tab
    When I click on subscription toggle
    Then I should see product subscription disabled
    When I click on update button
    Then I should be redirected to Product Index Page