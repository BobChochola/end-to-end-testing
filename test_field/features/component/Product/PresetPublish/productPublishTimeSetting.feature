@BaseCase @Admin @Product @PresetPublish @productPublishTimeSetting @fixture-product
Feature: Product publish time setting
  As a user of Shopline
  I want to preset publish date/time for selected products
  So that I can set it in product edit page.

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

  Scenario: Product publish time setting
    Given I am on Product Index Page
    When I input "1st Product for Checkout" to search field
    Then I should be redirected to Product Index Page
    Then 1st row of product list should contain "1st Product for Checkout"
    When I click on 1st row of publish button
    And I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on tab included "Settings"
    Then I should see 12 faq button
    When I click on 6th faq button
    And I switch to 2 of tabs
    Then I should be redirected to Faq Page
    And I switch to 1 of tabs
    Then I should be redirected to Product Edit Page
    Then I should see preset publish date field
    When I click on preset publish date button
    When I click on clear button
    When I click on preset publish date button
    When I click on done button
    Then preset publish date field should contain dateNow
    Then preset publish date field should contain hourNow
    Then preset publish date field should contain timeNow
    When I click on preset publish date button
    Then I should see date picker
    When I click on today button
    Then I should see time picker
    When I click on increment hours button
    And I click on meridian button
    When I click on done button
    Then I should not see time picker
    When I scroll down to breadcrumb
    And I click on update button
    Then I should be redirected to Product Index Page
    And I should see alert
    When I input "1st Product for Checkout" to search field
    Then I should be redirected to Product Index Page
    Then 1st row of product list should contain "1st Product for Checkout"
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on tab included "Settings"
    Then I should see preset publish date field
    Then preset publish date field should contain dateNow
    Then preset publish date field should contain hourNow
    Then preset publish date field should contain timeNext
    And ---ROLL BACK---
    When I click on preset publish date button
    Then I should see date picker
    When I click on clear button
    When I scroll down to breadcrumb
    And I click on update button
    Then I should be redirected to Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st row of product list should contain "1st Product for Checkout"