@PromotionBaseCase @Admin @Promotion @sameTargetGroupsCantUsePromotion-MembershipTier @fixture-product @fixture-shop @fixture-payment @fixture-delivery @fixture-promotion @C25693 @C25694
Feature: Same target groups can not use promotion bundle for a same product auto and affiliate campaign
  As a user of Shopline
  Same target groups can not use promotion bundle for a same product.

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

    Given I am on Membership Tier Setting Page
    When I click on add button
    Then I should be redirected to Membership Tier New Page
    When I fill '(dirty data) VIP discount' to membership tier name field
    And I select membership upgrade condition option included 'Single purchase' of membership upgrade condition select button
    And I fill '0' to membership upgrade rules field
    And I fill '20' to member offer field
    And I click on submit button
    Then I should be redirected to Membership Tier Setting Page
    Then I should see row of membership list

    Given I am on Bundle Pricing Create Page
    And I fill '(dirty data) group promotion' to name field
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
    And I click on membership tier checkbox
    Then I should see membership dropdown
    And I click on membership dropdown
    And I click on 1st select membership checkbox
    Then I should see membership list
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    When I click on preview button
    Then I should see target group list
    Then target group list should contain 'VIP discount'
    Then discount summary should contain 'Purchase 3 items of Selected Products for NT$30'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'group promotion'
    Then 1st row of promotions should contain 'Never expires'

    Given I am on Promotion Create Page
    When I fill '(dirty data) Buy selected products over NT$100 get 90% off' to name field
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
    When I input '5th Product for Checkout' to search field
    And I click on search button
    Then 1st product of popover list should contain '5th Product for Checkout'
    And I should see checkbox of product list
    And I click on 1st checkbox of product list
    And I click on popup confirm button

    And I click on countinue to button
    And I click on target group checkbox included 'memberOnly'
    And I click on membership tier checkbox
    Then I should see membership dropdown
    And I click on membership dropdown
    And I click on 1st select membership checkbox
    Then I should see membership list

    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then discount summary should contain 'Get 90% off on Selected Products with purchase over NT$100'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy selected products over NT$100 get 90% off'
    Then 1st row of promotions should contain 'Never expires'

    Given I am on Free Shipping Index Page
    When I click on add promotion button
    Then I should be redirected to Free Shipping Create Page
    When I fill "(dirty data) Test Free Shipping -1" to name field
    And I click on selected products condition checkbox
    And I fill '1' to promotion condition field
    When I fill '4th Product for Checkout' to search field
    And I click on search button
    Then 1st list of popup product should contain '4th Product for Checkout'
    And I should see checkbox of product list
    And I click on 1st checkbox of product list
    And I click on popup confirm button
    Then 1st row of selected product should contain '4th Product for Checkout'
    Then I should be redirected to Promotion Create Page
    And I click on countinue to button
    And I click on target group checkbox included 'memberOnly'
    And I click on membership tier checkbox
    Then I should see membership dropdown
    And I click on membership dropdown
    And I click on 1st select membership checkbox
    Then I should see membership list
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should equal to "(dirty data) Test Free Shipping -1"
    Then coupon code should equal to "N/A"
    Then promotion limitations end date should contain "Never expires"
    And I click on confirm button
    Then I should be redirected to Free Shipping Index Page
    Then I should see alert

  @EAT-1050 @EAT-1051 @EAT-1050-1 @EAT-1051-1
  Scenario: Same target groups can not use promotion bundle for a same product auto and affiliate campaign - member tire
    Given I am on Bundle Pricing Create Page
    And I fill '(dirty data) group promotion test' to name field
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
    And I click on membership tier checkbox
    Then I should see membership dropdown
    And I click on membership dropdown
    And I click on 1st select membership checkbox
    Then I should see membership list
    And I click on 2nd countinue to button
    And I click on apply method checkbox included 'affiliate'
    And I click on 3rd countinue to button
    When I click on preview button
    Then I should see target group list
    Then target group list should contain 'VIP discount'
    Then discount summary should contain 'Purchase 3 items of Selected Products for NT$30'
    And I click on confirm button
    Then conflict product error message should contain 'Promotion start/end dates cannot be overlapped with an existing auto apply promotion on selected products. Please remove the products or change the promotion start/end dates to continue.'

    Given I am on Promotion Create Page
    When I fill '(dirty data) Buy selected products over NT$100 get 90% off test' to name field
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
    When I input '5th Product for Checkout' to search field
    And I click on search button
    Then 1st product of popover list should contain '5th Product for Checkout'
    And I should see checkbox of product list
    And I click on 1st checkbox of product list
    And I click on popup confirm button

    And I click on countinue to button
    And I click on target group checkbox included 'memberOnly'
    And I click on membership tier checkbox
    Then I should see membership dropdown
    And I click on membership dropdown
    And I click on 1st select membership checkbox
    Then I should see membership list

    And I click on 2nd countinue to button
    And I click on apply method checkbox included 'affiliate'
    And I click on 3rd countinue to button
    And I click on preview button
    Then discount summary should contain 'Get 90% off on Selected Products with purchase over NT$100'
    And I click on confirm button
    Then conflict product error message should contain 'Promotion start/end dates cannot be overlapped with an existing auto apply promotion on selected products. Please remove the products or change the promotion start/end dates to continue.'

    Given I am on Free Shipping Index Page
    When I click on add promotion button
    Then I should be redirected to Free Shipping Create Page
    When I fill "(dirty data) Test Free Shipping -1 test" to name field
    And I click on selected products condition checkbox
    And I fill '1' to promotion condition field
    When I fill '4th Product for Checkout' to search field
    And I click on search button
    Then 1st list of popup product should contain '4th Product for Checkout'
    And I should see checkbox of product list
    And I click on 1st checkbox of product list
    And I click on popup confirm button
    Then 1st row of selected product should contain '4th Product for Checkout'
    Then I should be redirected to Promotion Create Page
    And I click on countinue to button
    And I click on target group checkbox included 'memberOnly'
    And I click on membership tier checkbox
    Then I should see membership dropdown
    And I click on membership dropdown
    And I click on 1st select membership checkbox
    Then I should see membership list
    And I click on 2nd countinue to button
    And I click on apply method checkbox included 'affiliate'
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should equal to "(dirty data) Test Free Shipping -1 test"
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Free Shipping Index Page
    Then 1st row of promotion name should equal to '(dirty data) Test Free Shipping -1 test'
    Then 2nd row of promotion name should equal to '(dirty data) Test Free Shipping -1'

    And ---ROLL BACK---
    Given I am on Bundle Pricing Index Page
    When I click on 1st row of select checkbox list
    Then I select delete of bulk actions dropdown
    Then I should see confirmation popover
    When I click on delete checkbox
    Then I click on confirm delete button
    Then I should see alert

    Given I am on Promotion Index Page
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

    Given I am on Free Shipping Index Page
    When I input "Test Free Shipping" to search field
    Then I should see apply filter label
    Then I should see 2 row of free shipping list
    And I click on 1st row of select checkbox list
    And I click on 2nd row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

    Given I am on Membership Tier Setting Page
    When I select dropdown option included "Delete" of dropdown button
    And I should see confirmation popup window
    And I click on delete button
    And I wait for 5 seconds for deleting
    When I click on logs button
    And I should see row of logs
    Then 1st row of logs should contain "Membership tier settings is deleted"