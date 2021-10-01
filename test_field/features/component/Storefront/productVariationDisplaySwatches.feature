@BaseCase @ImageService @Admin @Storefront @Product @Setting @productVariationDisplaySwatches @fixture-shop @EAT-767
Feature: check swatches on PDP and instant add to cart popup
  As a guest
  I want to select product variation by swatches type

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    Then I should see successful login
    When I check and click no thanks button
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

  @EAT-767-1
  Scenario: one layer variation check swatches
    Given I am on Product Setting Page
    When I click on variation display label radio
    And I click on update button
    Then I should see alert
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) single variation label" to english name field
    And I click on quantity and pricing tab
    And I fill "200" to regular price field
    And I click on variations tab
    When I click on variations toggle
    And I input "R" to add options field
    And I input "G" to add options field
    And I fill "10" to 1st row of variation quantity field
    And I fill "0" to 2nd row of variation quantity field
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page

    Given I am on Product Index Page
    When I click on 1st row of product checkbox
    And I select assign to categories of bulk actions dropdown
    And I click on 1st categories checkbox
    And I click on assign button
    And I should see confirmation popover
    And I click on confirm bulk button
    Then I should see alert

    Given I am on Pages Page
    When I click on add advanced page button
    Then I should be redirected to Advanced Select Page
    When I click on 8th template
    Then I should be redirected to Page Builder Page
    Then I should see skip the guide button
    When I click on skip the guide button
    And I click on edit category button
    Then I should see category checkbox
    When I click on 1st category checkbox
    Then I should see ok button
    And I click on ok button
    And I click on save button
    Then I should see view page button
    And I click on view page button
    And I switch to 2 of tabs
    Then I should be redirected to Shop Advanced Page
    When I scroll down to product
    And I hover over 1st product
    And I click on 1st add to cart button
    Then I should see popover
    Then I click on popover add to cart button
    Then I should see cart panel
    When I click on close cart panel area
    And I hover over 1st product
    And I click on 1st add to cart button
    Then I should see popover
    When I click on popover variation label included 'G'
    Then popover product info should contain 'SOLD OUT'
    Then I should see popover notify stock button

    Given I am on Shop Product Index Page
    When I input "single variation label" to search field
    Then 1st product of products list should contain 'single variation label'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see variation label
    When I click on variation label included 'R'
    Then I should see add to cart button
    When I click on add to cart button
    Then I should see cart panel
    Then cart item list should contain 'single variation label'
    When I click on close cart panel area
    And I click on variation label included 'G'
    Then product info should contain 'Sold Out'
    Then I should see notify when in stock button
    And ---ROLL BACK---
    Given I am on Pages Page
    When I click on delete button
    Then I should see popover
    And I click on confirm button
    Then I click on ok button
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then 1st row of product list should not contain "single variation label"
    Given I am on Product Setting Page
    When I click on variation display dropdown radio
    And I click on update button
    Then I should see alert

  @EAT-767-2
  Scenario: two layer variation check swatches
    Given I am on Product Setting Page
    When I click on variation display label radio
    And I click on update button
    Then I should see alert
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    When I pick product photo to product photo selector
    Then I should see 2 delete photo button
    Then I scroll down to id
    And I click on info tab
    And I fill "(dirty data) two variation label" to english name field
    And I click on additional product photo collapse
    Then I scroll down to additional product photo collapse
    When I pick product detail photo to product detail photo selector
    Then I should see delete detail photo button
    When I pick product detail photo to product detail photo selector
    Then I should see 2 delete detail photo button
    Then I scroll down to add button
    And I click on variations tab
    When I click on variations toggle
    And I input "R" to add options field
    And I input "G" to add options field
    When I click on add variation button
    And I input "S" to 2nd add options field
    And I input "M" to 2nd add options field
    And I click on variations same price checkbox
    And I fill "20" to 1st row of variation price field
    And I fill "10" to 2nd row of variation price field
    And I fill "30" to 3rd row of variation price field
    And I fill "40" to 4th row of variation price field
    And I fill "20" to 1st row of variation quantity field
    And I fill "0" to 2nd row of variation quantity field
    And I fill "0" to 3rd row of variation quantity field
    And I fill "40" to 4th row of variation quantity field
    Then I scroll down to breadcrumb
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain "two variation label"
    Then 1st row of regular price list should contain "10"
    Then 1st row of quantity list should contain "60"
    When I click on 1st row of product checkbox
    And I select assign to categories of bulk actions dropdown
    And I click on 1st categories checkbox
    And I click on assign button
    And I should see confirmation popover
    And I click on confirm bulk button
    Then I should see alert

    Given I am on Pages Page
    When I click on add advanced page button
    Then I should be redirected to Advanced Select Page
    When I click on 8th template
    Then I should be redirected to Page Builder Page
    Then I should see skip the guide button
    When I click on skip the guide button
    And I click on edit category button
    Then I should see category checkbox
    When I click on 1st category checkbox
    Then I should see ok button
    And I click on ok button
    And I click on save button
    Then I should see view page button
    And I click on view page button
    And I switch to 2 of tabs
    Then I should be redirected to Shop Advanced Page
    When I scroll down to product
    And I hover over 1st product
    And I click on 1st add to cart button
    Then I should see popover
    Then I click on popover add to cart button
    Then I should see cart panel
    When I click on close cart panel area
    And I hover over 1st product
    And I click on 1st add to cart button
    Then I should see popover
    When I click on popover variation label included 'R'
    When I click on popover variation label included 'M'
    Then popover product info should contain 'SOLD OUT'
    Then I should see popover notify stock button

    Given I am on Shop Product Index Page
    When I input "two variation label" to search field
    Then 1st product of products list should contain 'two variation label'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see variation label
    When I click on variation label included 'R'
    When I click on variation label included 'S'
    Then I should see add to cart button
    When I click on add to cart button
    Then I should see cart panel
    Then cart item list should contain 'two variation label'
    When I click on close cart panel area
    And I click on variation label included 'G'
    Then product info should contain 'Sold Out'
    Then I should see notify when in stock button
    And ---ROLL BACK---
    Given I am on Pages Page
    When I click on delete button
    Then I should see popover
    And I click on confirm button
    Then I click on ok button
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then 1st row of product list should not contain "two variation label"
    Given I am on Product Setting Page
    When I click on variation display dropdown radio
    And I click on update button
    Then I should see alert