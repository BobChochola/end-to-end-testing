@BaseCase @Admin @Storefront @Domain @404Redirect @addPagesTo404Redirect @fixture-shop
Feature: add Pages To 404 Redirect
  As a merchant
  I want to redirect to shop home page if my product or page was delete/unpublish
  So that I won't lost my shop’s page views

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
    
    Given I am on Domain Settings Page
    When I click on redirect tab included "404 Redirect"
    And I select redirect to home option included "Auto redirect to shop homepage" of not found page dropdown
    And I wait for 3 seconds for loading
    And I click on update page button
    Then I should be redirected to Dashboard Page

  @addPagesTo404Redirect-1
  Scenario: Add 404 Redirect with pages page
    Given I am on Pages Page
    Then I should see add advanced page button
    When I click on add advanced page button
    Then I should be redirected to Advanced Select Page
    When I click on 8th template
    Then I should be redirected to Page Builder Page
    Then I should see skip the guide button
    When I click on skip the guide button
    And I click on menu button
    Then I should see side menu
    When I click on page setting button included "Page Title"
    Then I should see english title field
    And I fill "(dirty data) 404-redirection" to english title field
    And I click on menu button
    And I click on save button
    And I should see return to admin button
    Then I click on return to admin button
    Then I should be redirected to Pages Page
    Then I should see delete button
    Then page list should contain "404-redirection"
    Given I am on Menu Navigation Page
    And I should see add button
    And I click on add button
    Then I should be redirected to Menu Navigation Create Page
    And I select menu dropdown option included "Page" of menu type list dropdown
    And I select page dropdown option included "404-redirection" of page list dropdown
    And I click on add button
    Then I should be redirected to Menu Navigation Page
    Then 4th row of menu list should contain "404-redirection"
    Given I am on Shop Home Page
    Then 4th navigation bar should contain "404-redirection"
    Given I am on Pages Page
    And I click on delete button
    Then I should see popover
    And I click on confirm button
    And I click on ok button
    Given I am on Shop Home Page
    And I click on navigation bar included "404-redirection"
    Then I should be redirected to Shop Home Page
    And ---ROLL BACK---
    Given I am on Menu Navigation Page
    And I click on 4th delete button
    Then I should see confirm popover
    And I click on delete checkbox
    And I click on ok button
    Then I should not see confirm popover
    Given I am on Domain Settings Page
    When I click on redirect tab included "404 Redirect"
    Then I should see not found page dropdown
    When I select not found page dropdown option included "Stay on 404 page" of not found page dropdown
    And I click on update page button
    Then I should be redirected to Dashboard Page

  @addPagesTo404Redirect-2
  Scenario: Add 404 Redirect with blog post page
    Given I am on Store App Page
    When I check app panel block and click included 'Blog'
    And I check and click install button
    Given I am on Blog Posts Page
    When I wait for 10 seconds for loading
    When I check and click activate button
    And I should see add posts button
    When I click on add posts button
    Then I should be redirected to Blog Posts Create Page
    And I fill 'blog title' to post title field
    And I fill 'blog content' to post content field
    When I click on save button
    Given I am on Menu Navigation Page
    And I should see add button
    And I click on add button
    Then I should be redirected to Menu Navigation Create Page
    And I select menu dropdown option included "Blog Posts" of menu type list dropdown
    And I select page dropdown option included "blog title" of page list dropdown
    And I click on add button
    Then I should be redirected to Menu Navigation Page
    Then I should see 4 row of menu list
    Then 4th row of menu list should contain "blog title"
    Given I am on Shop Home Page
    Then 4th navigation bar should contain "Blog Title"
    Given I am on Blog Posts Page
    And I click on 1st row of unpublish button
    Then I should see row of publish button
    Given I am on Shop Home Page
    And I click on navigation bar included "Blog Title"
    Then I should be redirected to Shop Home Page
    And ---ROLL BACK---
    Given I am on Menu Navigation Page
    And I click on 4th delete button
    Then I should see confirm popover
    And I click on delete checkbox
    And I click on ok button
    Then I should not see confirm popover
    Given I am on Blog Posts Page
    Then 1st row of blog list should contain 'blog title'
    Then I click on 1st delete button
    Then blog list table should not contain 'blog title'
    Given I am on Domain Settings Page
    When I click on redirect tab included "404 Redirect"
    Then I should see not found page dropdown
    When I select stay on 404 option included "Stay on 404 page" of not found page dropdown
    And I click on update page button
    Then I should be redirected to Dashboard Page

  @addPagesTo404Redirect-3 @fixture-product
  Scenario: Add 404 Redirect with product page
    Given I am on Dashboard Page
    When I click on View my shop button
    When I switch to 2 of tabs
    Then I should be redirected to Shop Home Page
    When I click on shop all button
    Then I should be redirected to Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain "1st Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I switch to 1 of tabs
    Given I am on Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st row of product list should contain "1st Product for Checkout"
    Then I should be redirected to Product Index Page
    Then I should see row of publish button
    When I click on 1st row of publish button
    When I switch to 2 of tabs
    Then I should be redirected to Shop Product Show Page
    And I Refresh
    Then I should be redirected to Shop Home Page
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st row of product list should contain "1st Product for Checkout"
    When I click on 1st row of publish button
    Given I am on Domain Settings Page
    When I click on redirect tab included "404 Redirect"
    Then I should see not found page dropdown
    When I select stay on 404 option included "Stay on 404 page" of not found page dropdown
    And I click on update page button
    Then I should be redirected to Dashboard Page