@PromotionBaseCase @Admin @Promotion @checkThePickerUI @fixture-product @fixture-promotion-basecase-minimum-items @EAT-1136 @C25688
Feature: Check the picker UI for promotion
  As a user of Shopline
  I want to check the UI of picker
  while building up the promotion

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

  @EAT-1136-1
  Scenario: check the picker for selected product promotion
    Given I am on Promotion Create Page
    And I click on selected products condition checkbox
    Then I should see search by dropdown
    When I click on search by dropdown
    Then 1st search by dropdown option should contain 'Search by Keywords'
    Then 2nd search by dropdown option should contain 'Search by Product Tags'
    Then 3rd search by dropdown option should contain 'Search by Categories'
    When I click on search by dropdown option included 'Search by Product Tags'
    And I input 'test' to search field
    And I click on search button
    Then I should see select product popup
    Then I should see 2 checkbox of product list
    Then I should see select all checkbox
    When I click on select all checkbox
    And I click on popup confirm button
    Then I should see 2 row of selected product
    Then selected products should contain '21st Product for Checkout'
    Then selected products should contain 'Out Of Stock'

  @EAT-1136-2
  Scenario: check the picker for excluded product in category promotion
    Given I am on Promotion Create Page
    And I click on selected categories condition checkbox
    Then I should see category checkbox
    When I click on category checkbox included 'Featured Products'
    Then I should see select excluded product
    When I click on select excluded product
    Then I should see select product popup
    Then I should see popup search dropdown
    When I click on popup search dropdown
    Then 1st popup search dropdown option should contain 'All'
    Then 2nd popup search dropdown option should contain 'Tagged with'
    When I click on popup search dropdown option included 'Tagged with'
    And I input 'test' to popup search field
    Then I should see 2 checkbox of product list
    Then I should see select all checkbox
    When I click on select all checkbox
    And I click on popup confirm button
    Then I should see 2 row of selected product
    Then selected products should contain '21st Product for Checkout'
    Then selected products should contain 'Out Of Stock'

  @EAT-1136-3 
  Scenario: check the picker for selected product free shipping
    Given I am on Category Create Page
    And I fill '(dirty data) New Category' to category name field
    And I click on add button
    Then I should be redirected to Category List Page
    Then 2nd row of categories list should contain 'New Category'

    Given I am on Product Index Page
    When I click row of product checkbox for the same order of row of product list included '21st Product for Checkout'
    And I click row of product checkbox for the same order of row of product list included 'Out Of Stock'
    And I select assign to categories of bulk actions dropdown
    And I click on 2nd row of assigned categories
    And I click on assign button
    Then I should see confirmation popover
    When I click on confirm bulk button
    Then I should see alert

    Given I am on Free Shipping Create Page
    When I click on selected products condition checkbox
    Then I should see search dropdown
    When I click on search dropdown
    Then I should see search by tag
    Then I should see search by categories
    When I click on search by categories
    Then I should see category dropdown
    When I select category dropdown option included 'New Category' of category dropdown
    And I click on search button
    Then I should see select product popup
    And I should see select all checkbox
    When I click on select all checkbox
    And I click on popup confirm button
    Then I should see 2 row of selected product
    Then selected products should contain '21st Product for Checkout'
    Then selected products should contain 'Out Of Stock'

    And ---ROLL BACK---
    Given I am on Category List Page
    Then 2nd row of categories list should contain "(dirty data) New Category"
    When I click delete button of categories list for the same order of row of categories list included "(dirty data) New Category"
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see 1 delete button of categories list

    Given I am on Product Index Page
    When I click row of product checkbox for the same order of row of product list included '21st Product for Checkout'
    And I click row of product checkbox for the same order of row of product list included 'Out Of Stock'
    And I select assign to categories of bulk actions dropdown
    And I click on 1st row of assigned categories
    And I click on assign button
    Then I should see confirmation popover
    When I click on confirm bulk button
    Then I should see alert

  @EAT-1136-4
  Scenario: check the picker for bundle pricing promotion
    Given I am on Bundle Pricing Create Page
    Then I should see search type dropdown
    When I click on search type dropdown
    Then 1st search type dropdown option should contain 'Search by Keywords'
    Then 2nd search type dropdown option should contain 'Search by Product Tags'
    Then 3rd search type dropdown option should contain 'Search by Categories'
    When I click on search type dropdown option included 'Search by Keywords'

    And I fill '1st' to search field
    And I click on search product button
    Then I should see select product popup
    Then I should see select all checkbox
    And I click on select all checkbox
    When I click on popup confirm button
    Then I should see 1 row of selected product
    Then selected products should contain '1st Product for Checkout'

  @EAT-1136-5
  Scenario: check the picker for bundle group pricing promotion
    Given I am on Bundle Group Create Page
    Then select product button should contain 'Select Products in Group A'
    When I click on select product button
    Then I should see select product popup
    Then I should see search product dropdown
    When I click on search product dropdown
    Then 1st search product dropdown option should contain 'All'
    Then 2nd search product dropdown option should contain 'Tagged with'
    Then 3rd search product dropdown option should contain 'Categories'
    When I click on search product dropdown option included 'All'
    And I input '4th' to search field
    Then 1st product list should contain '4th Product for Checkout'
    Then I should see 1 checkbox of product list
    And I click on select all checkbox
    And I click on popup confirm button
    Then I should see 1 row of selected product
    Then selected products should contain '4th Product for Checkout'
    When I click on group b tab
    Then select product button should contain 'Select Products in Group B'
    When I click on select product button
    Then I should see select product popup
    Then I should see search product dropdown
    When I click on search product dropdown
    Then 1st search product dropdown option should contain 'All'
    Then 2nd search product dropdown option should contain 'Tagged with'
    Then 3rd search product dropdown option should contain 'Categories'
    When I click on search product dropdown option included 'Tagged with'
    And I input 'test' to search field
    Then I should see 2 product list
    And I click on select all checkbox
    And I click on popup confirm button
    Then I should see 2 row of selected product
    Then selected products should contain '21st Product for Checkout'
    Then selected products should contain 'Out Of Stock'

  @EAT-1136-6
  Scenario: check the picker for assigning add-on item to main product
    Given I am on Category Create Page
    And I fill '(dirty data) New Category' to category name field
    And I click on add button
    Then I should be redirected to Category List Page

    Given I am on Product Index Page
    When I input "21st Product for Checkout" to search field
    Then 1st row of product list should contain '21st Product for Checkout'
    When I click on row of product checkbox
    And I select assign to categories of bulk actions dropdown
    And I click row of assigned categories for the same order of row of categories list included 'New Category'
    And I click on assign button
    Then I should see confirmation popover
    When I click on confirm bulk button
    Then I should see alert

    When I input "Out Of Stock" to search field
    Then 1st row of product list should contain 'Out Of Stock'
    When I click on row of product checkbox
    And I select assign to categories of bulk actions dropdown
    And I click row of assigned categories for the same order of row of categories list included 'New Category'
    And I click on assign button
    Then I should see confirmation popover
    When I click on confirm bulk button
    Then I should see alert

    Given I am on Addon Create Page
    When I click on tab included 'Product Level Settings (Optional)'
    Then I should see search product by dropdown
    When I click on search product by dropdown
    Then 2nd search product by dropdown option should contain 'Search by Keywords'
    Then 3rd search product by dropdown option should contain 'Search by Product Tags'
    Then 4th search product by dropdown option should contain 'Search by Categories'
    When I click on search product by dropdown option included 'Search by Categories'
    Then I should see categories list dropdown
    When I select categories list dropdown option included 'New Category' of categories list dropdown
    And I click on search product button
    Then I should see select product popup
    Then I should see 2 product of popover list
    Then I should see select all button
    When I click on select all button
    And I click on confirm button
    Then I should not see select product popup
    Then I should see 2 row of products
    Then selected products should contain '21st Product for Checkout'
    Then selected products should contain 'Out Of Stock'
    
    And ---ROLL BACK---
    Given I am on Category List Page
    When I click delete button of categories list for the same order of row of categories list included "(dirty data) New Category"
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button