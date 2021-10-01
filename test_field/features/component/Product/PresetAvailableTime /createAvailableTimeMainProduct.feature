@BaseCase @ImageService @Admin @Storefront @Product @PresetAvailableTime  @createAvailableTimeMainProduct @EAT-740 @fixture-shop
Feature: Create never expire from tomorrow product and check front shop - no variation
  As a user of Shopline
  I want to create available time products
  So that my customer can see available time info

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

  @EAT-740-1
  Scenario: main product and never expire from tomorrow
    Given I am on Product Create Page
    When I Refresh
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) main product for avaiable scheduled time" to english name field
    And I click on quantity and pricing tab
    And I fill "20" to regular price field
    And I click on unlimited quantity checkbox
    When I click on settings tab
    And I click on preset available time toggle
    Then I should see available start date field
    When I click on available start date field
    Then I should see calendar table
    When I click on 3rd available date button
    And I click on done button
    When I click on never expires checkbox
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    Then I should see row of product photo list
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain "main product for avaiable scheduled time"
    Then 1st row of regular price list should contain "20"
    Then 1st row of quantity list should contain "∞"
    When I hover over 1st row of product available time icon
    Then 1st row of product list should contain available never expired time

    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'

    Given I am on Shop Product Index Page
    Then 1st product of products list should contain 'COMING SOON'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain 'COMING SOON'
    When I click on add to wishlist button
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Wishlist'
    Then I should be redirected to Shop Wishlist Page
    Then 1st row of wishlist should contain 'main product for avaiable scheduled time'
    Then 1st row of wishlist should contain 'COMING SOON'
    When I click on 1st row of delete button
    Then I should see popup
    When I click on confirm button
    Then I should see continue shopping button

    Given I am on Express Checkout Pages Page
    When I click on create button
    Then I should be redirected to Express Checkout Builder Page
    Then I should see skip the guide button
    When I click on skip the guide button
    Then I should see product picker
    Then I should see product of product list
    When I click on 1st product of product list
    And I click on popup save button
    Then I should be on Express Checkout Builder Page
    When I click on save page button
    And I should see view page button
    And I click on view page button
    And I switch to 2 of tabs
    Then I should be on Shop Express Checkout Page
    Then buy now button should contain 'COMING SOON'

    Given I am on Pages Page
    Then I should see add advanced page button
    When I click on add advanced page button
    Then I should be redirected to Advanced Select Page
    When I click on 8th template
    Then I should be redirected to Page Builder Page
    And I click on edit category button
    Then I should see side menu
    When I click on 1st category checkbox
    Then I should see ok button
    Then I should not see loading icon
    When I click on ok button
    And I click on save button
    Then I should see view page button
    When I click on view page button
    And I switch to 3 of tabs
    Then I should be redirected to Shop Advanced Page
    And 1st product should contain 'COMING SOON'

    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain '(dirty data) main product for avaiable scheduled time'
    Given I am on Pages Page
    When I click on delete button
    Then I should see popover
    And I click on confirm button
    Then I click on ok button
    Given I am on Express Checkout Pages Page
    When I click on delete button
    Then I should see popup
    And I click on reconfirm checkbox
    And I click on popup ok button
    Then I should not see delete button