@PromotionBaseCase @Admin @Promotion @applyAllPromotionAtTheTime-member @fixture-product @fixture-addon @fixture-freegift @fixture-promotion @C25697

Feature: Promotion bundle and free shipping freegift at the same time
  As a user of Shopline
  Promotion bundle and free shipping freegift at the same time

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

  @EAT-1054 @EAT-1054-2
  Scenario: Promotion bundle and free shipping freegift at the time - member
    Given I am on Bundle Pricing Create Page
    And I fill '(dirty data) Buy 3 for $30' to name field
    And I fill '3' to 1st promotion value field
    And I fill '30' to 1st discounted price field
    And I fill '4th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '4th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then 1st row of selected product should contain '4th Product for Checkout'
    And I click on countinue to button
    And I click on target group checkbox included 'memberOnly'
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    When I click on preview button
    Then discount summary should contain 'Purchase 3 items of Selected Products for NT$30'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 3 for $30'
    Then 1st row of promotions should contain 'Never expires'

    Given I am on Promotion Create Page
    When I fill '(dirty data) test -2' to name field
    And I click on subtotal condition checkbox
    And I select minimum amount of condition type dropdown
    And I select selected product of benefit applies dropdown
    And I fill '90' to 1st promotion value field
    And I fill '100' to 1st promotion condition field
    When I input '4th Product for Checkout' to search field
    And I click on search button
    Then 1st product of popover list should contain '4th Product for Checkout'
    And I should see checkbox of product list
    And I click on 1st checkbox of product list
    And I click on popup confirm button
    Then 1st row of selected product should contain '4th Product for Checkout'
    And I click on countinue to button
    And I click on target group checkbox included 'memberOnly'
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then discount summary should contain 'Get 90% off on Selected Products with purchase over NT$100'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    Then 1st row of promotions should contain 'test -2'
    Then 1st row of promotions should contain 'Never expires'

    Given I am on Free Shipping Index Page
    When I click on add promotion button
    Then I should be redirected to Free Shipping Create Page
    When I fill "(dirty data) Test Free Shipping" to name field
    And I click on selected products condition checkbox
    And I fill '1' to promotion condition field
    When I fill '4th Product for Checkout' to search field
    And I click on search button
    Then 1st list of popup product should contain '4th Product for Checkout'
    And I should see checkbox of product list
    And I click on 1st checkbox of product list
    And I click on popup confirm button
    Then 1st row of selected product should contain '4th Product for Checkout'
    Then I should be redirected to Free Shipping Create Page
    And I click on countinue to button
    And I click on target group checkbox included 'memberOnly'
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should equal to "(dirty data) Test Free Shipping"
    Then coupon code should equal to "N/A"
    Then promotion limitations end date should contain "Never expires"
    Then target group should equal to "All Members"
    And I click on confirm button
    Then I should be redirected to Free Shipping Index Page
    Then I should see alert
    
    Given I am on Promotion Create Page
    And I fill "(dirty data) Test Free Gift Promotion" to name field
    And I click on selected products condition checkbox
    And I select minimum items of condition type dropdown
    When I select free gift of benefit type dropdown
    And I click on select button
    Then I should see select product popup
    And I click checkbox of product list for the same order of product of popover list included '1st Created Free Gift'
    And I click on popup confirm button
    Then I fill "1" to 1st promotion value field
    And I fill "3" to 1st promotion condition field
    When I click on add tier button
    Then I fill "3" to 2nd promotion value field
    And I fill "5" to 2nd promotion condition field
    And I click on 2nd select button
    Then I should see select product popup
    And I click checkbox of product list for the same order of product of popover list included '1st Created Free Gift'
    And I click on popup confirm button
    When I click on add tier button
    Then I fill "6" to 3rd promotion value field
    And I fill "10" to 3rd promotion condition field
    And I click on 3rd select button
    Then I should see select product popup
    And I click checkbox of product list for the same order of product of popover list included '1st Created Free Gift'
    And I click on popup confirm button

    When I fill "4th Product for Checkout" to search field
    Then I click on search button
    And I should see select product popup
    Then 1st product of popover list should contain '4th Product for Checkout'
    And I click on 1st checkbox of product list
    Then I click on popup confirm button
    Then 1st row of selected product should contain '4th Product for Checkout'
    And I click on countinue to button
    And I click on target group checkbox included 'memberOnly'
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should equal to "(dirty data) Test Free Gift Promotion"
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Members"
    Then discount summary should contain "Get 1 Free Gift(s) (1st Created Free Gift) on Selected Products with purchase of Selected Products over 3 items"
    Then discount summary should contain "Get 3 Free Gift(s) (1st Created Free Gift) on Selected Products with purchase of Selected Products over 5 items"
    Then discount summary should contain "Get 6 Free Gift(s) (1st Created Free Gift) on Selected Products with purchase of Selected Products over 10 items"
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page

    Then ---ROLL BACK---
    Given I am on Promotion Index Page
    When I click on 1st row of select checkbox list
    When I click on 2nd row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

    Given I am on Free Shipping Index Page
    When I input "Test Free Shipping" to search field
    Then I should see apply filter label
    Then I should see 1 row of free shipping list
    Then 1st row of free shipping list should contain "Test Free Shipping"
    And I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

    Given I am on Bundle Pricing Index Page
    When I click on 1st row of select checkbox list
    Then I select delete of bulk actions dropdown
    Then I should see confirmation popover
    When I click on delete checkbox
    Then I click on confirm delete button
    Then I should see alert