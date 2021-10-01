@PromotionBaseCase @Admin @Promotion @setupEntireOrderFreeShippingAndCheck @fixture-product @C24220
Feature: Setup free shipping with puchase over minimum amount/minimum item
  As a merchant
  I want to creat free shipping promotion with puchase over $/item

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click no thanks button

  @EAT-1055 @EAT-1055-27
  Scenario: create promotion: Enjoy free shipping with purchase over $
    Given I am on Membership Tier New Page
    When I fill "(dirty data)VIP" to membership tier name field
    And I select membership upgrade condition option included "Single purchase" of membership upgrade condition select button
    And I fill "10000" to membership upgrade rules field
    And I fill "20" to member offer field
    And I should see submit button
    And I click on submit button
    Then I should be redirected to Membership Tier Setting Page
    Then I should see row of membership list
    Then 1st row of membership list should contain 'VIP'

    Given I am on Free Shipping Create Page
    And I fill "(dirty data)Enjoy free shipping with purchase over $" to name field
    And I click on subtotal condition checkbox
    And I select minimum amount of condition type dropdown
    And I fill '1000' to promotion condition field
    And I click on countinue to button
    And I click on 2nd target group checkbox
    And I click on membership tier checkbox
    And I select membership dropdown option included 'VIP' of membership dropdown
    And I click on once checkbox
    And I click on 2nd countinue to button
    And I click on 3rd apply method checkbox
    And I click on unlimited checkbox
    And I fill '666' to limited field
    And I click on 3rd countinue to button
    And I click on payment options checkbox included 'Bank Transfer'
    And I click on delivery options checkbox included 'Custom Delivery'
    And I click on preview button
    Then promotion name should contain "Enjoy free shipping with purchase over $"
    Then promotion limitation should contain 'For Affiliate Campaign Only' 
    Then total usage limit should equal to "666 time(s)"
    Then member tier target should contain 'VIP'
    Then number of target group should contain '1'
    Then number of target customer should contain '0'
    Then limit per member should contain 'Once per member'
    Then discount summary should contain "Enjoy free shipping with purchase over NT$1,000"
    Then payment options should not contain 'Bank Transfer'
    Then delivery options should not contain 'Custom Delivery'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Free Shipping Index Page
    And 1st row of promotion name should contain "Enjoy free shipping with purchase over $"
    And 1st row of valid period should contain start full time
    And 1st row of valid period should contain 'Never expires'
    And 1st row of apply to should contain 'Specific Membership Tier(s)'
    And 1st row of free shipping list should contain 'Affiliate Campaign'
    And 1st row of free shipping list should contain '0 / 666'
    When I click on 1st row of edit button
    Then I should be redirected to Free Shipping Edit Page
    And name field should contain 'Enjoy free shipping with purchase over $'
    And general discount summary should contain 'Enjoy free shipping with purchase over NT$1,000'
    And purchase condition dropdown should contain 'Minimum Amount'
    And 1st promotion condition field should contain '1000'
    When I click on countinue to button
    When I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Enjoy free shipping with purchase over $"
    Then promotion limitation should contain 'For Affiliate Campaign Only' 
    Then total usage limit should equal to "666 time(s)"
    Then member tier target should contain 'VIP'
    Then number of target group should contain '1'
    Then number of target customer should contain '0'
    Then limit per member should contain 'Once per member'
    Then discount summary should contain "Enjoy free shipping with purchase over NT$1,000"
    Then payment options should not contain 'Bank Transfer'
    Then delivery options should not contain 'Custom Delivery'

    And ---ROLL BACK---
    Given I am on Free Shipping Index Page
    And I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    Then I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

    Given I am on Membership Tier Setting Page
    When I click dropdown button for the same order of row of membership list included '(dirty data)'
    And I click on dropdown option included 'Delete'
    And I click on popup confirm button

  @EAT-1055 @EAT-1055-28 @CouponCode
  Scenario: create promotion: Enjoy free shipping with purchase over items
    Given I am on Free Shipping Create Page
    And I fill "(dirty data)Enjoy free shipping with purchase over items" to name field
    And I click on subtotal condition checkbox
    And I select minimum items of condition type dropdown
    And I fill "10" to 1st promotion condition field
    And I click on countinue to button
    And I click on 2nd target group checkbox
    And I click on 2nd countinue to button
    And I click on 2nd apply method checkbox
    And I fill 'hihi' to coupon code field
    And I click on never expires checkbox
    And I click on end date field
    Then I should see calendar table
    And I click on date picker button
    And I click on next period button
    And I click on available date button
    And I click on available date button included '01'
    And I click on done button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Enjoy free shipping with purchase over items"
    Then coupon code should equal to "hihi"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain next year january first
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Members"
    Then limit per member should contain 'Unlimited'
    Then discount summary should contain "Enjoy free shipping with purchase over 10 items"
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Free Shipping Index Page
    And 1st row of promotion name should contain "Enjoy free shipping with purchase over items"
    And 1st row of valid period should contain start full time
    And 1st row of valid period should contain next year january first
    And 1st row of apply to should contain 'Members Only'
    And 1st row of method should contain 'Coupon'
    And 1st row of free shipping list should contain '0 / Unlimited'
    When I click on 1st row of edit button
    Then I should be redirected to Free Shipping Edit Page
    And name field should contain 'Enjoy free shipping with purchase over items'
    And general discount summary should contain 'Enjoy free shipping with purchase over 10 items'
    And purchase condition dropdown should contain 'Minimum items'
    And 1st promotion condition field should contain '10'
    When I click on countinue to button
    When I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Enjoy free shipping with purchase over items"
    Then coupon code should equal to "hihi"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain next year january first
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Members"
    Then limit per member should contain 'Unlimited'
    Then discount summary should contain "Enjoy free shipping with purchase over 10 items"

    And ---ROLL BACK---
    Given I am on Free Shipping Index Page
    And I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    Then I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert