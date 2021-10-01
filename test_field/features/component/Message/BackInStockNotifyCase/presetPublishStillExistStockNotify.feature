@BaseCase @ImageService @BackInStockNotifyCase @Admin @Storefront @presetPublishStillExistStockNotify @fixture-product @theme-kingsman @fixture-shop
Feature: Preset Publish product when inventory to 0 still exist stock on notify button
  As a merchant
  Preset Publish product when inventory to 0 still exist stock on notify button

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

    Given I am on Basic Setting Page
    And I click on basic info update button
    Then I should be redirected to Dashboard Page

    Given I am on Product Index Page
    When I input "Out Of Stock" to search field
    Then 1st row of product list should contain "Out Of Stock"
    And I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on tab included "Settings"
    Then I should see preset available time toggle
    And I click on preset available time toggle
    Then I should see available start date field
    When I click on available start date field
    Then I should see calendar table
    When I click on 3rd available date button
    And I click on done button
    When I click on never expires checkbox
    And I click on update button
    Then I should be redirected to Product Index Page
    And I should see alert
    When I Refresh
    When I input "Out Of Stock" to search field
    Then 1st row of product list should contain "Out Of Stock"
    When I hover over 1st row of product available time icon
    Then 1st row of product list should contain available never expired time

  @EAT-779
  Scenario: Preset Publish product when inventory to 0 still exist stock on notify button
    Given I am on Shop Login Layout V Two Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Layout V Two Page

    Given I am on Shop Product Index Layout V Two Page
    When I hover over kingsman search icon
    And I input "Out Of Stock" to search field
    And I click on 1st kingsman product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    Then I should see sold out
    Then I should see notify when in stock button
    When I click on notify when in stock button
    Then I should see alert
    Then notify when in stock button should contain 'In Stock Notification On'
    Then alert should contain "When product is back in stock, there will be email notification."
    Then I should see add to wishlist button on
    When I click on notify when in stock button
    Then notify when in stock button should contain 'Notify When in Stock'
    Then I should see add to wishlist button on
    When I click on kingsman member center button

    Then I should be redirected to Shop User Profile Layout V Two Page
    When I click on member center tab included 'Wishlist'
    Then I should be redirected to Shop Wishlist Layout V Two Page
    Then 1st row of wishlist should contain 'Out Of Stock'
    Then 1st row of product price should contain 'NT$20'
    Then 1st row of wishlist should contain "SOLD OUT"
    And ---ROLL BACK---
    When I click on 1st row of delete button
    Then I should see popup
    When I click on confirm button
    And I wait for 3 seconds for loading
    Then I should see continue shopping button

    Given I am on Product Index Page
    When I input "Out Of Stock" to search field
    Then 1st row of product list should contain "Out Of Stock"
    And I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on tab included "Settings"
    And I click on available start date field
    And I click on clear button
    When I click on never expires checkbox
    And I click on preset available time toggle
    And I click on update button
    Then I should be redirected to Product Index Page
    Then I should see alert