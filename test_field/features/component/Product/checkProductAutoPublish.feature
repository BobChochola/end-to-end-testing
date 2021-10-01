@BaseCase @Admin @Product @checkProductAutoPublish @fixture-product
@EAT-446
Feature:Product publish time setting - update system product log description
  As a merchant
  When I have different order status
  I can check products variations

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

  Scenario:Product publish time setting - update system product log description
    Given I am on Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st row of product name should contain '1st Product for Checkout'

    Then I click on 1st row of publish button
    Then I should see row of publish button
    Then 1st row of publish button should contain "Publish"
    And I click on 1st row of edit button

    Then I should be redirected to Product Edit Page
    When I click on settings tab
    Then I should see preset publish date field
    When I click on preset publish date button
    And I click on today button
    And I click on increment hours button
    And I click on increment hours button
    And I click on done button
    Then I should not see time picker
    And I click on update button
    Then I should see alert
    Then I should be redirected to Product Index Page
    Then I Refresh
    Then I should see publish status
    And I select product operations dropdown option included 'Activity Logs' of product operations dropdown
    Then I should be redirected to Product Edit Page
    Then 1st row of log list should contain "Product Updated"
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st row of product name should contain '1st Product for Checkout'
    Then I click on 1st row of publish button
    Then I should see row of publish button
    Then 1st row of product list should contain "Unpublish"
    Then I Refresh
    Then I should not see publish status