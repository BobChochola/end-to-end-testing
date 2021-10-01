@PromotionBaseCase @Admin @Promotion @CouponCode @sameTargetGroupsCanUseSamePromotionCoupon-MembershipTier @fixture-product @fixture-promotion @C25696
Feature: Same target groups can use promotion bundle for a same product auto and coupon - MembershipTier
  As a user of Shopline
  Same target groups can use Auto and cunpon promotion bundle for a same product
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
    Then I should be redirected to Promotion Index Page
    Then 1st row of promotions should contain 'Buy selected products over NT$100 get 90% off'
    Then 1st row of promotions should contain 'Never expires'
    Then 1st row of promotions should contain 'Auto Apply'

  @EAT-1053 @EAT-1053-3
  Scenario: Same target groups can use promotion bundle for a same product auto and coupon - Membership tire
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
    And I click on apply method checkbox included 'codes'
    Then I should see coupon code field
    And I fill "freegift" to coupon code field
    And I click on 3rd countinue to button
    And I click on preview button
    Then discount summary should contain 'Get 90% off on Selected Products with purchase over NT$100'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    Then 1st row of promotions should contain 'Buy selected products over NT$100 get 90% off'
    Then 1st row of promotions should contain 'Never expires'
    Then 1st row of promotions should contain 'Coupon'
    And ---ROLL BACK---
    Given I am on Promotion Index Page
    When I click on 1st row of select checkbox list
    When I click on 2nd row of select checkbox list
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