@PostTest @PreTest @BaseCase @ImageService @Admin @Product @productCreate-preorderExcludePaymentDelivery
Feature: create product withpreorder and Exclude Payment/Delivery
  As a user of Shopline
  I want to create multiple products
  So that my customer can see those products after created

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

  @C3748 @C3748-4 @fixture-payment @fixture-delivery
  Scenario: add product - preorder and excluded delivery/ payment
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) 預購商品有排除付款及運送方式#19預購商品" to english name field
    And I click on quantity and pricing tab
    And I fill "10" to regular price field
    And I fill "15" to quantity field
    Then I scroll down to add button
    Then I wait for 10 seconds for loading exculded payment
    And I click on settings tab
    And I click on preorder toggle
    And I fill "Test" to preorder note field
    Then I scroll down to excluded payment collapse
    And I click on excluded payment collapse
    And I click on row of excluded payment list included "Pay on Store Pickup via ezShip"
    And I click on excluded delivery collapse
    And I click on row of excluded delivery list included "ezship pickup and pay in store"
    Then I scroll down to breadcrumb
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    Then I should see row of product photo list
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain "預購商品有排除付款及運送方式#19預購商品"
    Then 1st row of regular price list should contain "10"
    Then 1st row of quantity list should contain "15"
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on settings tab
    Then preorder note field should contain "Test"
    Then I scroll down to excluded payment collapse
    And I click on excluded payment collapse
    Then excluded payment list should contain "Pay on Store Pickup via ezShip"
    And I click on excluded delivery collapse
    Then excluded delivery list should contain "ezship pickup and pay in store"
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain '(dirty data) 預購商品有排除付款及運送方式#19預購商品'