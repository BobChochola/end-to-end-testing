@BaseCase @Admin @Storefront @checkProductInventoryReminder @fixture-shop @fixture-delivery @fixture-payment
Feature: Check Product Inventory Reminder 
  As a shoper
  I add less than 10 inventory product to cart
  So that I should see Product inventory reminder

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

    Given I am on Product Setting Page
    Then I should see inventory reminder toggle
    When I check and click inventory reminder toggle off
    Then inventory reminder toggle should be checked
    And I click on update button
    Then I should see alert

  @EAT-620 @EAT-620-1
  Scenario: Check Product Inventory Reminder when inventory < 10 and purchase quantity > inventory
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) inventory reminder" to english name field
    And I click on quantity and pricing tab
    And I fill "20" to regular price field
    And I scroll down to id
    And I fill "4" to quantity field
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Inventory Page
    Then row of product list should contain "4"
    Then row of product list should contain "inventory reminder"

    Given I am on Addon Create Page
    And I fill "(dirty data) addon inventory reminder" to english name field
    When I pick addon photo to addon photo selector
    Then I should see delete photo button
    And I fill '2' to addon quantity field
    And I click on tab included 'Product Level Settings (Optional)'
    And I fill "inventory reminder" to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain 'inventory reminder'
    And I click on 1st checkbox of product list
    And I click on confirm button
    Then I fill '10' to 1st row of addon price field
    And I click on add button
    Then I should see alert
    Then I wait for 5 seconds for loading
    Then I should be redirected to Addon Index Page
    Then 1st row of addon list should contain "addon inventory reminder"
    Then 1st row of addon list should contain "2"

    Given I am on Bundle Pricing Create Page
    And I fill '(dirty data) Buy 2 for $30' to name field
    And I fill '2' to promotion value field
    And I fill '30' to discounted price field
    And I fill 'inventory reminder' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain 'inventory reminder'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then row of selected product should contain 'inventory reminder'
    And I click on countinue to button
    When I click on 2nd countinue to button
    And I click on 3rd countinue to button
    When I click on preview button
    Then discount summary should equal to 'Purchase 2 items of Selected Products for NT$30'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 2 for $30'

    Given I am on Shop Product Index Page
    And I input 'inventory reminder' to search field
    Then 1st product of products list should contain 'inventory reminder'
    When I click on product of products list
    Then I should be redirected to Shop Product Show Page
    Then quantity reminder should contain 'Only 4 item(s) left'
    When I click on add to cart button
    Then I should see cart panel
    Then quantity reminder should contain 'Only 3 item(s) left'
    And I click on close cart panel area
    And I click on increase button
    And I click on increase button
    And I click on increase button
    When I click on add to cart button
    Then 1st quantity reminder should contain 'Not enough stock'
    Then 2st quantity reminder should contain 'Only 3 item(s) left'
    Then I click on decrease button
    Then I click on decrease button
    When I click on increase addon quantity button
    And I click on buy together button
    Then I wait for 5 seconds for loading
    Then I should see cart panel
    Then I Refresh
    Then I click on cart button
    Then I should see cart panel
    Then quantity reminder should contain 'Only 1 item(s) left'
    And I click on checkout button
    Then I wait for 5 seconds for loading
    Then I should be redirected to Shop Cart Page
    Then 1st row of cart item should contain 'ONLY 1 ITEM(S) LEFT.'
    Then 2nd row of cart item should contain 'ONLY 1 ITEM(S) LEFT.'
    Then 3rd row of cart item should contain 'ONLY 1 ITEM(S) LEFT.'
    Then 3rd row of cart item should contain 'Bundle'
    Then 3rd row of cart item should contain 'Buy 2 for $30'

    And ---ROLL BACK---
    Given I am on Product Setting Page
    Then inventory reminder toggle should be checked
    When I click on inventory reminder toggle
    And I click on update button
    Then I should see alert

    Given I am on Product Index Page
    Then 1st row of product name should contain 'inventory reminder'
    And I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then 1st row of product name should not contain 'inventory reminder'

    Given I am on Addon Index Page
    When I click select checkbox of addon list for the same order of row of addon list included 'addon inventory reminder'
    And I select delete of bulk actions dropdown
    Then I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I Refresh
    Then addon list should not contain 'addon inventory reminder'

    Given I am on Bundle Pricing Index Page
    When I input 'Buy 2 for $30' to search field
    Then 1st row of promotions should contain 'Buy 2 for $30'
    Then I click on 1st row of select checkbox list
    Then I select delete of bulk actions dropdown
    Then I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    When I input 'Buy 2 for $30' to search field
    Then bundle list should not contain 'Buy 2 for $30'

  @EAT-620 @EAT-620-2
  Scenario: Check Product Inventory Reminder when inventory - quantity in cart < 10
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on categories tab
    And I click on info tab
    And I fill "(dirty data) inventory reminder" to english name field
    And I click on quantity and pricing tab
    And I fill "20" to regular price field
    And I scroll down to id
    And I fill "11" to quantity field
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Inventory Page
    Then row of product list should contain "11"
    Then row of product list should contain "inventory reminder"

    Given I am on Addon Create Page
    And I fill "(dirty data) addon inventory reminder" to english name field
    When I pick addon photo to addon photo selector
    Then I should see delete photo button
    And I fill '11' to addon quantity field
    And I click on tab included 'Product Level Settings (Optional)'
    And I fill "inventory reminder" to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain 'inventory reminder'
    And I click on 1st checkbox of product list
    And I click on confirm button
    Then I fill '10' to 1st row of addon price field
    And I click on add button
    Then I should see alert
    Then I should be redirected to Addon Index Page
    Then 1st row of addon list should contain "addon inventory reminder"
    Then 1st row of addon list should contain "11"

    Given I am on Bundle Pricing Create Page
    And I fill '(dirty data) Buy 2 for $30' to name field
    And I fill '2' to promotion value field
    And I fill '30' to discounted price field
    And I fill 'inventory reminder' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain 'inventory reminder'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should not see alert
    Then row of selected product should contain 'inventory reminder'
    And I click on countinue to button
    When I click on 2nd countinue to button
    And I click on 3rd countinue to button
    When I click on preview button
    Then discount summary should equal to 'Purchase 2 items of Selected Products for NT$30'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 2 for $30'

    Given I am on Shop Product Index Page
    And I input 'inventory reminder' to search field
    Then 1st product of products list should contain 'inventory reminder'
    When I click on product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    Then quantity reminder should contain 'Only 10 item(s) left'
    And I click on close cart panel area
    And I click on increase button
    When I click on increase addon quantity button
    And I click on buy together button
    Then I wait for 10 seconds for loading
    Then I should see cart panel
    Then I Refresh
    Then I click on cart button
    Then I should see cart panel
    Then quantity reminder should contain 'Only 8 item(s) left'

    And ---ROLL BACK---
    Given I am on Product Setting Page
    Then inventory reminder toggle should be checked
    When I click on inventory reminder toggle
    And I click on update button
    Then I should see alert

    Given I am on Product Index Page
    Then 1st row of product name should contain 'inventory reminder'
    And I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    Then I click on confirm delete button
    Then 1st row of product name should not contain 'inventory reminder'

    Given I am on Addon Index Page
    When I click select checkbox of addon list for the same order of row of addon list included 'addon inventory reminder'
    And I select delete of bulk actions dropdown
    Then I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I Refresh
    Then addon list should not contain 'addon inventory reminder'

    Given I am on Bundle Pricing Index Page
    When I input 'Buy 2 for $30' to search field
    Then 1st row of promotions should contain 'Buy 2 for $30'
    Then I click on 1st row of select checkbox list
    Then I select delete of bulk actions dropdown
    Then I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    When I input 'Buy 2 for $30' to search field
    Then bundle list should not contain 'Buy 2 for $30'