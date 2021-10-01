@BaseCase @Admin @Storefront @Product @PresetPublish @productPresetPublishSettings @fixture-shop
Feature: Product preset publish time setting
  As a user of Shopline
  I create preset product and check exist to shop

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

  @EAT-750 
  Scenario: Product publish time setting
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) preset product" to english name field
    And I click on quantity and pricing tab
    And I fill "20" to member price field
    And I click on unlimited quantity checkbox
    When I click on settings tab
    Then I should see preset publish date field
    When I click on preset publish date button
    And I click on today button
    And I click on now button
    And I click on done button
    Then I should not see calendar table
    Then I scroll down to add button
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    
    Given I am on Product Index Page
    Then 1st row of product list should contain "preset product"
    Then 1st row of regular price list should not contain "20"
    Then 1st row of publish button should contain "Unpublish"
    When I click on 1st row of product checkbox
    And I select assign to categories of bulk actions dropdown
    And I click on categories checkbox
    And I click on assign button
    And I should see confirmation popover
    And I click on confirm bulk button
    Then I should see alert

    Given I am on Category List Page
    When I click view products button of categories list for the same order of row of categories list included "Featured (Show on homepage)"
    Then I should be redirected to Category View Products Page
    Then 1st row of selected product list should contain "preset product"

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
    When I drag product category button to top location
    And I click on category checkbox
    And I click on ok button
    Then I should see product category item
    Then product category item should contain "preset product"
    And I click on menu button
    Then I should see side menu
    When I drag single product button to top location
    And I check and click empty single product
    And I wait for 3 seconds for loading
    Then I should see popup
    And I input "preset product" to popup search field
    Then 1st popup product should contain 'preset product'
    And I click on 1st checkbox of product list
    And I click on popup save button
    Then I should see single product
    And I click on save button
    And I wait for 5 seconds for loading
    Then I should see view page button
    Then I click on view page button
    When I switch to 2 of tabs
    Then I should be redirected to Shop Advanced Page
    And I wait for 5 seconds for loading
    Then I should see product
    Then 1st product should contain "preset product"
    Then 2nd product should contain "preset product"

    Given I am on Shop Product Index Page
    Then product of products list should contain "preset product"
    When I input "preset product" to search field
    Then 1st product of products list should contain "preset product"
    When I click on 1st product of products list
    When I click on row of categories
    Then title should contain "Featured"
    Then product of products list should contain "preset product"

    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain '(dirty data) preset product'

    Then I switch to 1 of tabs
    Then I should be redirected to Page Builder Page
    Then I click on return to admin button
    When I should be redirected to Pages Page
    When I click on delete button
    Then I should see popover
    And I click on confirm button
    Then I click on ok button