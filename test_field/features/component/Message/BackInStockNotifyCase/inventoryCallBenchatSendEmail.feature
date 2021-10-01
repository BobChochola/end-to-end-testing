@BaseCase @BackInStockNotifyCase @Admin @Storefront @inventoryCallBenchatSendEmail @fixture-shop @fixture-product
Feature: Admin update inventory API call Benchat send Email
  As a user of Shopline
  I want to update product's inventory
  So that I can keep inventory of those product in correct quantity

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

    Given I am on Basic Setting Page
    And I mark the value of shop name field as variable shop name
    And I click on basic info update button
    Then I should be redirected to Dashboard Page

  @EAT-728 @EAT-728-1 @theme-kingsman
  Scenario: Product without variation
    Given I am on Shop Login Layout V Two Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Layout V Two Page

    Given I am on Inventory Page
    And I input "5th Product for Checkout" to search field
    Then I should see row of product list
    Then 1st row of product list should contain "5th Product for Checkout"
    Then I should see apply search label
    When I click on 1st set button
    And I fill "0" to 1st row of quantity field
    And I click on 1st save button
    Then 1st row of product list should contain "0"

    Given I am on Shop Product Index Layout V Two Page
    And I hover over search icon
    And I input "5th Product for Checkout" to search field
    Then 1st kingsman product of products list should contain '5th Product for Checkout'
    When I click on 1st kingsman product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    Then I should see notify when in stock button
    When I click on notify when in stock button
    Then alert should contain "product is back in stock, there will be email notification."
    Then I should see add to wishlist button on

    Given I am on Inventory Page
    And I input "5th Product for Checkout" to search field
    Then I should see row of product list
    Then 1st row of product list should contain "5th Product for Checkout"
    Then I should see apply search label
    When I click on 1st set button
    And I fill "10" to 1st row of quantity field
    And I click on 1st save button
    Then 1st row of product list should contain "10"
    Then I wait for 150 seconds for mail sent

    Given I am on Google Mail Page
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    And I wait for 3 seconds for loading
    Then I should see row of mail list
    When I click on row of mail list included 'your wishlist is back in stock'
    Then I should see mail detail
    Then mail detail should contain "5th Product for Checkout"
    And I click on delete button
    And I check and click second delete button

    Given I am on Inventory Page
    And I input "5th Product for Checkout" to search field
    Then I should see row of product list
    Then 1st row of product list should contain "5th Product for Checkout"
    Then I should see apply search label
    When I click on 1st set button
    And I fill "11" to 1st row of quantity field
    And I click on 1st save button
    Then 1st row of product list should contain "11"
    Then I wait for 30 seconds for mail sent

    Given I am on Google Mail Page
    When I input shop name to search field
    And I wait for 3 seconds for loading
    Then I should see row of mail list
    Then 1st row of mail list should not contain "your wishlist is back in stock"

    And ---ROLL BACK---
    When I switch to 2 of tabs
    Given I am on Shop Product Index Layout V Two Page
    And I hover over search icon
    And I input "5th Product for Checkout" to search field
    Then 1st kingsman product of products list should contain '5th Product for Checkout'
    When I click on 1st kingsman product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    And I click on add to wishlist button on
    Then I should see add to wishlist button off

    Given I am on Inventory Page
    And I input "5th Product for Checkout" to search field
    Then I should see row of product list
    Then 1st row of product list should contain "5th Product for Checkout"
    Then I should see apply search label
    When I click on 1st set button
    And I fill "100000" to 1st row of quantity field
    And I click on 1st save button
    Then 1st row of product list should contain "100000"

  @EAT-728 @EAT-728-2 @theme-kingsman
  Scenario: Product with variation (color: Red & Blue)
    Given I am on Shop Login Layout V Two Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Layout V Two Page

    Given I am on Inventory Page
    And I input "17th Product for Checkout" to search field
    Then I should see row of product list
    Then 1st row of product list should contain "17th Product for Checkout"
    Then I should see apply search label
    When I click on 2nd set button
    When I click on 1st set button
    And I fill "0" to 2nd row of quantity field
    And I fill "0" to 1st row of quantity field
    And I click on 2nd save button
    And I click on 1st save button
    Then 1st row of product list should contain "0"

    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    And I input "17th Product for Checkout" to search field
    Then 1st kingsman product of products list should contain '17th Product for Checkout'
    When I click on 1st kingsman product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page

    And I select variation option included "Blue" of variation selector
    Then I should see notify when in stock button
    When I click on notify when in stock button
    Then I should see alert
    Then alert should contain "When product is back in stock, there will be email notification."
    Then I should see add to wishlist button on

    And I select variation option included "Red" of variation selector
    Then I should see notify when in stock button
    When I click on notify when in stock button
    Then I should see alert
    Then alert should contain "When product is back in stock, there will be email notification."
    Then I should see add to wishlist button on

    Given I am on Inventory Page
    And I input "17th Product for Checkout" to search field
    Then I should see row of product list
    Then 1st row of product list should contain "17th Product for Checkout"
    Then I should see apply search label
    When I click on 2nd set button
    And I fill "10" to 2nd row of quantity field
    And I click on 1st save button
    Then row of product list should contain "10"
    Then I wait for 100 seconds for mail sent

    Given I am on Google Mail Page
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    And I wait for 3 seconds for loading
    Then I should see row of mail list
    When I click on row of mail list included 'your wishlist is back in stock'
    Then I should see mail detail
    Then mail detail should contain "17th Product for Checkout"
    And I click on delete button
    And I check and click second delete button

    Given I am on Inventory Page
    And I input "17th Product for Checkout" to search field
    Then I should see row of product list
    Then 1st row of product list should contain "17th Product for Checkout"
    Then I should see apply search label
    When I click on 2nd set button
    And I fill "11" to 2nd row of quantity field
    And I click on 1st save button
    Then row of product list should contain "11"
    Then I wait for 30 seconds for mail sent

    Given I am on Google Mail Page
    Then I should see search field
    When I input shop name to search field
    And I wait for 3 seconds for loading
    Then I should see row of mail list
    Then 1st row of mail list should not contain "your wishlist is back in stock"

    Given I am on Inventory Page
    And I input "17th Product for Checkout" to search field
    Then I should see row of product list
    Then 1st row of product list should contain "17th Product for Checkout"
    Then I should see apply search label
    When I click on 1nd set button
    And I fill "5" to 1st row of quantity field
    And I click on 1st save button
    Then row of product list should contain "5"
    Then I wait for 30 seconds for mail sent

    Given I am on Google Mail Page
    Then I should see search field
    When I input shop name to search field
    And I wait for 3 seconds for loading
    Then I should see row of mail list
    When I click on row of mail list included 'your wishlist is back in stock'
    Then I should see mail detail
    Then mail detail should contain "17th Product for Checkout"
    And I click on delete button
    When I input shop name to search field
    Then I should see row of mail list
    Then 1st row of mail list should not contain "your wishlist is back in stock"

    And ---ROLL BACK---
    Given I am on Shop Product Index Layout V Two Page
    And I hover over search icon
    And I input "17th Product for Checkout" to search field
    Then 1st kingsman product of products list should contain '17th Product for Checkout'
    When I click on 1st kingsman product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page

    And I select variation option included "Red" of variation selector
    And I click on add to wishlist button on
    Then I should see add to wishlist button off
    And I select variation option included "Blue" of variation selector
    And I click on add to wishlist button on
    Then I should see add to wishlist button off

    Given I am on Inventory Page
    And I input "17th Product for Checkout" to search field
    Then I should see row of product list
    Then 1st row of product list should contain "17th Product for Checkout"
    Then I should see apply search label
    When I click on 2nd set button
    When I click on 1st set button
    And I fill "100000" to 2nd row of quantity field
    And I fill "100000" to 1st row of quantity field
    And I click on 2nd save button
    And I click on 1st save button
    Then 1st row of product list should contain "100000"

  @EAT-728 @EAT-728-3 @theme-kingsman
  Scenario: User unsubscribe product
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
    When I hover over search icon
    And I input "3rd Product for Checkout" to search field
    Then 1st kingsman product of products list should contain '3rd Product for Checkout'
    When I click on 1st kingsman product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    Then I should see notify when in stock button
    When I click on notify when in stock button
    Then I should see add to wishlist button on
    And I click on add to wishlist button on
    Then I should see add to wishlist button off

    Given I am on Inventory Page
    And I input "3rd Product for Checkout" to search field
    Then I should see row of product list
    Then 1st row of product list should contain "3rd Product for Checkout"
    Then I should see apply search label
    When I click on 1st set button
    And I fill "10000" to 1st row of quantity field
    And I click on 1st save button
    Then 1st row of product list should contain "10000"
    Then I wait for 30 seconds for mail sent

    Given I am on Google Mail Page
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    And I wait for 3 seconds for loading
    Then I should see row of mail list
    Then 1st row of mail list should not contain "your wishlist is back in stock"