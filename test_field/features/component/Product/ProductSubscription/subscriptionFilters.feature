@BaseCase @Admin @Storefront @Product @Search @ProductSubscription @subscriptionFilters
@fixture-shop @fixture-delivery @fixture-payment @fixture-product @fixture-subscription-product @EAT-499
Feature: Check Product Subscription Filter
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

  Scenario: Check Product Subscription Filter
    Given I am on Product Subscription Management Page
    When I click on search filter dropodown
    Then I should see filter type button
    And I click on filter type button
    When I click on filter type option included 'Created Subscription'
    Then I should see filter options button
    And I click on filter options button
    Then 1st filter options option should contain 'Equal'
    Then 2nd filter options option should contain 'Greater than'
    Then 3rd filter options option should contain 'Less than'
    Then 4th filter options option should contain 'Between'
    When I click on filter options option included 'Equal'
    Then I should see filter value field
    When I fill '1' to filter value field
    Then I should see search filter button
    When I click on search filter button
    Then I should see search filter item
    Then search filter item should contain 'Created Subscription Terms： Equal 1'
    Then row of product subscription should contain 'In Progress 1 Subscription'
    When I click on search filter dropodown
    Then I should see filter type button
    And I click on filter type button
    When I click on filter type option included 'Created Subscription'
    Then I should see filter options button
    And I click on filter options button
    When I click on filter options option included 'Greater than'
    Then I should see filter value field
    When I fill '1' to filter value field
    Then I should see search filter button
    When I click on search filter button
    Then I should see search filter item
    Then search filter item should contain 'Created Subscription Terms： Greater than 1'
    Then product subscriptions list should not contain 'In Progress 1 Subscription'
    When I click on search filter dropodown
    Then I should see filter type button
    And I click on filter type button
    When I click on filter type option included 'Created Subscription'
    Then I should see filter options button
    And I click on filter options button
    When I click on filter options option included 'Less than'
    Then I should see filter value field
    When I fill '2' to filter value field
    Then I should see search filter button
    When I click on search filter button
    Then I should see search filter item
    Then search filter item should contain 'Created Subscription Terms： Less than 2'
    Then row of product subscription should contain '1 Subscription'
    When I click on search filter dropodown
    Then I should see filter type button
    And I click on filter type button
    When I click on filter type option included 'Created Subscription'
    Then I should see filter options button
    And I click on filter options button
    When I click on filter options option included 'Between'
    Then I should see filter max value field
    Then I should see filter min value field
    And I fill '2' to filter max value field
    And I fill '2' to filter min value field
    Then I should not see search filter button
    And I fill '1' to filter min value field
    Then I should see search filter button
    When I click on search filter button
    Then I should see search filter item
    Then search filter item should contain 'Created Subscription Terms： Between 1 and 2'
    When I click on search filter dropodown
    Then I should see filter type button
    And I click on filter type button
    When I click on filter type option included 'Status'
    Then I should see filter options button
    And I click on filter options button
    When I click on filter options option included 'is in progress'
    Then I should see search filter button
    When I click on search filter button
    Then I should see search filter item
    Then search filter item should contain 'Created Subscription Terms： Between 1 and 2'
    Then search filter item should contain 'Status：is in progress'
    Then row of product subscription should contain 'In Progress'
    Then row of product subscription should not contain 'Ended'
    When I click on 1st remove search filter
    Then search filter item should contain 'Status：is in progress'
    Then search filter item should not contain 'Created Subscription Terms： Between 1 and 2'
    When I click on search filter dropodown
    Then I should see filter type button
    And I click on filter type button
    When I click on filter type option included 'Status'
    Then I should see filter options button
    And I click on filter options button
    When I click on filter options option included 'is ended'
    Then I should see search filter button
    When I click on search filter button
    Then I should see search filter item
    Then search filter item should contain 'Status：is ended'
    Then row of product subscription should contain 'Ended'
    Then row of product subscription should not contain 'In Progress'
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