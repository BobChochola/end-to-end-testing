@BaseCase @Admin @Product @Storefront @Setting @productInventoryReminder @fixture-shop
Feature:Product inventory reminder UI display
  AS a shop UI
  display Product inventory reminder

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

  @EAT-616 @EAT-616-1
  Scenario: Shop reminder on inventory last one
    Given I am on Product Setting Page
    Then I should see inventory reminder toggle
    When I check and click inventory reminder toggle off
    And I click on update button
    Then I should see alert

    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on categories tab
    And I click on info tab
    And I fill "(dirty data) inventory reminder" to english name field
    And I click on quantity and pricing tab
    And I fill "20" to regular price field
    And I scroll down to id
    And I fill "2" to quantity field
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Inventory Page
    Then row of product list should contain "2"
    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    When I click on shop all button
    Then I should be redirected to Shop Product Index Page
    When I input "inventory reminder" to search field
    Then 1st product of products list should contain 'inventory reminder'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then product detail should contain "Only 1 item(s) left"
    When I select language dropdown option included '繁體中文' of language dropdown
    Then product detail should contain "現庫存只剩下 1 件"
    And ---ROLL BACK---
    Given I am on Product Setting Page
    When I click on inventory reminder toggle
    And I click on update button
    Then I should see alert

    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain '(dirty data) inventory reminder'

    Given I am on Shop Home Page
    When I select language dropdown option included 'English' of language dropdown

  @EAT-616 @EAT-616-2
  Scenario: Shop reminder on Out-Of-Stock
    Given I am on Product Setting Page
    Then I should see inventory reminder toggle
    When I check and click out of stock reminder toggle off
    And I click on update button
    Then I should see alert
    Then out of stock reminder toggle should be checked

    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on categories tab
    And I click on info tab
    And I fill "(dirty data) inventory reminder" to english name field
    And I click on quantity and pricing tab
    And I fill "20" to regular price field
    And I scroll down to id
    And I fill "1" to quantity field
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Inventory Page
    Then row of product list should contain "1"
    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    When I click on shop all button
    Then I should be redirected to Shop Product Index Page
    When I input "inventory reminder" to search field
    Then 1st product of products list should contain 'inventory reminder'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    When I click on close cart panel area
    When I click on add to cart button
    Then product detail should contain "Not enough stock."
    Then product detail should contain "Your item was not added to your cart."
    When I select language dropdown option included '繁體中文' of language dropdown
    And I wait for 3 seconds for loading
    When I click on increase button
    When I click on add to cart button
    Then product detail should contain "商品存貨不足，未能加入購物車"
    And ---ROLL BACK---
    Given I am on Product Setting Page
    When I click on out of stock reminder toggle
    And I click on update button
    Then I should see alert
    Then out of stock reminder toggle should not be checked
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain '(dirty data) inventory reminder'
    Given I am on Shop Home Page
    When I select language dropdown option included 'English' of language dropdown