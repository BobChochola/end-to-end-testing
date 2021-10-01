@BaseCase @Admin @Storefront @Product @ProductSubscription @subscriptionGiftResume @fixture-shop @fixture-delivery @fixture-payment @fixture-subscription-product
Feature: check resume and pause subscription status
  As a merchant
  I want to resume and pause subscription setting in product subscription management

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

  Scenario: add subscription product to cart and check cart count
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) SubscriptionProduct" to english name field
    And I click on quantity and pricing tab
    And I click on subscription toggle
    And I fill "1000" to regular price field
    And I click on unlimited quantity checkbox
    Then I scroll down to breadcrumb
    When I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Shop Product Index Page
    When I input "SubscriptionProduct" to search field
    Then 1st product of products list should contain 'SubscriptionProduct'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
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
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info

    Given I am on Product Subscription Management Page
    Then I should see row of product subscription
    Then 1st row of product subscription should contain 'SubscriptionProduct'
    Then 1st row of product subscription should contain 'In Progress'
    When I click on 1st row of product subscription link
    Then I should be redirected to Product Subscription Show Page
    Then resume subscription status should contain 'In Progress'
    Then I should see pause subscription button
    Then 1st row of product subscription show should contain order number
    When I click on pause subscription button
    Then I should see confirm button
    When I click on confirm button
    Then I should see resume subscription button
    Then resume subscription status should contain 'Ended'
    When I click on resume subscription button
    Then I should see resume subscription date field
    And I fill date to resume subscription date field
    When I click on confirm button
    Then resume subscription status should contain 'In Progress'

    And ---ROLL BACK---
    When I click on pause subscription button
    Then I should see confirm button
    When I click on confirm button
    Then I should see resume subscription button
    Then resume subscription status should contain 'Ended'

    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then 1st row of product list should not contain "SubscriptionProduct"