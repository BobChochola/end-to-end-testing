@BaseCase @Storefront @Admin @Promotion @BundleGroup @shopProductShowPageDisplayBundleGroupPricingHint
@fixture-shop @fixture-product @fixture-promotion
Feature: Set show bundle group promotion campaign information on shop product show page. 
  As a merchant
  When I want customer see promotion information on shop product show page

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

    Given I am on Promotion Setting Page
    Then 1st promotion section should contain 'Show promotion campaign information on product details page'
    Then I should see show promotion campaign toggle
    When I check and click show promotion campaign toggle off
    Then show promotion campaign toggle should be checked
    When I click on update button
    Then I should see alert

    Given I am on Bundle Pricing Index Page
    Then 1st tab should contain 'Bundle Pricing'
    Then 2nd tab should contain 'Bundle Group Pricing'
    When I select add promotion dropdown option included 'Bundle Group' of add promotion dropdown
    Then I should be redirected to Bundle Group Create Page
    And I fill '(dirty data) Buy 2 in Group A & 1 in Group B for $49' to name field
    And I click on stackable off checkbox
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
    When I click on popup confirm button
    Then selected products should contain '6th Product for Checkout'
    Then selected products should contain '10th Product for Checkout'
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
    Then stackable pricing should contain 'Off'
    Then promotion name should contain 'Buy 2 in Group A & 1 in Group B for $49'
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    When I click on preview group a tab
    Then preview selected products should contain '6th Product for Checkout'
    Then preview selected products should contain '10th Product for Checkout'
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

    Given I am on Shop Product Index Page
    When I input '6th Product for Checkout' to search field
    Then 1st product of products list should contain '6th Product for Checkout'
    Then I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain '6th Product for Checkout'
    Then 1st promotion campaign information should contain 'Buy 2 in Group A & 1 in Group B for $49 on selected products'
    When I click on 1st promotion campaign information
    When I switch to 2 of tabs
    Then I should be redirected to Shop Promotion Page
    Then promotion name should contain 'Buy 2 inGroup A& 1 inGroup Bfor NT$49'
    Then I should see 4 product of products list

    Given I am on Shop Product Index Page
    When I input '17th Product for Checkout' to search field
    Then 1st product of products list should contain '17th Product for Checkout'
    Then I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain '17th Product for Checkout'
    Then 1st promotion campaign information should contain 'Buy 2 in Group A & 1 in Group B for $49 on selected products'
    When I click on 1st promotion campaign information
    When I switch to 3 of tabs
    Then I should be redirected to Shop Promotion Page
    Then promotion name should contain 'Buy 2 inGroup A& 1 inGroup Bfor NT$49'
    Then I should see 4 product of products list

  @EAT-999 @EAT-999-1
  Scenario: Remove each product in group a and b > than the product should not show promotion hint
    Given I am on Bundle Pricing Index Page
    Then I click on tab included 'Bundle Group Pricing'
    When I select bundle price edit of bundle price edit dropdown
    Then I should be redirected to Bundle Group Edit Page
    Then selected products should contain '6th Product for Checkout'
    Then I click row of product delete button for the same order of row of selected product included '6th Product for Checkout'
    And selected products should contain '10th Product for Checkout'
    Then I click on group b tab
    Then selected products should contain '17th Product for Checkout'
    Then I click row of product delete button for the same order of row of selected product included '17th Product for Checkout'
    And selected products should contain '18th Product for Checkout'
    When I click on 1st countinue to button
    When I click on 2nd countinue to button
    When I click on 3rd countinue to button
    Then I scroll down to preview button
    When I click on preview button
    Then preview selected products should contain '18th Product for Checkout'
    When I click on preview group a tab
    Then preview selected products should contain '10th Product for Checkout'
    When I click on confirm button
    Then I should be redirected to Bundle Pricing Index Page

    Given I am on Shop Product Index Page
    When I input '6th Product for Checkout' to search field
    Then 1st product of products list should contain '6th Product for Checkout'
    Then I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain '6th Product for Checkout'
    Then product info should not contain 'Buy 2 in Group A & 1 in Group B for $49'

    Given I am on Shop Product Index Page
    When I input '17th Product for Checkout' to search field
    Then 1st product of products list should contain '17th Product for Checkout'
    Then I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain '17th Product for Checkout'
    Then product info should not contain 'Buy 2 in Group A & 1 in Group B for $49'

    Then ---ROLL BACK---
    Given I am on Bundle Pricing Index Page
    Then I click on tab included 'Bundle Group Pricing'
    Then I click on 1st row of select checkbox list
    When I select delete of bulk actions dropdown
    Then I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    When I click on tab included 'Bundle Group Pricing'
    Then promotions should contain 'No promotions yet'

    Given I am on Promotion Setting Page
    Then I should see show promotion campaign toggle
    When I click on show promotion campaign toggle
    Then show promotion campaign toggle should not be checked
    When I click on update button
    Then I should see alert

  @EAT-999 @EAT-999-2
  Scenario: Unpublish promotion > than product should not show promotion hint
    Given I am on Bundle Pricing Index Page
    Then I click on tab included 'Bundle Group Pricing'
    Then I click on 1st row of select checkbox list
    When I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item

    Given I am on Shop Product Index Page
    When I input '6th Product for Checkout' to search field
    Then 1st product of products list should contain '6th Product for Checkout'
    Then I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain '6th Product for Checkout'
    Then product info should not contain 'Buy 2 in Group A & 1 in Group B for $49'

    Given I am on Shop Product Index Page
    When I input '17th Product for Checkout' to search field
    Then 1st product of products list should contain '17th Product for Checkout'
    Then I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain '17th Product for Checkout'
    Then product info should not contain 'Buy 2 in Group A & 1 in Group B for $49'

    Then ---ROLL BACK---
    Given I am on Bundle Pricing Index Page
    Then I click on tab included 'Bundle Group Pricing'
    Then I click on 1st row of select checkbox list
    When I select delete of bulk actions dropdown
    Then I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    When I click on tab included 'Bundle Group Pricing'
    Then promotions should contain 'No promotions yet'

    Given I am on Promotion Setting Page
    Then I should see show promotion campaign toggle
    When I click on show promotion campaign toggle
    Then show promotion campaign toggle should not be checked
    When I click on update button
    Then I should see alert