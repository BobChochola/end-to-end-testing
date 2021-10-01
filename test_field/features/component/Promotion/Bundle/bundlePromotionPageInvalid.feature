@BaseCase @Admin @Checkout @Storefront @Promotion @Bundle @bundlePromotionPageInvalid
@fixture-delivery @fixture-payment @fixture-product @fixture-shop @fixture-promotion @EAT-790

Feature: Checkout BundlePricing Promotion
  As a user of Shopline
  I want to pre-create/unpublish/delete bundle promotion page for my customer
  So that my customer can see related info on that page

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

  @EAT-790-1
  Scenario: bundle coming and unpublish
    Given I am on Bundle Pricing Create Page
    And I fill '(dirty data) Summer Sale - coming' to name field
    And I fill '2' to promotion value field
    And I fill '50' to discounted price field

    And I fill '18th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '18th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see row of selected product

    And I fill '4th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '4th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see 2 row of selected product

    And I click on countinue to button
    When I click on 2nd countinue to button
    And I click on start date field
    Then I should see calendar table
    When I click on next month button
    When I click on 1st chosen month available date button
    And I click on done button
    And I click on 3rd countinue to button
    When I click on preview button
    Then promotion name should contain 'Summer Sale - coming'
    Then promotion limitations start date should contain preset start time
    Then promotion limitations end date should contain 'Never expires'
    Then target group should equal to 'All Customers'
    Then discount summary should equal to 'Purchase 2 items of Selected Products for NT$50'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Given I am on Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Summer Sale - coming'
    When I click on 1st go to page button
    When I switch to 2 of tabs
    Then I should be redirected to Shop Promotion Page
    Then promotion name should contain 'Selected Products: Buy 2 items for NT$50'
    Then promotion valid description should contain 'Promotion Coming Soon!'
    Then promotion valid description should contain promotion start time
    Then 1st product of products list should contain '18th Product for Checkout'
    Then 2nd product of products list should contain '4th Product for Checkout'
    When I click on 1st product of products list
    When I switch to 3 of tabs
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then 1st row of cart item should not contain 'Summer Sale - coming'
    When I switch to 1 of tabs
    Given I am on Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Summer Sale - coming'
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item
    When I switch to 2 of tabs
    Then I should be redirected to Shop Promotion Page
    When I Refresh
    Then promotion valid description should contain 'Unpublished Promotion'
    Then I should be redirected to Shop Home Page
    And ---ROLL BACK---
    Given I am on Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Summer Sale - coming'
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

  @EAT-790-2
  Scenario: bundle over
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) tag product" to english name field
    And I click on quantity and pricing tab
    And I fill "20" to regular price field
    And I click on unlimited quantity checkbox
    And I click on settings tab
    And I input "yoyotag" to tag field
    Then I scroll down to id
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page

    Given I am on Bundle Pricing Create Page
    And I fill '(dirty data) Summer Sale - over' to name field
    And I fill '3' to promotion value field
    And I fill '30' to discounted price field

    And I select search type dropdown option included 'Search by Product Tags' of search type dropdown
    And I fill 'yoyotag' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain 'tag product'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see row of selected product

    And I click on countinue to button
    When I click on 2nd countinue to button
    And I click on start date field
    Then I should see calendar table
    When I click on last month button
    When I click on 1st chosen month available date button
    And I click on done button
    Then I click on never expires checkbox
    And I click on end date field
    Then I should see calendar table
    When I click on today button
    And I click on done button
    And I click on 3rd countinue to button
    When I click on preview button
    Then promotion name should contain 'Summer Sale - over'
    Then promotion limitations start date should contain over start time
    Then promotion limitations end date should contain over end time
    Then target group should equal to 'All Customers'
    Then discount summary should equal to 'Purchase 3 items of Selected Products for NT$30'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Summer Sale - over'
    When I click on 1st go to page button
    When I quickly switch to 2 of tabs
    Then I should be redirected to Shop Promotion Page
    Then promotion valid description should contain 'Promotion Ends'
    Then I should be redirected to Shop Home Page
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain '(dirty data) tag product'
    Given I am on Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Summer Sale - over'
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

  @EAT-790-3
  Scenario: bundle in activity check delete
    Given I am on Bundle Pricing Create Page
    And I fill '(dirty data) Summer Sale - in activity' to name field
    And I fill '1' to promotion value field
    And I fill '10' to discounted price field

    And I fill '18th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '18th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see row of selected product

    And I click on countinue to button
    When I click on 2nd countinue to button
    Then I click on never expires checkbox
    And I click on end date field
    Then I should see calendar table
    When I click on 3rd available date button
    And I click on done button
    And I click on 3rd countinue to button
    When I click on preview button
    Then promotion name should contain 'Summer Sale - in activity'
    Then promotion limitations start date should contain default start time
    Then promotion limitations end date should contain tomorrow end time
    Then target group should equal to 'All Customers'
    Then discount summary should equal to 'Purchase 1 items of Selected Products for NT$10'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Summer Sale - in activity'
    When I click on 1st go to page button
    When I quickly switch to 2 of tabs
    Then I should be redirected to Shop Promotion Page
    When I Refresh
    Then promotion name should contain 'Selected Products: Buy 1 items for NT$10'
    Then promotion name should contain promotion end time
    Then 1st product of products list should contain '18th Product for Checkout'
    When I quickly switch to 1 of tabs
    Given I am on Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Summer Sale - in activity'
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert
    When I quickly switch to 2 of tabs
    Then I should be redirected to Shop Promotion Page
    When I Refresh
    Then I should be redirected to Shop Not Found Page