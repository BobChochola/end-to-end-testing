@BaseCase @Admin @Product @Storefront @checkVariantImageSelector
@fixture-shop
Feature: Check turn on variant-image-selector in product detail page
  As a User
  can see correct reminders when turn on variant-image-selector

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
    Given I am on Product Setting Page
    Then I should see member price toggle
    When I check and click member price toggle off
    Then I should see out of stock reminder toggle
    When I check and click out of stock reminder toggle off
    When I check and click inventory reminder toggle off
    And I click on update button
    Then I should see alert
    Then member price toggle should be checked
    Then out of stock reminder toggle should be checked
    Then inventory reminder toggle should be checked
    Given I am on Design Page
    When I click on advanced setting tab
    Then I should see instant add to cart checkbox
    When I click on instant add to cart checkbox
    And I click on current window checkbox
    And I click on save button
    And I click on publish button
    Then I should not see publish button

  @EAT-613
  Scenario: Check turn on variant-image-selector in shop product show
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) 雙規格" to english name field
    And I click on quantity and pricing tab
    And I fill "100" to regular price field
    And I fill "50" to sale price field
    And I fill "30" to member price field
    And I click on variations tab
    When I click on variations toggle
    And I input "Blue" to add options field
    And I input "Red" to add options field
    When I click on add variation button
    And I input "S" to 2nd add options field
    And I input "M" to 2nd add options field
    And I fill "1" to 1st row of variation quantity field
    And I fill "1" to 2nd row of variation quantity field
    And I fill "1" to 3rd row of variation quantity field
    And I fill "1" to 4th row of variation quantity field
    Then I scroll down to breadcrumb
    When I click on add button
    Then I should be redirected to Product Edit Page
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) 單規格" to english name field
    And I click on quantity and pricing tab
    And I fill "100" to regular price field
    And I fill "50" to sale price field
    And I fill "30" to member price field
    And I click on variations tab
    When I click on variations toggle
    And I input "Blue" to add options field
    And I fill "1" to 1st row of variation quantity field
    Then I scroll down to breadcrumb
    When I click on add button
    Then I should be redirected to Product Edit Page

    Given I am on Shop Product Index Page
    When I input "單規格" to search field
    Then 1st product of products list should contain '單規格'
    And I hover over 1st product of products list
    When I click on 1st add to cart
    Then I should see cart popover
    Then product info should contain "單規格"
    Then popover strikethrough regular price should contain "NT$100"
    Then popover sale price should contain "NT$50"
    Then popover member price should contain "NT$30 Member Only"
    Then product detail should contain "Only 1 item(s) left"
    When I click on add to cart button
    And I click on close cart panel area
    And I hover over 1st product of products list
    When I click on 1st add to cart
    Then I should see cart popover
    When I click on add to cart button
    Then product detail should contain "Not enough stock."
    Then product detail should contain "Your item was not added to your cart."
    Then I click on close button
    When I input "雙規格" to search field
    Then 1st product of products list should contain '雙規格'
    And I hover over 1st product of products list
    When I click on add to cart
    Then I should see cart popover
    Then product info should contain "雙規格"
    Then popover strikethrough regular price should contain "NT$100"
    Then popover sale price should contain "NT$50"
    Then popover member price should contain "NT$30 Member Only"
    Then product detail should contain "Only 1 item(s) left"
    When I click on add to cart button
    And I click on close cart panel area
    And I hover over 1st product of products list
    When I click on add to cart
    Then I should see cart popover
    When I click on add to cart button
    Then product detail should contain "Not enough stock."
    Then product detail should contain "Your item was not added to your cart."
    Then I click on close button
    When I click on cart panel button
    Then I should see cart panel
    And I click on 1st remove button
    And I click on 1st remove button
    And I click on close cart panel area

    Given I am on Shop Product Index Page
    Then 1st product of products list should contain '單規格'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain "單規格"
    Then Strikethrough regular price should contain "NT$100"
    Then sale price should contain "NT$50"
    Then reminder member price should contain "NT$30 Member Only"
    Then product detail should contain "Only 1 item(s) left"
    When I click on add to cart button
    And I click on close cart panel area
    When I click on add quantity button
    When I click on add to cart button
    Then product detail should contain "Not enough stock."
    Then product detail should contain "Your item was not added to your cart."
    When I click on language dropdown
    And I click on 2nd language dropdown option
    And I wait for 3 seconds for loading
    Then product detail should contain "現庫存只剩下 0 件"
    When I click on add to cart button
    Then product detail should contain "商品存貨不足，未能加入購物車"
    When I click on language dropdown
    And I click on 1st language dropdown option

    Given I am on Shop Product Index Page
    When I input "雙規格" to search field
    Then 1st product of products list should contain '雙規格'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then Strikethrough regular price should contain "NT$100"
    Then sale price should contain "NT$50"
    Then reminder member price should contain "NT$30 Member Only"
    Then product detail should contain "Only 1 item(s) left"
    When I click on add to cart button
    And I click on close cart panel area
    When I click on add quantity button
    When I click on add to cart button
    Then product detail should contain "Not enough stock."
    Then product detail should contain "Your item was not added to your cart."
    When I click on language dropdown
    And I click on 2nd language dropdown option
    And I wait for 3 seconds for loading
    Then product detail should contain "現庫存只剩下 0 件"
    When I click on add to cart button
    Then product detail should contain "商品存貨不足，未能加入購物車"
    When I click on language dropdown
    And I click on 1st language dropdown option
    And ---ROLL BACK---
    Given I am on Product Setting Page
    Then I should see member price toggle
    When I click on member price toggle
    When I click on out of stock reminder toggle
    When I click on inventory reminder toggle
    And I click on update button
    Then I should see alert
    Given I am on Product Index Page
    When I click on 1st row of product checkbox
    And I click on 2nd row of product checkbox
    When I select delete selected of bulk actions dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm bulk button
    Then 1st row of product list should not contain '規格'
    Given I am on Design Page
    When I click on advanced setting tab
    Then I should see instant add to cart checkbox
    When I click on new window checkbox
    And I click on instant add to cart checkbox
    And I click on save button
    And I click on publish button
    Then I should not see publish button