@Admin @Promotion @PromotionBaseCase @fixture-product @productCanNotSelectedByBundlePriceAndGroup-AllMember @fixture-promotion @C25692
Feature: Product only can selected by bundle price and bundle group at the same time -  group by all member.
  As a merchant
  I can not select same product to bundle price and bundle group.

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

  @EAT-1049 @EAT-1049-3
  Scenario:First create bundle pricing and will see conflict message when creating bundle group.(Group by all member)
    Given I am on Bundle Pricing Create Page
    And I fill '(dirty data) bundle pricing(selected 2nd, 3rd, 7th)' to name field
    And I fill '3' to promotion value field
    And I fill '30' to discounted price field
    And I fill '2nd Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '2nd Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see row of selected product
    And I fill '3rd Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '3rd Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see 2 row of selected product
    And I fill '7th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '7th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see 3 row of selected product
    And I click on countinue to button
    And I click on target group checkbox included 'memberOnly'
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    When I click on preview button
    Then discount summary should equal to 'Purchase 3 items of Selected Products for NT$30'
    And target group should contain 'All Members'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'bundle pricing(selected 2nd, 3rd, 7th)'
    Then 1st row of promotions should contain 'Never expires'

    Given I am on Bundle Group Create Page
    And I fill '(dirty data) bundle group(selected 2nd, 3rd, 7th)' to name field
    When I fill '2' to group a field
    When I fill '1' to group b field
    When I fill '49' to price field
    Then discount summary should contain 'Purchase 2 items of Selected Products in Group A and 1 items of Selected Products in Group B for NT$49'
    And I should see group a tab
    Then select product button should contain 'Select Products in Group A'
    When I click on select product button
    Then I should see select product popup
    Then I input '2nd Product for Checkout' to search field
    Then 1st product list should contain '2nd Product for Checkout'
    Then I click on 1st checkbox of product list
    Then I input '3rd Product for Checkout' to search field
    Then 1st product list should contain '3rd Product for Checkout'
    Then I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should not see select product popup
    Then I should see 2 row of selected product
    When I click on group b tab
    Then select product button should contain 'Select Products in Group B'
    When I click on select product button
    Then I should see select product popup
    When I input '7th Product for Checkout' to search field
    Then 1st product list should contain '7th Product for Checkout'
    Then I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see row of selected product
    When I click on 1st countinue to button
    And I click on target group checkbox included 'memberOnly'
    When I click on 2nd countinue to button
    When I click on 3rd countinue to button
    Then I scroll down to preview button
    When I click on preview button
    Then promotion name should contain 'bundle group(selected 2nd, 3rd, 7th)'
    And target group should contain 'All Members'
    Then promotion limitations end date should contain 'Never expires'
    When I click on confirm button
    Then I should see conflict product error message
    And conflict product error message should contain 'Promotion start/end dates cannot be overlapped with an existing auto apply promotion on selected products. Please remove the products or change the promotion start/end dates to continue.'
    And I should see 2 conflict product
    When I click on group b tab
    Then I should see 1 conflict product

    And ---ROLL BACK---
    Given I am on Bundle Pricing Index Page
    And 1st row of promotions should contain 'bundle pricing(selected 2nd, 3rd, 7th)'
    And I click on 1st row of select checkbox list
    When I select delete of bulk actions dropdown
    Then I should see confirmation popover
    And I click on delete checkbox
    When I click on confirm delete button
    Then bundle list should contain 'No promotions yet'

  @EAT-1049 @EAT-1049-4
  Scenario:First create bundle group and will see conflict message when creating bundle pricing.(Group by all member)
    Given I am on Bundle Group Create Page
    And I fill '(dirty data) bundle group(selected 2nd, 3rd, 7th)' to name field
    When I fill '2' to group a field
    When I fill '1' to group b field
    When I fill '49' to price field
    Then discount summary should contain 'Purchase 2 items of Selected Products in Group A and 1 items of Selected Products in Group B for NT$49'
    And I should see group a tab
    Then select product button should contain 'Select Products in Group A'
    When I click on select product button
    Then I should see select product popup
    Then I input '2nd Product for Checkout' to search field
    Then 1st product list should contain '2nd Product for Checkout'
    Then I click on 1st checkbox of product list
    Then I input '3rd Product for Checkout' to search field
    Then 1st product list should contain '3rd Product for Checkout'
    Then I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should not see select product popup
    Then I should see 2 row of selected product
    When I click on group b tab
    Then select product button should contain 'Select Products in Group B'
    When I click on select product button
    Then I should see select product popup
    When I input '7th Product for Checkout' to search field
    Then 1st product list should contain '7th Product for Checkout'
    Then I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see row of selected product
    When I click on 1st countinue to button
    And I click on target group checkbox included 'memberOnly'
    When I click on 2nd countinue to button
    When I click on 3rd countinue to button
    Then I scroll down to preview button
    When I click on preview button
    Then promotion name should contain 'bundle group(selected 2nd, 3rd, 7th)'
    And target group should contain 'All Members'
    Then promotion limitations end date should contain 'Never expires'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'bundle group(selected 2nd, 3rd, 7th)'
    Then 1st row of promotions should contain 'Never expires'

    Given I am on Bundle Pricing Create Page
    And I fill '(dirty data) bundle pricing(selected 2nd, 3rd, 7th)' to name field
    And I fill '3' to promotion value field
    And I fill '30' to discounted price field
    And I fill '2nd Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '2nd Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see row of selected product
    And I fill '3rd Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '3rd Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see 2 row of selected product
    And I fill '7th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '7th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see 3 row of selected product
    And I click on countinue to button
    And I click on target group checkbox included 'memberOnly'
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    When I click on preview button
    Then discount summary should equal to 'Purchase 3 items of Selected Products for NT$30'
    And target group should contain 'All Members'
    When I click on confirm button
    Then I should see conflict product error message
    And conflict product error message should contain 'Promotion start/end dates cannot be overlapped with an existing auto apply promotion on selected products. Please remove the products or change the promotion start/end dates to continue.'
    And I should see 3 conflict product

    Given I am on Bundle Group Create Page
    And I fill '(dirty data) bundle group(selected 2nd, 3rd, 7th)' to name field
    When I fill '2' to group a field
    When I fill '1' to group b field
    When I fill '49' to price field
    Then discount summary should contain 'Purchase 2 items of Selected Products in Group A and 1 items of Selected Products in Group B for NT$49'
    And I should see group a tab
    Then select product button should contain 'Select Products in Group A'
    When I click on select product button
    Then I should see select product popup
    Then I input '2nd Product for Checkout' to search field
    Then 1st product list should contain '2nd Product for Checkout'
    Then I click on 1st checkbox of product list
    Then I input '3rd Product for Checkout' to search field
    Then 1st product list should contain '3rd Product for Checkout'
    Then I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should not see select product popup
    Then I should see 2 row of selected product
    When I click on group b tab
    Then select product button should contain 'Select Products in Group B'
    When I click on select product button
    Then I should see select product popup
    When I input '7th Product for Checkout' to search field
    Then 1st product list should contain '7th Product for Checkout'
    Then I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see row of selected product
    When I click on 1st countinue to button
    And I click on target group checkbox included 'memberOnly'
    When I click on 2nd countinue to button
    When I click on 3rd countinue to button
    Then I scroll down to preview button
    When I click on preview button
    Then promotion name should contain 'bundle group(selected 2nd, 3rd, 7th)'
    And target group should contain 'All Members'
    Then promotion limitations end date should contain 'Never expires'
    When I click on confirm button
    Then I should see conflict product error message
    And conflict product error message should contain 'Promotion start/end dates cannot be overlapped with an existing auto apply promotion on selected products. Please remove the products or change the promotion start/end dates to continue.'
    And I should see 2 conflict product
    When I click on group b tab
    Then I should see 1 conflict product

    And ---ROLL BACK---
    Given I am on Bundle Pricing Index Page
    And I click on tab included 'Bundle Group Pricing'
    And 1st row of promotions should contain 'bundle group(selected 2nd, 3rd, 7th)'
    And I click on 1st row of select checkbox list
    When I select delete of bulk actions dropdown
    Then I should see confirmation popover
    And I click on delete checkbox
    When I click on confirm delete button
    Then bundle list should contain 'No promotions yet'