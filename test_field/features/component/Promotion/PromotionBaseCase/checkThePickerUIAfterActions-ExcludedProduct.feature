@PromotionBaseCase @Admin @Promotion @checkThePickerUIAfterActions-ExcludedProduct @EAT-1138 @C25690

Feature: Check the picker UI after actions - excluded product
  As a user of Shopline
  I check the picker UI for promotion after actions to product

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

    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill '(dirty data)New Product' to english name field
    And I click on quantity and pricing tab
    And I fill '10' to regular price field
    And I click on unlimited quantity checkbox
    And I click on settings tab
    And I input 'new' to tag field
    And I scroll down to id
    And I click on add button
    Then I should see alert

  @EAT-1138-2
  Scenario: check the picker UI after actions for excluded product in category promotion
    Given I am on Category Create Page
    And I fill '(dirty data)New Category' to category name field
    And I click on add button
    Then I should be redirected to Category List Page
    Then 2nd row of categories list should contain '(dirty data)New Category'

    Given I am on Product Index Page
    When I click row of product checkbox for the same order of row of product list included '(dirty data)New Product'
    And I select assign to categories of bulk actions dropdown
    And I click on 2nd row of assigned categories
    And I click on assign button
    Then I should see confirmation popover
    When I click on confirm bulk button
    Then I should see alert

    # add
    Given I am on Promotion Create Page
    And I click on selected categories condition checkbox
    Then I should see category checkbox
    When I click on category checkbox included '(dirty data)New Category'
    Then I should see select excluded product
    When I click on select excluded product
    Then I should see select product popup
    When I select popup search dropdown option included 'Tagged with' of popup search dropdown
    And I input 'new' to popup search field
    Then I should see checkbox of product list
    Then product of popover list should contain '(dirty data)New Product'
    When I click on checkbox of product list
    And I click on popup confirm button
    Then I should see row of selected product
    Then row of selected product should contain '(dirty data)New Product'
    
    # edit
    Given I am on Product Index Page
    When I click row of edit button for the same order of row of product list included '(dirty data)New Product'
    Then I should be redirected to Product Edit Page
    When I click on info tab
    And I fill '(dirty data)New Edit Product' to english name field
    And I scroll down to id
    And I click on add button
    Then I should be redirected to Product Index Page
    Then I should see alert
    Then 1st row of product list should contain '(dirty data)New Edit Product'

    Given I am on Promotion Create Page
    And I click on selected categories condition checkbox
    Then I should see category checkbox
    When I click on category checkbox included '(dirty data)New Category'
    Then I should see select excluded product
    When I click on select excluded product
    Then I should see select product popup
    And I input '(dirty data)New Edit Product' to popup search field
    Then I should see checkbox of product list
    Then product of popover list should contain '(dirty data)New Edit Product'
    When I click on checkbox of product list
    And I click on popup confirm button
    Then I should see row of selected product
    Then row of selected product should contain '(dirty data)New Edit Product'

    # unpublish
    Given I am on Product Index Page
    When I click row of publish button for the same order of row of product list included '(dirty data)New Edit Product'
    And I wait for 3 seconds for loading
    Then row of product list included '(dirty data)New Edit Product' and same order of row of publish button should also contain 'Publish'

    Given I am on Promotion Create Page
    And I click on selected categories condition checkbox
    Then I should see category checkbox
    When I click on category checkbox included '(dirty data)New Category'
    Then I should see select excluded product
    When I click on select excluded product
    Then I should see select product popup
    And I input '(dirty data)New Edit Product' to popup search field
    Then I should see checkbox of product list
    Then product of popover list should contain '(dirty data)New Edit Product'
    When I click on checkbox of product list
    And I click on popup confirm button
    Then I should see row of selected product
    Then row of selected product should contain '(dirty data)New Edit Product'

    # publish
    Given I am on Product Index Page
    When I click row of publish button for the same order of row of product list included '(dirty data)New Edit Product'
    And I wait for 3 seconds for loading
    Then row of product list included '(dirty data)New Edit Product' and same order of row of publish button should also contain 'Unpublish'

    Given I am on Promotion Create Page
    And I click on selected categories condition checkbox
    Then I should see category checkbox
    When I click on category checkbox included '(dirty data)New Category'
    Then I should see select excluded product
    When I click on select excluded product
    Then I should see select product popup
    And I input '(dirty data)New Edit Product' to popup search field
    Then I should see checkbox of product list
    Then product of popover list should contain '(dirty data)New Edit Product'
    When I click on checkbox of product list
    And I click on popup confirm button
    Then I should see row of selected product
    Then row of selected product should contain '(dirty data)New Edit Product'

    Then ---I NEED TO ROLLBACK row of selected product---

    # delete
    Given I am on Product Index Page
    When I input '(dirty data)New Edit Product' to search field
    Then 1st row of product list should contain '(dirty data)New Edit Product'
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    When I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain '(dirty data)New Edit Product'

    Given I am on Promotion Create Page
    And I click on selected categories condition checkbox
    Then I should see category checkbox
    When I click on category checkbox included '(dirty data)New Category'
    Then I should see select excluded product
    When I click on select excluded product
    Then I should see select product popup
    And I input '(dirty data)New Edit Product' to popup search field
    Then I should not see checkbox of product list

    And ---ROLL BACK---
    Given I am on Category List Page
    When I click delete button of categories list for the same order of row of categories list included "(dirty data)New Category"
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see 1 delete button of categories list