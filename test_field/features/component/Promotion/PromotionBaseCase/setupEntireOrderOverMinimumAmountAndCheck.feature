@PromotionBaseCase @Admin @Promotion @setupEntireOrderOverMinimumAmountAndCheck @fixture-product @C24220
Feature: Setup entire ordrer over minimum amount with event type (discount %/discount amount/free gift) and applied to (all product/select product/select category)
  As a merchant
  I want to creat different promotions included entire order over minimum items promotion

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

  @EAT-1055 @EAT-1055-1
  Scenario: create promotion: Get % off on Entire Order with purchase over $.
    Given I am on Promotion Create Page
    And I fill "(dirty data)Get % off on Entire Order with purchase over $" to name field
    And I click on subtotal condition checkbox
    And I select minimum amount of condition type dropdown
    When I select discount percent of benefit type dropdown
    When I select all product of benefit applies dropdown
    Then I fill "1" to 1st promotion value field
    And I fill "10" to 1st promotion condition field
    When I click on add tier button
    Then I should see 2 promotion value field
    Then I fill "2" to 2nd promotion value field
    And I fill "20" to 2nd promotion condition field
    When I click on add tier button
    Then I should see 3 promotion value field
    Then I fill "3" to 3rd promotion value field
    And I fill "30" to 3rd promotion condition field
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Get % off on Entire Order with purchase over $"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Get 1% off on Entire Order with purchase over NT$10"
    Then discount summary should contain "Get 2% off on Entire Order with purchase over NT$20"
    Then discount summary should contain "Get 3% off on Entire Order with purchase over NT$30"
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    And 1st row of promotion name should contain "Get % off on Entire Order with purchase over $"
    And 1st row of discounted on should contain "All Products"
    And 1st row of valid period should contain start full time
    And 1st row of valid period should contain 'Never expires'
    And 1st row of apply to should contain 'All Customers'
    And 1st row of method should contain 'Auto Apply'
    When I click on 1st row of edit button
    Then I should be redirected to Promotion Edit Page
    And name field should contain 'Get % off on Entire Order with purchase over $'
    And general discount summary should contain 'Get 1% off on Entire Order with purchase over NT$10'
    And general discount summary should contain 'Get 2% off on Entire Order with purchase over NT$20'
    And general discount summary should contain 'Get 3% off on Entire Order with purchase over NT$30'
    And purchase condition dropdown should contain 'Minimum Amount'
    And benefit type dropdown should contain "Discount %"
    And benefit applies dropdown should contain "All Products"
    And 1st promotion value field should contain '1'
    And 2nd promotion value field should contain '2'
    And 3rd promotion value field should contain '3'
    And 1st promotion condition field should contain '10'
    And 2nd promotion condition field should contain '20'
    And 3rd promotion condition field should contain '30'
    When I click on countinue to button
    When I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Get % off on Entire Order with purchase over $"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Get 1% off on Entire Order with purchase over NT$10"
    Then discount summary should contain "Get 2% off on Entire Order with purchase over NT$20"
    Then discount summary should contain "Get 3% off on Entire Order with purchase over NT$30"

    And ---ROLL BACK---
    Given I am on Promotion Index Page
    And I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    Then I should see confirmation popover
    Then I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

  @EAT-1055 @EAT-1055-2
  Scenario: create promotion: Get $ off on Entire Order with purchase over $.
    Given I am on Promotion Create Page
    And I fill "(dirty data)Get $ off on Entire Order with purchase over $" to name field
    And I click on subtotal condition checkbox
    And I select minimum amount of condition type dropdown
    When I select discount amount of benefit type dropdown
    When I select all product of benefit applies dropdown
    Then I fill "1" to 1st promotion value field
    And I fill "10" to 1st promotion condition field
    When I click on add tier button
    Then I should see 2 promotion value field
    Then I fill "2" to 2nd promotion value field
    And I fill "20" to 2nd promotion condition field
    When I click on add tier button
    Then I should see 3 promotion value field
    Then I fill "3" to 3rd promotion value field
    And I fill "30" to 3rd promotion condition field
    And I click on countinue to button
    And I click on 2nd target group checkbox
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Get $ off on Entire Order with purchase over $"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Members"
    Then discount summary should contain "Get NT$1 off on Entire Order with purchase over NT$10"
    Then discount summary should contain "Get NT$2 off on Entire Order with purchase over NT$20"
    Then discount summary should contain "Get NT$3 off on Entire Order with purchase over NT$30"
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    And 1st row of promotion name should contain "Get $ off on Entire Order with purchase over $"
    And 1st row of discounted on should contain "All Products"
    And 1st row of valid period should contain start full time
    And 1st row of valid period should contain 'Never expires'
    And 1st row of apply to should contain 'Members Only'
    And 1st row of method should contain 'Auto Apply'
    When I click on 1st row of edit button
    Then I should be redirected to Promotion Edit Page
    And name field should contain 'Get $ off on Entire Order with purchase over $'
    And general discount summary should contain 'Get NT$1 off on Entire Order with purchase over NT$10'
    And general discount summary should contain 'Get NT$2 off on Entire Order with purchase over NT$20'
    And general discount summary should contain 'Get NT$3 off on Entire Order with purchase over NT$30'
    And purchase condition dropdown should contain 'Minimum Amount'
    And benefit type dropdown should contain "Discount amount"
    And benefit applies dropdown should contain "All Products"
    And 1st promotion value field should contain '1'
    And 2nd promotion value field should contain '2'
    And 3rd promotion value field should contain '3'
    And 1st promotion condition field should contain '10'
    And 2nd promotion condition field should contain '20'
    And 3rd promotion condition field should contain '30'
    When I click on countinue to button
    When I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Get $ off on Entire Order with purchase over $"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Members"
    Then discount summary should contain "Get NT$1 off on Entire Order with purchase over NT$10"
    Then discount summary should contain "Get NT$2 off on Entire Order with purchase over NT$20"
    Then discount summary should contain "Get NT$3 off on Entire Order with purchase over NT$30"

    And ---ROLL BACK---
    Given I am on Promotion Index Page
    And I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    Then I should see confirmation popover
    Then I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

  @EAT-1055 @EAT-1055-3 @fixture-freegift
  Scenario: create promotion: Get Free Gift on Entire Order with purchase over $.
    Given I am on Promotion Create Page
    And I fill "(dirty data)Get Free Gift on Entire Order with purchase over $" to name field
    And I click on subtotal condition checkbox
    And I select minimum amount of condition type dropdown
    When I select free gift of benefit type dropdown
    Then I fill "1" to 1st promotion value field
    And I fill "10" to 1st promotion condition field
    When I click on select button
    Then I should see select product popup
    When I input '1st Created Free Gift' to search free gift field
    Then 1st product of popover list should contain '1st Created Free Gift'
    And I click on 1st checkbox of product list
    And I click on popup confirm button
    And 1st row free gift should contain '1st Created Free Gift'
    And I click on countinue to button
    And I click on 2nd target group checkbox
    And I click on once checkbox
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Get Free Gift on Entire Order with purchase over $"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Members"
    Then limit per member should contain "Once per member"
    Then discount summary should contain "Get 1 Free Gift(s) (1st Created Free Gift) on Entire Order with purchase over NT$10"
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    And 1st row of promotion name should contain "Get Free Gift on Entire Order with purchase over $"
    And 1st row of discounted on should contain "All Products"
    And 1st row of valid period should contain start full time
    And 1st row of valid period should contain 'Never expires'
    And 1st row of apply to should contain 'Members Only'
    And 1st row of method should contain 'Auto Apply'
    When I click on 1st row of edit button
    Then I should be redirected to Promotion Edit Page
    And name field should contain 'Get Free Gift on Entire Order with purchase over $'
    And general discount summary should contain 'Get 1 Free Gift(s) (1st Created Free Gift) on Entire Order with purchase over NT$10'
    And purchase condition dropdown should contain 'Minimum Amount'
    And benefit type dropdown should contain "Free Gift"
    And 1st promotion value field should contain '1'
    And 1st promotion condition field should contain '10'
    When I click on countinue to button
    When I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Get Free Gift on Entire Order with purchase over $"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Members"
    Then limit per member should contain "Once per member"
    Then discount summary should contain "Get 1 Free Gift(s) (1st Created Free Gift) on Entire Order with purchase over NT$10"

    And ---ROLL BACK---
    Given I am on Promotion Index Page
    And I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    Then I should see confirmation popover
    Then I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

  @EAT-1055 @EAT-1055-4 @fixture-promotion
  Scenario: create promotion: Get % off on Selected Products with purchase over $
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

    Given I am on Promotion Create Page
    And I fill "(dirty data)Get % off on Selected Products with purchase over $" to name field
    And I click on subtotal condition checkbox
    And I select minimum amount of condition type dropdown
    When I select discount percent of benefit type dropdown
    When I select selected product of benefit applies dropdown
    Then I fill "1" to 1st promotion value field
    And I fill "10" to 1st promotion condition field
    When I fill '8th Product for Checkout' to search field
    When I click on search button
    Then I should see select product popup
    And 1st product of popover list should contain "8th Product for Checkout"
    And I click on 1st checkbox of product list
    And I click on popup confirm button
    And I should see 1 row of selected product
    And 1st row of selected product should contain '8th Product for Checkout'
    And I click on countinue to button
    And I click on 2nd target group checkbox
    And I click on membership tier checkbox
    And I select membership dropdown option included 'VIP' of membership dropdown
    And I click on once checkbox
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    When I click on preview button
    And promotion name should contain "Get % off on Selected Products with purchase over $"
    And coupon code should equal to "N/A"
    And promotion limitations start date should contain start date
    And promotion limitations end date should contain 'Never expires'
    And total usage limit should equal to "Unlimited"
    And member tier target should contain 'VIP'
    And number of target group should contain '1'
    And number of target customer should contain '0'
    Then limit per member should contain "Once per member"
    Then discount summary should contain "Get 1% off on Selected Products with purchase over NT$10"
    And selected product list should contain '8th Product for Checkout'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    And 1st row of promotion name should contain "Get % off on Selected Products with purchase over $"
    And 1st row of discounted on should contain "Selected Products"
    And 1st row of valid period should contain start full time
    And 1st row of valid period should contain 'Never expires'
    And 1st row of apply to should contain 'Specific Membership Tier(s)'
    And 1st row of method should contain 'Auto Apply'
    When I select promotion option of edit dropdown
    Then I should be redirected to Promotion Edit Page
    And name field should contain 'Get % off on Selected Products with purchase over $'
    And general discount summary should contain 'Get 1% off on Selected Products with purchase over NT$10'
    And purchase condition dropdown should contain 'Minimum Amount'
    And benefit type dropdown should contain "Discount %"
    And benefit applies dropdown should contain "Selected Products"
    And 1st promotion value field should contain '1'
    And 1st promotion condition field should contain '10'
    When I click on countinue to button
    When I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    And promotion name should contain "Get % off on Selected Products with purchase over $"
    And coupon code should equal to "N/A"
    And promotion limitations start date should contain start date
    And promotion limitations end date should contain 'Never expires'
    And total usage limit should equal to "Unlimited"
    And member tier target should contain 'VIP'
    And number of target group should contain '1'
    And number of target customer should contain '0'
    Then limit per member should contain "Once per member"
    Then discount summary should contain "Get 1% off on Selected Products with purchase over NT$10"
    And selected product list should contain '8th Product for Checkout'

    And ---ROLL BACK---
    Given I am on Promotion Index Page
    And I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    Then I should see confirmation popover
    Then I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

    Given I am on Membership Tier Setting Page
    When I click dropdown button for the same order of row of membership list included '(dirty data)'
    And I click on dropdown option included 'Delete'
    And I click on popup confirm button

  @EAT-1055 @EAT-1055-5 @fixture-promotion
  Scenario: create promotion: Get $ off on Selected Products with purchase over $
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

    Given I am on Customer List Page
    When I input 'testuser@shoplineapp.com' to search field
    When I click view button for the same order of customer row included 'testuser@shoplineapp.com'
    Then I should be redirected to Customer Detail Page
    And I click on membership tier settings update button
    And I select membership tier dropdown option included 'VIP' of membership tier dropdown
    And I should see popover confirm button
    And I click on popover confirm button

    Given I am on Promotion Create Page
    And I fill "(dirty data)Get $ off on Selected Products with purchase over $" to name field
    And I click on subtotal condition checkbox
    And I select minimum amount of condition type dropdown
    When I select discount amount of benefit type dropdown
    When I select selected product of benefit applies dropdown
    Then I fill "1" to 1st promotion value field
    And I fill "10" to 1st promotion condition field
    When I fill '8th Product for Checkout' to search field
    When I click on search button
    Then I should see select product popup
    And 1st product of popover list should contain "8th Product for Checkout"
    And I click on 1st checkbox of product list
    And I click on popup confirm button
    And I should see 1 row of selected product
    And 1st row of selected product should contain '8th Product for Checkout'
    And I click on countinue to button
    And I click on 2nd target group checkbox
    And I click on membership tier checkbox
    And I select membership dropdown option included 'VIP' of membership dropdown
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    When I click on preview button
    And promotion name should contain "Get $ off on Selected Products with purchase over $"
    And coupon code should equal to "N/A"
    And promotion limitations start date should contain start date
    And promotion limitations end date should contain 'Never expires'
    And total usage limit should equal to "Unlimited"
    And member tier target should contain 'VIP'
    And number of target group should contain '1'
    And number of target customer should contain '1'
    Then limit per member should contain "Unlimited"
    Then discount summary should contain "Get NT$1 off on Selected Products with purchase over NT$10"
    And selected product list should contain '8th Product for Checkout'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    And 1st row of promotion name should contain "Get $ off on Selected Products with purchase over $"
    And 1st row of discounted on should contain "Selected Products"
    And 1st row of valid period should contain start full time
    And 1st row of valid period should contain 'Never expires'
    And 1st row of apply to should contain 'Specific Membership Tier(s)'
    And 1st row of method should contain 'Auto Apply'
    When I select promotion option of edit dropdown
    Then I should be redirected to Promotion Edit Page
    And name field should contain 'Get $ off on Selected Products with purchase over $'
    And general discount summary should contain 'Get NT$1 off on Selected Products with purchase over NT$10'
    And purchase condition dropdown should contain 'Minimum Amount'
    And benefit type dropdown should contain "Discount amount"
    And benefit applies dropdown should contain "Selected Products"
    And 1st promotion value field should contain '1'
    And 1st promotion condition field should contain '10'
    When I click on countinue to button
    When I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    And promotion name should contain "Get $ off on Selected Products with purchase over $"
    And coupon code should equal to "N/A"
    And promotion limitations start date should contain start date
    And promotion limitations end date should contain 'Never expires'
    And total usage limit should equal to "Unlimited"
    And member tier target should contain 'VIP'
    And number of target group should contain '1'
    And number of target customer should contain '1'
    Then limit per member should contain "Unlimited"
    Then discount summary should contain "Get NT$1 off on Selected Products with purchase over NT$10"
    And selected product list should contain '8th Product for Checkout'

    And ---ROLL BACK---
    Given I am on Promotion Index Page
    And I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    Then I should see confirmation popover
    Then I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

    Given I am on Customer List Page
    When I input 'testuser@shoplineapp.com' to search field
    Then 1st row of user email should contain 'testuser@shoplineapp.com'
    When I click on 1st view button
    Then I should be redirected to Customer Detail Page
    And I click on membership tier settings update button
    And I select membership tier dropdown option included 'Basic' of membership tier dropdown
    And I should see popover confirm button
    And I click on popover confirm button

    Given I am on Membership Tier Setting Page
    When I click dropdown button for the same order of row of membership list included '(dirty data)'
    And I click on dropdown option included 'Delete'
    And I click on popup confirm button

  @EAT-1055 @EAT-1055-6 @fixture-promotion
  Scenario: create promotion: Get % off on Selected Categories with purchase over $
    Given I am on Category Create Page
    And I fill 'Group' to category name field
    When I click on add button 
    Then I should be redirected to Category List Page
    Then I should see 2 row of categories list
    When I click view products button of categories list for the same order of row of categories list included "Group"
    Then I should be redirected to Category View Products Page
    And I click on add product to category button
    Then I should see add product popover
    When I input '8th Product for Checkout' to popover search field
    And 1st list of popup product list should contain '8th Product for Checkout'
    And I click on 1st list of popup product list
    When I input '9th Product for Checkout' to popover search field
    And 1st list of popup product list should contain '9th Product for Checkout'
    And I click on 1st list of popup product list
    When I click on confirm button

    Given I am on Promotion Create Page
    And I fill "(dirty data)Get % off on Selected Categories with purchase over $" to name field
    And I click on subtotal condition checkbox
    And I select minimum amount of condition type dropdown
    When I select discount percent of benefit type dropdown
    When I select selected category of benefit applies dropdown
    Then I fill "1" to 1st promotion value field
    And I fill "10" to 1st promotion condition field
    And I click on category checkbox included 'Group'
    When I click on select excluded product
    Then I should see select product popup
    When I input '9th Product for Checkout' to popup search field
    Then 1st product of popover list should contain '9th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then 1st row of selected product should contain '9th Product for Checkout'
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd apply method checkbox
    And I click on 3rd countinue to button
    When I click on preview button
    And promotion name should contain "Get % off on Selected Categories with purchase over $"
    And promotion limitation should contain 'For Affiliate Campaign Only'
    And total usage limit should equal to "Unlimited"
    And target group should contain 'All Customers'
    Then discount summary should contain "Get 1% off on Selected Categories with purchase over NT$10"
    And selected category option should contain 'Group'
    And selected product list should contain "9th Product for Checkout"
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    And 1st row of promotion name should contain "Get % off on Selected Categories with purchase over $"
    And 1st row of discounted on should contain "Selected Categories"
    And 1st row of valid period should contain start full time
    And 1st row of valid period should contain 'Never expires'
    And 1st row of apply to should contain 'All Customers'
    And 1st row of promotion list should contain 'Affiliate Campaign'
    When I select promotion option of edit dropdown
    Then I should be redirected to Promotion Edit Page
    And name field should contain 'Get % off on Selected Categories with purchase over $'
    And general discount summary should contain 'Get 1% off on Selected Categories with purchase over NT$10'
    And purchase condition dropdown should contain 'Minimum Amount'
    And benefit type dropdown should contain "Discount %"
    And benefit applies dropdown should contain "Selected Categories"
    And 1st promotion value field should contain '1'
    And 1st promotion condition field should contain '10'
    When I click on countinue to button
    When I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    And promotion name should contain "Get % off on Selected Categories with purchase over $"
    And promotion limitation should contain 'For Affiliate Campaign Only'
    And total usage limit should equal to "Unlimited"
    And target group should contain 'All Customers'
    Then discount summary should contain "Get 1% off on Selected Categories with purchase over NT$10"
    And selected category option should contain 'Group'
    And selected product list should contain "9th Product for Checkout"

    And ---ROLL BACK---
    Given I am on Promotion Index Page
    And I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    Then I should see confirmation popover
    Then I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

    Given I am on Category List Page
    When I click delete button of categories list for the same order of row of categories list included "Group"
    Then I should see delete confirmation popover
    And I click on delete checkbox
    When I click on confirm delete button

  @EAT-1055 @EAT-1055-7 @CouponCode @fixture-promotion
  Scenario: create promotion: Get $ off on Selected Categories with purchase over $
    Given I am on Category Create Page
    And I fill 'Group' to category name field
    When I click on add button 
    Then I should be redirected to Category List Page
    Then I should see 2 row of categories list
    When I click view products button of categories list for the same order of row of categories list included "Group"
    Then I should be redirected to Category View Products Page
    And I click on add product to category button
    Then I should see add product popover
    When I input '8th Product for Checkout' to popover search field
    And 1st list of popup product list should contain '8th Product for Checkout'
    And I click on 1st list of popup product list
    When I input '9th Product for Checkout' to popover search field
    And 1st list of popup product list should contain '9th Product for Checkout'
    And I click on 1st list of popup product list
    When I click on confirm button

    Given I am on Promotion Create Page
    And I fill "(dirty data)Get $ off on Selected Categories with purchase over $" to name field
    And I click on subtotal condition checkbox
    And I select minimum amount of condition type dropdown
    When I select discount amount of benefit type dropdown
    When I select selected category of benefit applies dropdown
    Then I fill "1" to 1st promotion value field
    And I fill "10" to 1st promotion condition field
    And I click on category checkbox included 'Group'
    When I click on select excluded product
    Then I should see select product popup
    When I input '9th Product for Checkout' to popup search field
    Then 1st product of popover list should contain '9th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then 1st row of selected product should contain '9th Product for Checkout'
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 2nd apply method checkbox
    And I fill 'coupon' to coupon code field
    And I click on 3rd countinue to button
    When I click on preview button
    And promotion name should contain "Get $ off on Selected Categories with purchase over $"
    And coupon code should contain 'coupon'
    And promotion limitations start date should contain start date
    And promotion limitations end date should contain 'Never expires'
    And total usage limit should equal to "Unlimited"
    And target group should contain 'All Customers'
    Then discount summary should contain "Get NT$1 off on Selected Categories with purchase over NT$10"
    And selected category option should contain 'Group'
    And selected product list should contain "9th Product for Checkout"
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    And 1st row of promotion name should contain "Get $ off on Selected Categories with purchase over $"
    And 1st row of discounted on should contain "Selected Categories"
    And 1st row of valid period should contain start full time
    And 1st row of valid period should contain 'Never expires'
    And 1st row of apply to should contain 'All Customers'
    And 1st row of method should contain 'Coupon'
    When I select promotion option of edit dropdown
    Then I should be redirected to Promotion Edit Page
    And name field should contain 'Get $ off on Selected Categories with purchase over $'
    And general discount summary should contain 'Get NT$1 off on Selected Categories with purchase over NT$10'
    And purchase condition dropdown should contain 'Minimum Amount'
    And benefit type dropdown should contain "Discount amount"
    And benefit applies dropdown should contain "Selected Categories"
    And 1st promotion value field should contain '1'
    And 1st promotion condition field should contain '10'
    When I click on countinue to button
    When I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    And promotion name should contain "Get $ off on Selected Categories with purchase over $"
    And coupon code should contain 'coupon'
    And promotion limitations start date should contain start date
    And promotion limitations end date should contain 'Never expires'
    And total usage limit should equal to "Unlimited"
    And target group should contain 'All Customers'
    Then discount summary should contain "Get NT$1 off on Selected Categories with purchase over NT$10"
    And selected category option should contain 'Group'
    And selected product list should contain "9th Product for Checkout"

    And ---ROLL BACK---
    Given I am on Promotion Index Page
    And I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    Then I should see confirmation popover
    Then I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

    Given I am on Category List Page
    When I click delete button of categories list for the same order of row of categories list included "Group"
    Then I should see delete confirmation popover
    And I click on delete checkbox
    When I click on confirm delete button