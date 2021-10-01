@Admin @Promotion @PromotionBaseCase @fixture-product @fixture-promotion @productSlectedByOnePromotion-AllCustomer @C25691
Feature: Product only can selected by one promotion -  group by all customers.
  As a merchant
  I can not select same product to multiple promotion

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

    Given I am on Promotion Index Page
    When I input '6th Promotion' to search field
    Then 1st row of promotion list should contain '6th Promotion'
    And I click on 1st row of select checkbox list
    Then I select publish of bulk actions dropdown

    Given I am on Free Shipping Create Page
    And I fill '(dirty data) selected free shipping' to name field
    And I click on selected products condition checkbox
    And I fill '10' to promotion condition field
    And I fill '2nd Product for Checkout' to search field
    And I click on search button
    Then I should see select product popup
    Then 1st list of popup product should contain '2nd Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see row of selected product
    And I fill '3rd Product for Checkout' to search field
    And I click on search button
    Then I should see select product popup
    Then 1st list of popup product should contain '3rd Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see 2 row of selected product
    And I fill '7th Product for Checkout' to search field
    And I click on search button
    Then I should see select product popup
    Then 1st list of popup product should contain '7th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see 3 row of selected product
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    When I click on preview button
    Then discount summary should equal to 'Enjoy free shipping with purchase of Selected Products over NT$10'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Free Shipping Index Page
    Then 1st row of free shipping list should contain 'selected free shipping'
    Then 1st row of free shipping list should contain 'Never expires'

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
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    When I click on preview button
    Then discount summary should equal to 'Purchase 3 items of Selected Products for NT$30'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'bundle pricing(selected 2nd, 3rd, 7th)'
    Then 1st row of promotions should contain 'Never expires'

  @EAT-1048 @EAT-1048-1
  Scenario:I create a selected promotion and I should see conflict error message
    Given I am on Promotion Create Page
    Then I fill '(dirty data) fail selected promotion' to name field
    And I click on selected products condition checkbox
    And I fill '10' to promotion value field
    And I fill '100' to promotion condition field
    And I fill '2nd Product for Checkout' to search field
    And I click on search button
    Then I should see select product popup
    Then 1st product of popover list should contain '2nd Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see row of selected product
    And I fill '3rd Product for Checkout' to search field
    And I click on search button
    Then I should see select product popup
    Then 1st product of popover list should contain '3rd Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see 2 row of selected product
    And I fill '7th Product for Checkout' to search field
    And I click on search button
    Then I should see select product popup
    Then 1st product of popover list should contain '7th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see 3 row of selected product
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    When I click on preview button
    Then discount summary should equal to 'Get 10% off on Selected Products with purchase of Selected Products over NT$100'
    And I click on confirm button
    Then conflict product error message should contain 'Promotion start/end dates cannot be overlapped with an existing auto apply promotion on selected products. Please remove the products or change the promotion start/end dates to continue.'
    Then I should see 3 conflict product

    Given I am on Free Shipping Create Page
    And I fill '(dirty data) not fail selected free shipping' to name field
    And I click on selected products condition checkbox
    And I fill '10' to promotion condition field
    And I fill '2nd Product for Checkout' to search field
    And I click on search button
    Then I should see select product popup
    Then 1st list of popup product should contain '2nd Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see row of selected product
    And I fill '3rd Product for Checkout' to search field
    And I click on search button
    Then I should see select product popup
    Then 1st list of popup product should contain '3rd Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see 2 row of selected product
    And I fill '7th Product for Checkout' to search field
    And I click on search button
    Then I should see select product popup
    Then 1st list of popup product should contain '7th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see 3 row of selected product
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    When I click on preview button
    Then discount summary should equal to 'Enjoy free shipping with purchase of Selected Products over NT$10'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Free Shipping Index Page
    Then 1st row of promotion name should equal to '(dirty data) not fail selected free shipping'
    Then 2nd row of promotion name should equal to '(dirty data) selected free shipping'

    Given I am on Bundle Pricing Create Page
    And I fill '(dirty data) fail bundle pricing' to name field
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
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    When I click on preview button
    Then discount summary should equal to 'Purchase 3 items of Selected Products for NT$30'
    And I click on confirm button
    Then conflict product error message should contain 'Promotion start/end dates cannot be overlapped with an existing auto apply promotion on selected products. Please remove the products or change the promotion start/end dates to continue.'
    Then I should see 3 conflict product

    And ---ROLL BACK---
    Given I am on Promotion Index Page
    When I input '6th Promotion' to search field
    Then 1st row of promotion list should contain '6th Promotion'
    And I click on 1st row of select checkbox list
    Then I select unpublish of bulk actions dropdown

    Given I am on Free Shipping Index Page
    And 1st row of free shipping list should contain 'selected free shipping'
    And I click on 1st row of select checkbox list
    And I click on 2nd row of select checkbox list
    When I select delete of bulk actions dropdown
    Then I should see confirmation popover
    And I click on delete checkbox
    When I click on confirm delete button
    Then 1st row of free shipping list should not contain 'selected free shipping'

    Given I am on Bundle Pricing Index Page
    And 1st row of promotions should contain 'bundle pricing(selected 2nd, 3rd, 7th)'
    And I click on 1st row of select checkbox list
    When I select delete of bulk actions dropdown
    Then I should see confirmation popover
    And I click on delete checkbox
    When I click on confirm delete button
    Then bundle list should contain 'No promotions yet'