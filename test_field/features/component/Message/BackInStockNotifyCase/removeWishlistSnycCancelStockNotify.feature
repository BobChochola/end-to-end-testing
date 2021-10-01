@BaseCase @BackInStockNotifyCase @Admin @Storefront @removeWishlistSnycCancelStockNotify @fixture-product @theme-kingsman @fixture-shop
Feature: The item is already in the tracking list and the removal tracking will not notify me of the item
  As a merchant
  I remove the add wishlist sync cancelled subscribe stock on notify

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
    And I mark the value of shop name field as variable shop name
    And I click on basic info update button
    Then I should be redirected to Dashboard Page

  @EAT-786
  Scenario: The item is already in the tracking list and the removal tracking will not notify me of the item
    Given I am on Shop Login Layout V Two Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Layout V Two Page

    Given I am on Shop Product Index Layout V Two Page
    When I hover over kingsman search icon
    And I input "out of stock" to search field
    Then 1st kingsman product of products list should contain 'Out Of Stock'
    When I click on 1st kingsman product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    Then I should see sold out
    Then I should see notify when in stock button
    Then I should see add to wishlist button off
    When I click on notify when in stock button
    Then I should see alert
    Then alert should contain "When product is back in stock, there will be email notification."
    Then notify when in stock button should contain 'In Stock Notification On'
    Then I should see add to wishlist button on
    When I click on member center button

    Then I should be redirected to Shop User Profile Layout V Two Page
    When I click on member center tab included 'Wishlist'
    Then I should be redirected to Shop Wishlist Layout V Two Page
    Then 1st row of wishlist should contain 'Out Of Stock'
    Then 1st row of product price should contain 'NT$20'
    Then 1st row of wishlist should contain "In Stock Notification On"
    When I click on 1st row of delete button
    Then I should see popup
    When I click on confirm button
    And I wait for 3 seconds for loading
    Then I should see continue shopping button

    Given I am on Shop Product Index Layout V Two Page
    When I hover over kingsman search icon
    And I input "out of stock" to search field
    Then 1st kingsman product of products list should contain 'Out Of Stock'
    When I click on 1st kingsman product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    Then I should see notify when in stock button
    Then notify when in stock button should contain 'Notify When in Stock'
    Then I should see add to wishlist button off