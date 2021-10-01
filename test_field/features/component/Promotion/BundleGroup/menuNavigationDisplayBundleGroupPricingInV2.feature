@BaseCase @Admin @Storefront @Promotion @BundleGroup @Navigation @Menu @menuNavigationDisplayBundleGroupPricingInV2
@fixture-product @fixture-shop @theme-kingsman @fixture-promotion
Feature: Create a Bundle Group Pricing menu Navigation and check the promotion page on shop (kingsman theme)
  As a merchant
  When I want to create bundle group promotion and display on menu navigation for my customer.

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

    Given I am on Bundle Pricing Index Page
    Then 1st tab should contain 'Bundle Pricing'
    Then 2nd tab should contain 'Bundle Group Pricing'
    When I select add promotion dropdown option included 'Bundle Group' of add promotion dropdown
    Then I should be redirected to Bundle Group Create Page
    And I fill '(dirty data) Buy 2 in Group A & 1 in Group B for $49' to name field
    When I fill '2' to group a field
    When I fill '1' to group b field
    When I fill '49' to price field
    Then discount summary should contain 'Purchase 2 items of Selected Products in Group A and 1 items of Selected Products in Group B for NT$49'
    And I should see group a tab
    Then select product button should contain 'Select Products in Group A'
    When I click on select product button
    Then I should see select product popup
    Then I input '6th Product for Checkout' to search field
    Then 1st product list should contain '6th Product for Checkout'
    Then I click on 1st checkbox of product list
    Then I input '10th Product for Checkout' to search field
    Then 1st product list should contain '10th Product for Checkout'
    Then I click on 1st checkbox of product list
    Then I input '12th Product for Checkout' to search field
    Then 1st product list should contain '12th Product for Checkout'
    Then I click on 1st checkbox of product list
    Then I input '13th Product for Checkout' to search field
    Then 1st product list should contain '13th Product for Checkout'
    Then I click on 1st checkbox of product list
    When I click on popup confirm button
    Then selected products should contain '6th Product for Checkout'
    Then selected products should contain '10th Product for Checkout'
    Then selected products should contain '12th Product for Checkout'
    Then selected products should contain '13th Product for Checkout'
    When I click on group b tab
    Then select product button should contain 'Select Products in Group B'
    When I click on select product button
    Then I should see select product popup
    When I input '17th Product for Checkout' to search field
    Then 1st product list should contain '17th Product for Checkout'
    Then I click on 1st checkbox of product list
    When I input '18th Product for Checkout' to search field
    Then 1st product list should contain '18th Product for Checkout'
    Then I click on 1st checkbox of product list
    When I click on popup confirm button
    Then selected products should contain '17th Product for Checkout'
    Then selected products should contain '18th Product for Checkout'
    When I click on 1st countinue to button
    When I click on 2nd countinue to button
    When I click on 3rd countinue to button
    Then I scroll down to preview button
    When I click on preview button
    Then target group should contain 'All Customers'
    Then promotion name should contain 'Buy 2 in Group A & 1 in Group B for $49'
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    When I click on preview group a tab
    Then preview selected products should contain '6th Product for Checkout'
    Then preview selected products should contain '10th Product for Checkout'
    Then preview selected products should contain '12th Product for Checkout'
    Then preview selected products should contain '13th Product for Checkout'
    When I click on preview group b tab
    Then preview selected products should contain '17th Product for Checkout'
    Then preview selected products should contain '18th Product for Checkout'
    When I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 2 in Group A & 1 in Group B for $49'
    Then 1st row of promotions should contain start date
    Then 1st row of promotions should contain 'Never expires'
    Then 1st row of promotions should contain 'All Customers'
    Then 1st row of promotions should contain 'Unlimited'

  @EAT-997 @EAT-997-5 @EAT-995 @EAT-995-2 @EAT-994 @EAT-994-3
  Scenario: Set bundle group pricing menu navigation and check cart/filter on storefront.
    Given I am on Menu Navigation Add Page
    Then I select menu item type dropdown option included 'Promotion Pages' of menu item type dropdown
    And I select page type dropdown option included 'Buy 2 in Group A & 1 in Group B for $49' of page type dropdown
    When I click on add button
    Then I should be redirected to Menu Navigation Page
    Then 4th row of menu list should contain 'Buy 2 in Group A & 1 in Group B for $49'

    Given I am on Shop Home Layout V Two Page
    Then I should see 4 navigation bar
    And 4th navigation bar should contain 'Buy 2 in Group A & 1 in Group B for $49'
    When I click on 4th navigation bar
    Then I should be redirected to Shop Promotion Layout V2 Page
    And promotion name should contain 'Buy 2 inGroup A& 1 inGroup Bfor NT$49.'
    And promotion name should contain 'Buy more, Save more!'
    And promotion name should not contain 'Limited offer for your first set.'
    When I select language dropdown option included '繁體中文' of language dropdown
    Then promotion name should contain '指定商品：A 組任選 2 件，B 組任選 1 件 共 NT$49 元，買越多省越多！'
    Then promotion name should not contain '最多優惠 1 組'
    When I select language dropdown option included 'English' of language dropdown
    And I should see 4 group a product
    And I should see 2 group b product
    When I hover over product filter
    Then 2nd product filter options should contain 'Group A'
    When I click on 2nd product filter options
    Then I wait for 5 seconds loading 
    Then I should see 4 group a product
    Then products list should contain '13th Product for Checkout'
    Then products list should contain '12th Product for Checkout'
    Then products list should contain '10th Product for Checkout'
    Then products list should contain '6th Product for Checkout'
    When I click add to cart button for the same order of product of products list included '13th Product for Checkout'
    Then I should see popup
    And I click on popup increase button
    When I click on popup add to cart button
    Then I should see bundle cart content
    Then 1st bundle cart item should contain '13th Product for Checkout'
    Then I should see 1 bundle cart group a dot
    Then bundle cart header should contain 'Group A 2 items selected; Group B 0 items selected'
    When I hover over product filter
    When I click on product filter options included 'Group B'
    Then I should see 2 group b product
    Then I wait for 5 seconds loading 
    Then products list should contain '18th Product for Checkout'
    Then products list should contain '17th Product for Checkout'
    When I click add to cart button for the same order of product of products list included '18th Product for Checkout'
    Then I should see popup
    And I click on popup increase button
    When I click on popup add to cart button
    Then I should see bundle cart content
    Then I should see 2 bundle cart bundle group tag
    Then 1st bundle cart item should contain '13th Product for Checkout'
    Then 1st bundle cart item should contain 'Bundle Group'
    Then 2nd bundle cart item should contain '18th Product for Checkout'
    Then 2nd bundle cart item should not contain 'Bundle Group'
    Then 3rd bundle cart item should contain '18th Product for Checkout'
    Then 3rd bundle cart item should contain 'Bundle Group'
    Then I should see 1 bundle cart group a dot
    Then I should see 2 bundle cart group b dot
    Then bundle cart header should contain 'Group A 2 items selected; Group B 2 items selected'
    When I select language dropdown option included '繁體中文' of language dropdown
    When I hover over product filter
    When I click on product filter options included 'A 組商品'
    Then I wait for 5 seconds loading 
    Then I should see 4 group a product
    Then products list should contain '13th Product for Checkout'
    Then products list should contain '12th Product for Checkout'
    Then products list should contain '10th Product for Checkout'
    Then products list should contain '6th Product for Checkout'
    When I click add to cart button for the same order of product of products list included '13th Product for Checkout'
    Then I should see popup
    And I click on popup increase button
    When I click on popup add to cart button
    Then I should see bundle cart content
    Then I should see 2 bundle cart bundle group tag
    Then 1st bundle cart item should contain '13th Product for Checkout'
    Then 1st bundle cart item should contain 'A+B 組合'
    Then 2nd bundle cart item should contain '18th Product for Checkout'
    Then 2nd bundle cart item should contain 'A+B 組合'
    Then I should see 1 bundle cart group a dot
    Then I should see 1 bundle cart group b dot
    Then bundle cart header should contain 'A 組已選 4 件，B 組已選 2 件'
    When I hover over product filter
    When I click on product filter options included 'B 組商品'
    Then I should see 2 group b product
    Then I wait for 5 seconds loading 
    Then products list should contain '18th Product for Checkout'
    Then products list should contain '17th Product for Checkout'
    When I click add to cart button for the same order of product of products list included '18th Product for Checkout'
    Then I should see popup
    And I click on popup increase button
    When I click on popup add to cart button
    Then I should see bundle cart content
    Then I should see 2 bundle cart bundle group tag
    Then 1st bundle cart item should contain '13th Product for Checkout'
    Then 1st bundle cart item should contain 'A+B 組合'
    Then 2nd bundle cart item should contain '18th Product for Checkout'
    Then 2nd bundle cart item should not contain 'A+B 組合'
    Then 3rd bundle cart item should contain '18th Product for Checkout'
    Then 3rd bundle cart item should contain 'A+B 組合'
    Then I should see 1 bundle cart group a dot
    Then I should see 2 bundle cart group b dot
    Then bundle cart header should contain 'A 組已選 4 件，B 組已選 4 件'

    And ---ROLL BACK---
    Given I am on Menu Navigation Page
    When I click delete button for the same order of row of menu list included 'Buy 2 in Group A & 1 in Group B for $49'
    Then I should see confirm popover
    Then I click on delete checkbox
    When I click on ok button
    Then I should see 3 row of menu list 
    Then row of menu list should not contain 'Buy 2 in Group A & 1 in Group B for $49'
    Given I am on Bundle Pricing Index Page
    And I click on tab included 'Bundle Group Pricing'
    Then I click on 1st row of select checkbox list
    When I select delete of bulk actions dropdown
    Then I should see confirmation popover
    Then I click on delete checkbox
    When I click on confirm delete button
    Then promotions should contain 'No promotions yet'

  @EAT-994 @EAT-994-4
  Scenario: Set unstackable bundle group pricing menu navigation and check promotion name on storefront.
    When I select bundle price edit of bundle price edit dropdown
    Then I should be redirected to Bundle Group Edit Page
    And I click on stackable off checkbox
    And I click on 1st countinue to button
    And I click on 2nd countinue to button
    Then I click on 3rd countinue to button
    Then I click on preview button
    Then stackable pricing should contain 'Off'
    When I click on confirm button
    Then I should be redirected to Bundle Pricing Index Page
    Given I am on Menu Navigation Add Page
    Then I select menu item type dropdown option included 'Promotion Pages' of menu item type dropdown
    And I select page type dropdown option included 'Buy 2 in Group A & 1 in Group B for $49' of page type dropdown
    When I click on add button
    Then I should be redirected to Menu Navigation Page
    Then 4th row of menu list should contain 'Buy 2 in Group A & 1 in Group B for $49'

    Given I am on Shop Home Layout V Two Page
    Then I should see 4 navigation bar
    And 4th navigation bar should contain 'Buy 2 in Group A & 1 in Group B for $49'
    When I click on 4th navigation bar
    Then I should be redirected to Shop Promotion Layout V2 Page
    And promotion name should contain 'Buy 2 inGroup A& 1 inGroup Bfor NT$49.'
    And promotion name should not contain 'Buy more, Save more!'
    And promotion name should contain 'Limited offer for your first set.'
    When I select language dropdown option included '繁體中文' of language dropdown
    Then promotion name should contain 'A 組任選 2 件，B 組任選 1 件 共 NT$49 元'
    Then promotion name should contain '最多優惠 1 組'
    Then promotion name should not contain '買越多省越多！'
    When I select language dropdown option included 'English' of language dropdown
    And I should see 4 group a product
    And I should see 2 group b product
    When I hover over product filter
    Then 2nd product filter options should equal to 'Group A'
    When I click on 2nd product filter options
    Then I wait for 5 seconds loading 
    Then I should see 4 group a product
    Then products list should contain '13th Product for Checkout'
    Then products list should contain '12th Product for Checkout'
    Then products list should contain '10th Product for Checkout'
    Then products list should contain '6th Product for Checkout'
    When I click add to cart button for the same order of product of products list included '13th Product for Checkout'
    Then I should see popup
    And I click on popup increase button
    When I click on popup add to cart button
    Then I should see bundle cart content
    Then 1st bundle cart item should contain '13th Product for Checkout'
    Then I should see 1 bundle cart group a dot
    Then bundle cart header should contain 'Group A 2 items selected; Group B 0 items selected'
    When I select product filter options included 'Group B' of product filter
    Then I should see 2 group b product
    Then I wait for 5 seconds loading 
    Then products list should contain '18th Product for Checkout'
    Then products list should contain '17th Product for Checkout'
    When I click add to cart button for the same order of product of products list included '18th Product for Checkout'
    Then I should see popup
    And I click on popup increase button
    When I click on popup add to cart button
    Then I should see bundle cart content
    Then I should see 2 bundle cart bundle group tag
    Then 1st bundle cart item should contain '13th Product for Checkout'
    Then 1st bundle cart item should contain 'Bundle Group'
    Then 2nd bundle cart item should contain '18th Product for Checkout'
    Then 2nd bundle cart item should not contain 'Bundle Group'
    Then 3rd bundle cart item should contain '18th Product for Checkout'
    Then 3rd bundle cart item should contain 'Bundle Group'
    Then I should see 1 bundle cart group a dot
    Then I should see 2 bundle cart group b dot
    Then bundle cart header should contain 'Group A 2 items selected; Group B 2 items selected'
    When I select language dropdown option included '繁體中文' of language dropdown
    When I select product filter options included 'A 組商品' of product filter
    Then I wait for 5 seconds loading 
    Then I should see 4 group a product
    Then products list should contain '13th Product for Checkout'
    Then products list should contain '12th Product for Checkout'
    Then products list should contain '10th Product for Checkout'
    Then products list should contain '6th Product for Checkout'
    When I click add to cart button for the same order of product of products list included '13th Product for Checkout'
    Then I should see popup
    And I click on popup increase button
    When I click on popup add to cart button
    Then I should see bundle cart content
    Then I should see 2 bundle cart bundle group tag
    Then 1st bundle cart item should contain '13th Product for Checkout'
    Then 1st bundle cart item should not contain 'A+B 組合'
    Then 2nd bundle cart item should contain '18th Product for Checkout'
    Then 2nd bundle cart item should not contain 'A+B 組合'
    Then 3rd bundle cart item should contain '13th Product for Checkout'
    Then 3rd bundle cart item should contain 'A+B 組合'
    Then 4th bundle cart item should contain '18th Product for Checkout'
    Then 4th bundle cart item should contain 'A+B 組合'
    Then I should see 2 bundle cart group a dot
    Then I should see 2 bundle cart group b dot
    Then bundle cart header should contain 'A 組已選 4 件，B 組已選 2 件'
    When I select product filter options included 'B 組商品' of product filter
    Then I should see 2 group b product
    Then I wait for 5 seconds loading 
    Then products list should contain '18th Product for Checkout'
    Then products list should contain '17th Product for Checkout'
    When I click add to cart button for the same order of product of products list included '18th Product for Checkout'
    Then I should see popup
    And I click on popup increase button
    When I click on popup add to cart button
    Then I should see bundle cart content
    Then I should see 2 bundle cart bundle group tag
    Then 1st bundle cart item should contain '13th Product for Checkout'
    Then 1st bundle cart item should not contain 'A+B 組合'
    Then 2nd bundle cart item should contain '18th Product for Checkout'
    Then 2nd bundle cart item should not contain 'A+B 組合'
    Then 3rd bundle cart item should contain '13th Product for Checkout'
    Then 3rd bundle cart item should contain 'A+B 組合'
    Then 4th bundle cart item should contain '18th Product for Checkout'
    Then 4th bundle cart item should contain 'A+B 組合'
    Then I should see 2 bundle cart group a dot
    Then I should see 2 bundle cart group b dot
    Then bundle cart header should contain 'A 組已選 4 件，B 組已選 4 件'

    And ---ROLL BACK---
    Given I am on Menu Navigation Page
    When I click delete button for the same order of row of menu list included 'Buy 2 in Group A & 1 in Group B for $49'
    Then I should see confirm popover
    Then I click on delete checkbox
    When I click on ok button
    Then I should see 3 row of menu list 
    Then row of menu list should not contain 'Buy 2 in Group A & 1 in Group B for $49'
    Given I am on Bundle Pricing Index Page
    And I click on tab included 'Bundle Group Pricing'
    Then I click on 1st row of select checkbox list
    When I select delete of bulk actions dropdown
    Then I should see confirmation popover
    Then I click on delete checkbox
    When I click on confirm delete button
    Then promotions should contain 'No promotions yet'