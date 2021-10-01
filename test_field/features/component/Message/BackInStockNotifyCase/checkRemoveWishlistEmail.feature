@BaseCase @BackInStockNotifyCase @Admin @Storefront @checkRemoveWishlistEmail @fixture-product @theme-kingsman @fixture-shop
Feature: Remove items from the tracking list after subscribing to the delivery notification
  As a merchant
  I remove wishilst after not receive mail

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

  @EAT-773
  Scenario: Remove items from the tracking list after subscribing to the delivery notification
    Given I am on Inventory Page
    And I input "3rd Product for Checkout" to search field
    Then I should see row of product list
    Then 1st row of product list should contain "3rd Product for Checkout"
    Then I should see apply search label
    When I click on 1st set button
    And I fill "0" to 1st row of quantity field
    And I click on 1st save button
    Then 1st row of product list should contain "0"

    Given I am on Shop Login Layout V Two Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Layout V Two Page

    Given I am on Shop Product Index Layout V Two Page
    When I hover over kingsman search icon
    And I input "3rd Product for Checkout" to search field
    Then 1st kingsman product of products list should contain '3rd Product for Checkout'
    When I click on 1st kingsman product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    Then I should see sold out
    Then I should see notify when in stock button
    When I click on notify when in stock button
    Then I should see alert
    Then alert should contain "When product is back in stock, there will be email notification."
    Then I should see add to wishlist button on

    When I click on kingsman member center button
    Then I should be redirected to Shop User Profile Layout V Two Page
    When I click on member center tab included 'Wishlist'
    Then I should be redirected to Shop Wishlist Layout V Two Page
    Then 1st row of wishlist should contain '3rd Product for Checkout'
    Then 1st row of product price should contain 'NT$20'
    Then 1st row of product price should contain 'NT$10'
    Then 1st row of wishlist should contain "In Stock Notification On"
    When I click on 1st row of delete button
    Then I should see popup
    When I click on confirm button
    And I wait for 5 seconds for loading
    Then I should see continue shopping button

    And ---I NEED TO ROLLBACK quantity---

    Given I am on Inventory Page
    And I input "3rd Product for Checkout" to search field
    Then I should see row of product list
    Then 1st row of product list should contain "3rd Product for Checkout"
    Then I should see apply search label
    When I click on 1st set button
    And I fill "200000" to 1st row of quantity field
    And I click on 1st save button
    Then row of product list should contain "200000"

    Given I am on Google Mail Page
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    Then I should see row of mail list
    Then 1st row of mail list should not contain "your wishlist is back in stock"