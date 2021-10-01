@BaseCase @BackInStockNotifyCase @Admin @Storefront @productPublishMailNotify @fixture-product @theme-kingsman @fixture-shop
Feature: Receive an email notification when the item is removed from the shelf
  As a merchant
  I will receive an email when the items are back in stock

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

  @EAT-776
  Scenario: Will receive an email when the items are back in stock
    Given I am on Shop Login Layout V Two Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Layout V Two Page

    Given I am on Shop Product Index Layout V Two Page
    When I hover over kingsman search icon
    And I input "Out Of Stock" to search field
    Then 1st kingsman product of products list should contain 'Out Of Stock'
    When I click on 1st kingsman product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    Then I should see sold out
    Then I should see notify when in stock button
    When I click on notify when in stock button
    Then I should see alert
    Then alert should contain "When product is back in stock, there will be email notification."
    Then I should see add to wishlist button on

    Given I am on Product Index Page
    When I input "Out Of Stock" to search field
    Then 1st row of product list should contain 'Out Of Stock'
    Then I should see row of publish button
    When I click on 1st row of publish button
    Then 1st row of publish button should contain "Publish"
    And I wait for 30 seconds for sync

    Given I am on Shop Product Index Layout V Two Page
    When I hover over kingsman search icon
    And I input "Out Of Stock" to search field
    Then I Refresh
    Then I should not see kingsman product of products list

    When I click on kingsman member center button
    Then I should be redirected to Shop User Profile Layout V Two Page
    When I click on member center tab included 'Wishlist'
    Then I should be redirected to Shop Wishlist Layout V Two Page
    Then 1st row of wishlist should contain 'Out Of Stock'
    Then 1st row of product price should contain 'NT$20'
    Then 1st row of wishlist should contain "UNAVAILABLE"

    Given I am on Inventory Page
    And I input "Out Of Stock" to search field
    Then I should see row of product list
    Then 1st row of product list should contain "Out Of Stock"
    Then I should see apply search label
    When I click on 1st set button
    And I fill "1" to 1st row of quantity field
    And I click on 1st save button
    Then row of product list should contain "1"

    Given I am on Product Index Page
    When I input "Out Of Stock" to search field
    Then 1st row of product list should contain 'Out Of Stock'
    Then I should see row of publish button
    When I click on 1st row of publish button
    Then 1st row of publish button should contain "Unpublish"
    Then I wait for 100 seconds for mail sent

    Given I am on Google Mail Page
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    And I wait for 5 seconds for loading
    Then I should see row of mail list
    When I click on row of mail list included 'your wishlist is back in stock'
    Then I should see mail detail
    Then mail detail should contain "Out Of Stock"
    Then I should see get it now button
    Then I click on get it now button
    And I switch to 2 of tabs
    Then I should be redirected to Shop Product Show Layout V Two Page
    And I switch to 1 of tabs
    Then I should be redirected to Google Mail Page
    And I click on delete button
    And I switch to 2 of tabs
    Then I should be redirected to Shop Product Show Layout V Two Page
    Then product list should contain "Out Of Stock"
    When I click on kingsman member center button

    Then I should be redirected to Shop User Profile Layout V Two Page
    When I click on member center tab included 'Wishlist'
    Then I should be redirected to Shop Wishlist Layout V Two Page
    Then row of wishlist should contain 'Out Of Stock'
    Then row of product price should contain 'NT$20'
    And ---ROLL BACK---
    Given I am on Shop Product Index Layout V Two Page
    When I click on kingsman member center button
    Then I should be redirected to Shop User Profile Layout V Two Page
    When I click on member center tab included 'Wishlist'
    Then I should be redirected to Shop Wishlist Layout V Two Page
    When I click on 1st row of delete button
    Then I should see popup
    When I click on confirm button
    And I wait for 3 seconds for loading
    Then I should see continue shopping button

    Given I am on Inventory Page
    And I input "Out Of Stock" to search field
    Then I should see row of product list
    Then 1st row of product list should contain "Out Of Stock"
    Then I should see apply search label
    When I click on 1st set button
    And I fill "0" to 1st row of quantity field
    And I click on 1st save button
    Then row of product list should contain "0"