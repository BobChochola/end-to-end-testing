@PromotionBaseCase @Admin @Promotion @noConditionPromotionCreateFeature @fixture-product @fixture-shop @fixture-payment @fixture-delivery @EAT-1055
Feature: Create All Kind of No Condition Promotion

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

  @EAT-1055 @EAT-1055-36
  Scenario: create promotion of Get % off on Selected Products
    Given I am on Promotion Create Page
    Then I fill '(dirty data)Get % off on Selected Products' to name field
    And I select discount percent of benefit type dropdown
    And I select selected product of benefit applies dropdown
    And I fill '10' to promotion value field
    When I fill '1st Product for Checkout' to search field
    When I click on search button
    Then I should see select product popup
    Then 1st product of popover list should contain '1st Product for Checkout'
    When I click on 1st checkbox of product list
    Then I click on popup confirm button
    When I click on 1st countinue to button
    And I click on 2nd target group checkbox
    When I click on 2nd countinue to button
    When I click on 3rd countinue to button
    When I click on preview button
    Then promotion name should contain 'Get % off on Selected Products'
    Then coupon code should contain 'N/A'
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Members"
    Then discount summary should contain "Get 10% off on Selected Products"
    And I click on confirm button
    Then I should be redirected to Promotion Index Page
    And row of promotion name should contain "Get % off on Selected Products"
    And row of discounted on should contain "Selected Products"
    And row of valid period should contain start full time
    And row of valid period should contain 'Never expires'
    And row of apply to should contain 'Members Only'
    And row of method should contain 'Auto Apply'
    When I select promotion option of edit dropdown
    Then I should be redirected to Promotion Edit Page
    And name field should contain 'Get % off on Selected Products'
    And general discount summary should contain 'Get 10% off on Selected Products'
    And benefit type dropdown should contain "Discount %"
    And benefit applies dropdown should contain "Selected Products"
    And promotion value field should contain '10'
    When I click on countinue to button
    When I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Get % off on Selected Products"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Members"
    Then discount summary should contain "Get 10% off on Selected Products"

    And ---ROLL BACK---
    Given I am on Promotion Index Page
    And I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    Then I should see confirmation popover
    Then I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

  @EAT-1055 @EAT-1055-37
  Scenario: create promotion of Get $ off on Selected Products
    Given I am on Promotion Create Page
    Then I fill '(dirty data)Get $ off on Selected Products' to name field
    And I select discount amount of benefit type dropdown
    And I select selected product of benefit applies dropdown
    And I fill '10' to promotion value field
    When I fill '1st Product for Checkout' to search field
    When I click on search button
    Then I should see select product popup
    Then 1st product of popover list should contain '1st Product for Checkout'
    When I click on 1st checkbox of product list
    Then I click on popup confirm button
    When I click on 1st countinue to button
    When I click on 2nd countinue to button
    And I click on unlimited checkbox
    And I fill '1000' to times of use field
    When I click on 3rd countinue to button
    When I click on preview button
    Then promotion name should contain 'Get $ off on Selected Products'
    Then coupon code should contain 'N/A'
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    Then total usage limit should equal to "1000 time(s)"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Get NT$10 off on Selected Products"
    And I click on confirm button
    Then I should be redirected to Promotion Index Page
    And row of promotion name should contain "Get $ off on Selected Products"
    And row of discounted on should contain "Selected Products"
    And row of valid period should contain start full time
    And row of valid period should contain 'Never expires'
    And row of apply to should contain 'All Customers'
    And row of method should contain 'Auto Apply'
    When I select promotion option of edit dropdown
    Then I should be redirected to Promotion Edit Page
    And name field should contain 'Get $ off on Selected Products'
    And general discount summary should contain 'Get NT$10 off on Selected Products'
    And benefit type dropdown should contain "Discount amount"
    And benefit applies dropdown should contain "Selected Products"
    And promotion value field should contain '10'
    When I click on countinue to button
    When I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Get $ off on Selected Products"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    Then total usage limit should equal to "1000 time(s)"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Get NT$10 off on Selected Products"

    And ---ROLL BACK---
    Given I am on Promotion Index Page
    And I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    Then I should see confirmation popover
    Then I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

  @EAT-1055 @EAT-1055-38
  Scenario: create promotion of Get % off on Selected Category
    Given I am on Promotion Create Page
    Then I fill '(dirty data)Get % off on Selected Categories' to name field
    And I select discount percent of benefit type dropdown
    And I select selected category of benefit applies dropdown
    And I fill '10' to promotion value field
    When I click on category checkbox
    When I click on 1st countinue to button
    When I click on 2nd countinue to button
    When I click on 3rd countinue to button
    When I click on preview button
    Then promotion name should contain 'Get % off on Selected Categories'
    Then coupon code should contain 'N/A'
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Get 10% off on Selected Categories"
    And I click on confirm button
    Then I should be redirected to Promotion Index Page
    And row of promotion name should contain "Get % off on Selected Categories"
    And row of discounted on should contain "Selected Categories"
    And row of valid period should contain start full time
    And row of valid period should contain 'Never expires'
    And row of apply to should contain 'All Customers'
    And row of method should contain 'Auto Apply'
    When I select promotion option of edit dropdown
    Then I should be redirected to Promotion Edit Page
    And name field should contain 'Get % off on Selected Categories'
    And general discount summary should contain 'Get 10% off on Selected Categories'
    And benefit type dropdown should contain "Discount %"
    And benefit applies dropdown should contain "Selected Categories"
    And promotion value field should contain '10'
    When I click on countinue to button
    When I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Get % off on Selected Categories"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Get 10% off on Selected Categories"

    And ---ROLL BACK---
    Given I am on Promotion Index Page
    And I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    Then I should see confirmation popover
    Then I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

  @EAT-1055 @EAT-1055-39
  Scenario: create promotion of Get $ off on Selected Category
    Given I am on Promotion Create Page
    Then I fill '(dirty data)Get $ off on Selected Categories' to name field
    And I select discount amount of benefit type dropdown
    And I select selected category of benefit applies dropdown
    And I fill '10' to promotion value field
    When I click on category checkbox
    When I click on 1st countinue to button
    When I click on 2nd countinue to button
    And I click on 3rd apply method checkbox
    When I click on 3rd countinue to button
    When I click on preview button
    Then promotion name should contain 'Get $ off on Selected Categories'
    Then promotion limitation should contain 'For Affiliate Campaign Only' 
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Get NT$10 off on Selected Categories"
    And I click on confirm button
    Then I should be redirected to Promotion Index Page
    And row of promotion name should contain "Get $ off on Selected Categories"
    And row of discounted on should contain "Selected Categories"
    And row of valid period should contain start full time
    And row of valid period should contain 'Never expires'
    And row of apply to should contain 'All Customers'
    And row of promotion list should contain 'Affiliate Campaign'
    When I select promotion option of edit dropdown
    Then I should be redirected to Promotion Edit Page
    And name field should contain 'Get $ off on Selected Categories'
    And general discount summary should contain 'Get NT$10 off on Selected Categories'
    And benefit type dropdown should contain "Discount amount"
    And benefit applies dropdown should contain "Selected Categories"
    And promotion value field should contain '10'
    When I click on countinue to button
    When I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Get $ off on Selected Categories"
    Then promotion limitation should contain 'For Affiliate Campaign Only'
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Get NT$10 off on Selected Categories"

    And ---ROLL BACK---
    Given I am on Promotion Index Page
    And I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    Then I should see confirmation popover
    Then I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

  @EAT-1055 @EAT-1055-40
  Scenario: create free shipping without condition
    Given I am on Free Shipping Create Page
    Then I fill '(dirty data)Enjoy free shipping' to name field
    When I click on 1st countinue to button
    When I click on 2nd countinue to button
    When I click on 3rd countinue to button
    When I click on preview button
    Then promotion name should contain 'Enjoy free shipping'
    Then coupon code should contain 'N/A'
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Enjoy free shipping"
    And I click on confirm button
    Then I should be redirected to Free Shipping Index Page
    And row of promotion name should contain "Enjoy free shipping"
    And row of free shipping list should contain "All Products"
    And row of apply to should contain 'All Customers'
    And row of method should contain 'Auto Apply'
    When I click on row of edit button
    Then I should be redirected to Free Shipping Edit Page
    And name field should contain 'Enjoy free shipping'
    And general discount summary should contain 'Enjoy free shipping'
    When I click on countinue to button
    When I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Enjoy free shipping"
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Enjoy free shipping"

    And ---ROLL BACK---
    Given I am on Promotion Index Page
    And I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    Then I should see confirmation popover
    Then I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert