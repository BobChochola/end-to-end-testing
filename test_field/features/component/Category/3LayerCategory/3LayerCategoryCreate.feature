@BaseCase @Admin @Category @3LayerCategory @3LayerCategoryCreate @EAT-747
Feature: Create 3 layer category
  As a merchant
  I wanna create 3-layer category for different product

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
    And I click on basic info update button
    Then I should be redirected to Dashboard Page

  @EAT-747-1 @fixture-product
  Scenario: create addon item search by 3 layer category
    Given I am on Category Create Page
    And I fill "(dirty data) First Category" to category name field
    And I click on add button
    Then I should be redirected to Category List Page
    Then 2nd row of categories list should contain "First Category"
    Given I am on Category Create Page
    And I fill "(dirty data) Second Category" to category name field
    And I click on add button
    Then I should be redirected to Category List Page
    Then 3rd row of categories list should contain "Second Category"
    When I click on subcategory button of categories list
    Then 1st row of subcategories list should contain 'First Category'
    And I click on subcategory button of categories list
    Then 2nd row of subcategories list should contain 'Second Category'
    Then I should see third layer button
    And I click on third layer button
    Then 1st row of subcategories list should contain 'Second Category'
    Given I am on Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st row of product list should contain "1st Product for Checkout"
    Then I check row of publish button and click included 'Publish'
    When I click on 1st row of product checkbox
    And I select assign to categories of bulk actions dropdown
    And I click on 3rd categories checkbox
    And I click on assign button
    And I should see confirmation popover
    And I click on confirm bulk button
    Then I should see alert
    Given I am on Addon Create Page
    When I click on tab included "Product Level Settings"
    Then I should see search product by dropdown
    When I select search product by dropdown option included 'Search by Categories' of search product by dropdown
    When I select categories list dropdown option included 'Second Category' of categories list dropdown
    And I click on search product button
    And I should see checkbox of product list
    And I click on 1st checkbox of product list
    And I click on confirm button
    Then I should not see checkbox of product list
    And I click on same addon price checkbox
    And I fill "20" to addon price field
    And I click on tab included "Add-on Item Info"
    Then I should see english name field
    And I fill "(dirty data) Add-on Item 3 Layer" to english name field
    When I pick addon photo to addon photo selector
    Then I should see delete photo button
    And I click on unlimited checkbox
    Then I click on add button
    Then I should see alert
    And ---ROLL BACK---
    Given I am on Addon Index Page
    When I click on 1st select checkbox of addon list
    When I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then addon list should not contain 'Add-on Item 3 Layer'
    Given I am on Category List Page
    When I click on delete subcategory button of categories list
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see 1 delete button of categories list

  @AdvancedPage @EAT-747-2 @fixture-product
  Scenario: create advanced page and select 3 layer category
    Given I am on Category Create Page
    And I fill "(dirty data) First Category" to category name field
    And I click on add button
    Then I should be redirected to Category List Page
    Then 2nd row of categories list should contain "First Category"
    Given I am on Category Create Page
    And I fill "(dirty data) Second Category" to category name field
    And I click on add button
    Then I should be redirected to Category List Page
    Then 3rd row of categories list should contain "Second Category"
    When I click on subcategory button of categories list
    Then 1st row of subcategories list should contain 'First Category'
    And I click on subcategory button of categories list
    Then 2nd row of subcategories list should contain 'Second Category'
    Then I should see third layer button
    And I click on third layer button
    Then 1st row of subcategories list should contain 'Second Category'
    Given I am on Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st row of product list should contain "1st Product for Checkout"
    Then I check row of publish button and click included 'Publish'
    When I click on 1st row of product checkbox
    And I select assign to categories of bulk actions dropdown
    And I click on 3rd categories checkbox
    And I click on assign button
    And I should see confirmation popover
    And I click on confirm bulk button
    Then I should see alert
    Given I am on Pages Page
    Then I should see add advanced page button
    When I click on add advanced page button
    Then I should be redirected to Advanced Select Page
    When I click on 8th template
    Then I should be redirected to Page Builder Page
    Then I should see skip the guide button
    When I click on skip the guide button
    And I click on edit category button
    Then I should see side menu
    Then I should see category checkbox
    When I click on 3rd category checkbox
    Then I should see ok button
    Then I should not see loading icon
    When I click on ok button
    And I click on save button
    Then I should see view page button
    When I click on view page button
    And I switch to 2 of tabs
    Then I should be redirected to Shop Advanced Page
    Then I should see 1 product
    Then 1st product should contain '1st Product for Checkout'
    And ---ROLL BACK---
    Then I switch to 1 of tabs
    Then I should be redirected to Page Builder Page
    Then I click on return to admin button
    When I should be redirected to Pages Page
    When I click on delete button
    Then I should see popover
    And I click on confirm button
    Then I click on ok button
    Given I am on Category List Page
    When I click on delete subcategory button of categories list
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see 1 delete button of categories list

  @Storefront @EAT-747-3 @theme-ultra-chic @fixture-shop
  Scenario: create 3 layer category and check on storefront
    Given I am on Category Create Page
    And I fill "(dirty data) First Category" to category name field
    And I click on add button
    Then I should be redirected to Category List Page
    Then 2nd row of categories list should contain "First Category"
    Given I am on Category Create Page
    And I fill "(dirty data) Second Category" to category name field
    And I click on add button
    Then I should be redirected to Category List Page
    Then 3rd row of categories list should contain "Second Category"
    When I click on subcategory button of categories list
    Then 1st row of subcategories list should contain 'First Category'
    And I click on subcategory button of categories list
    Then 2nd row of subcategories list should contain 'Second Category'
    Then I should see third layer button
    And I click on third layer button
    Then 1st row of subcategories list should contain 'Second Category'
    Given I am on Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st row of product list should contain "1st Product for Checkout"
    Then I check row of publish button and click included 'Publish'
    When I click on 1st row of product checkbox
    And I select assign to categories of bulk actions dropdown
    And I click on 3rd categories checkbox
    And I click on assign button
    And I should see confirmation popover
    And I click on confirm bulk button
    Then I should see alert
    Given I am on Shop Product Index Layout V Two Page
    When I open new tab and redirect to Second Category page
    Then I should be redirected to Shop Product Index Layout V Two Page
    Then breadcrumb should contain 'First Category'
    Then breadcrumb should contain 'Second Category'
    And ---ROLL BACK---
    Given I am on Category List Page
    When I click on delete subcategory button of categories list
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see 1 delete button of categories list