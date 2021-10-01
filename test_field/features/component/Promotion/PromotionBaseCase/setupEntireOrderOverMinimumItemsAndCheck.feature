@PromotionBaseCase @Admin @Promotion @setupEntireOrderOverMinimumItemsAndCheck @fixture-product @C24220
Feature: Setup entire ordrer over minimum items with event type (discount %/discount amount/free gift) and applied to (all product/select product/select category)
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

  @EAT-1055 @EAT-1055-8
  Scenario: create promotion: Get % off on Entire Order with purchase over items.
    Given I am on Promotion Create Page
    And I fill "(dirty data)Get % off on Entire Order with purchase over items" to name field
    And I click on subtotal condition checkbox
    And I select minimum items of condition type dropdown
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
    When I click on start date field
    Then I should see calendar table
    And I click on date picker button
    And I click on next period button
    And I click on 1st available date button
    And I click on available date button included '01'
    And I click on done button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Get % off on Entire Order with purchase over items"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain next year january first
    Then promotion limitations end date should contain 'Never expires'
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Get 1% off on Entire Order with purchase over 10 items"
    Then discount summary should contain "Get 2% off on Entire Order with purchase over 20 items"
    Then discount summary should contain "Get 3% off on Entire Order with purchase over 30 items"
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    And 1st row of promotion name should contain "Get % off on Entire Order with purchase over items"
    And 1st row of discounted on should contain "All Products"
    And 1st row of valid period should contain next year january first
    And 1st row of valid period should contain 'Never expires'
    And 1st row of apply to should contain 'All Customers'
    And 1st row of method should contain 'Auto Apply'
    When I click on 1st row of edit button
    Then I should be redirected to Promotion Edit Page
    And name field should contain 'Get % off on Entire Order with purchase over items'
    And general discount summary should contain 'Get 1% off on Entire Order with purchase over 10 items'
    And general discount summary should contain 'Get 1% off on Entire Order with purchase over 10 items'
    And general discount summary should contain 'Get 1% off on Entire Order with purchase over 10 items'
    And purchase condition dropdown should contain 'Minimum items'
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
    Then promotion name should contain "Get % off on Entire Order with purchase over items"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain next year january first
    Then promotion limitations end date should contain 'Never expires'
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Get 1% off on Entire Order with purchase over 10 items"
    Then discount summary should contain "Get 2% off on Entire Order with purchase over 20 items"
    Then discount summary should contain "Get 3% off on Entire Order with purchase over 30 items"

    And ---ROLL BACK---
    Given I am on Promotion Index Page
    And I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    Then I should see confirmation popover
    Then I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

  @EAT-1055 @EAT-1055-9
  Scenario: create promotion: Get $ off on Entire Order with purchase over items
    Given I am on Promotion Create Page
    And I fill "(dirty data)Get $ off on Entire Order with purchase over items" to name field
    And I click on subtotal condition checkbox
    And I select minimum items of condition type dropdown
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
    And I click on 2nd countinue to button
    When I click on never expires checkbox
    When I click on end date field
    Then I should see calendar table
    And I click on date picker button
    And I click on next period button
    And I click on 1st available date button
    And I click on available date button included '01'
    And I click on done button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Get $ off on Entire Order with purchase over items"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain next year january first
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Get NT$1 off on Entire Order with purchase over 10 items"
    Then discount summary should contain "Get NT$2 off on Entire Order with purchase over 20 items"
    Then discount summary should contain "Get NT$3 off on Entire Order with purchase over 30 items"
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    And 1st row of promotion name should contain "Get $ off on Entire Order with purchase over items"
    And 1st row of discounted on should contain "All Products"
    And 1st row of valid period should contain start full time
    And 1st row of valid period should contain next year january first
    And 1st row of apply to should contain 'All Customers'
    And 1st row of method should contain 'Auto Apply'
    When I click on 1st row of edit button
    Then I should be redirected to Promotion Edit Page
    And name field should contain 'Get $ off on Entire Order with purchase over items'
    And general discount summary should contain 'Get NT$1 off on Entire Order with purchase over 10 items'
    And general discount summary should contain 'Get NT$2 off on Entire Order with purchase over 20 items'
    And general discount summary should contain 'Get NT$3 off on Entire Order with purchase over 30 items'
    And purchase condition dropdown should contain 'Minimum items'
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
    Then promotion name should contain "Get $ off on Entire Order with purchase over items"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain next year january first
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Get NT$1 off on Entire Order with purchase over 10 items"
    Then discount summary should contain "Get NT$2 off on Entire Order with purchase over 20 items"
    Then discount summary should contain "Get NT$3 off on Entire Order with purchase over 30 items"

    And ---ROLL BACK---
    Given I am on Promotion Index Page
    And I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    Then I should see confirmation popover
    Then I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

  @EAT-1055 @EAT-1055-10 @fixture-freegift
  Scenario: create promotion: Get Free Gift on Entire Order with purchase over items.
    Given I am on Promotion Create Page
    And I fill "(dirty data)Get Free Gift on Entire Order with purchase over items" to name field
    And I click on subtotal condition checkbox
    And I select minimum items of condition type dropdown
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
    And I click on 2nd countinue to button
    And I click on unlimited checkbox
    And I fill '100' to times of use field
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Get Free Gift on Entire Order with purchase over items"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    Then total usage limit should equal to "100 time(s)"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Get 1 Free Gift(s) (1st Created Free Gift) on Entire Order with purchase over 10 items"
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    And 1st row of promotion name should contain "Get Free Gift on Entire Order with purchase over items"
    And 1st row of discounted on should contain "All Products"
    And 1st row of valid period should contain start full time
    And 1st row of valid period should contain 'Never expires'
    And 1st row of apply to should contain 'All Customers'
    And 1st row of method should contain 'Auto Apply'
    And 1st row of promotion list should contain '0 / 100'
    When I click on 1st row of edit button
    Then I should be redirected to Promotion Edit Page
    And name field should contain 'Get Free Gift on Entire Order with purchase over items'
    And general discount summary should contain 'Get 1 Free Gift(s) (1st Created Free Gift) on Entire Order with purchase over 10 items'
    And purchase condition dropdown should contain 'Minimum items'
    And benefit type dropdown should contain "Free Gift"
    And 1st promotion value field should contain '1'
    And 1st promotion condition field should contain '10'
    When I click on countinue to button
    When I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Get Free Gift on Entire Order with purchase over items"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    Then total usage limit should equal to "100 time(s)"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Get 1 Free Gift(s) (1st Created Free Gift) on Entire Order with purchase over 10 items"

    And ---ROLL BACK---
    Given I am on Promotion Index Page
    And I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    Then I should see confirmation popover
    Then I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

  @EAT-1055 @EAT-1055-11 @fixture-promotion
  Scenario: create promotion: Get % off on Selected Products with purchase over items
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

    Given I am on Membership Tier New Page
    When I fill "(dirty data)VVIP" to membership tier name field
    And I select membership upgrade condition option included "Single purchase" of membership upgrade condition select button
    And I fill "20000" to membership upgrade rules field
    And I fill "30" to member offer field
    And I should see submit button
    And I click on submit button
    Then I should be redirected to Membership Tier Setting Page
    Then I should see row of membership list
    Then 2nd row of membership list should contain 'VVIP'

    Given I am on Promotion Create Page
    And I fill "(dirty data)Get % off on Selected Products with purchase over items" to name field
    And I click on subtotal condition checkbox
    And I select minimum items of condition type dropdown
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
    And I click on membership dropdown
    And I click on membership dropdown option included 'VIP'
    And I click on membership dropdown option included 'VVIP'
    And I click on 2nd countinue to button
    When I click on 3rd apply method checkbox
    And I click on 3rd countinue to button
    When I click on preview button
    And promotion name should contain "Get % off on Selected Products with purchase over items"
    And promotion limitation should equal to "For Affiliate Campaign Only"
    And total usage limit should equal to "Unlimited"
    And 1st member tier target should contain 'VIP'
    And 2nd member tier target should contain 'VVIP'
    And number of target group should contain '2'
    And number of target customer should contain '0'
    Then limit per member should contain "Unlimited"
    Then discount summary should contain "Get 1% off on Selected Products with purchase over 10 items"
    And selected product list should contain '8th Product for Checkout'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    And 1st row of promotion name should contain "Get % off on Selected Products with purchase over items"
    And 1st row of discounted on should contain "Selected Products"
    And 1st row of valid period should contain start full time
    And 1st row of valid period should contain 'Never expires'
    And 1st row of apply to should contain 'Specific Membership Tier(s)'
    And 1st row of promotion list should contain 'Affiliate Campaign'
    When I select promotion option of edit dropdown
    Then I should be redirected to Promotion Edit Page
    And name field should contain 'Get % off on Selected Products with purchase over items'
    And general discount summary should contain 'Get 1% off on Selected Products with purchase over 10 items'
    And purchase condition dropdown should contain 'Minimum items'
    And benefit type dropdown should contain "Discount %"
    And benefit applies dropdown should contain "Selected Products"
    And 1st promotion value field should contain '1'
    And 1st promotion condition field should contain '10'
    When I click on countinue to button
    When I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    And promotion name should contain "Get % off on Selected Products with purchase over items"
    And promotion limitation should equal to "For Affiliate Campaign Only"
    And total usage limit should equal to "Unlimited"
    And 1st member tier target should contain 'VIP'
    And 2nd member tier target should contain 'VVIP'
    And number of target group should contain '2'
    And number of target customer should contain '0'
    Then limit per member should contain "Unlimited"
    Then discount summary should contain "Get 1% off on Selected Products with purchase over 10 items"
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
    When I click dropdown button for the same order of row of membership list included '(dirty data)'
    And I click on dropdown option included 'Delete'
    And I click on popup confirm button

  @EAT-1055 @EAT-1055-12 @CouponCode @fixture-promotion
  Scenario: create promotion: Get $ off on Selected Products with purchase items
    Given I am on Promotion Create Page
    And I fill "(dirty data)Get $ off on Selected Products with purchase items" to name field
    And I click on subtotal condition checkbox
    And I select minimum items of condition type dropdown
    When I select discount amount of benefit type dropdown
    When I select selected product of benefit applies dropdown
    Then I fill "1" to 1st promotion value field
    And I fill "10" to 1st promotion condition field
    When I click on add tier button
    Then I should see 2 promotion value field
    Then I fill "2" to 2nd promotion value field
    And I fill "20" to 2nd promotion condition field
    When I fill '8th Product for Checkout' to search field
    When I click on search button
    Then I should see select product popup
    And 1st product of popover list should contain "8th Product for Checkout"
    And I click on 1st checkbox of product list
    And I click on popup confirm button
    When I fill '9th Product for Checkout' to search field
    When I click on search button
    Then I should see select product popup
    And 1st product of popover list should contain "9th Product for Checkout"
    And I click on 1st checkbox of product list
    And I click on popup confirm button
    And I should see 2 row of selected product
    And 1st row of selected product should contain '8th Product for Checkout'
    And 2nd row of selected product should contain '9th Product for Checkout'
    And I click on countinue to button
    And I click on 2nd target group checkbox
    And I click on 2nd countinue to button
    And I click on 2nd apply method checkbox
    Then I fill 'coupon,pon' to coupon code field
    Then I click on never expires checkbox
    When I click on end date field
    Then I should see calendar table
    And I click on date picker button
    And I click on next period button
    And I click on 1st available date button
    And I click on available date button included '01'
    And I click on done button
    And I click on 3rd countinue to button
    When I click on preview button
    And promotion name should contain "Get $ off on Selected Products with purchase items"
    And coupon code should equal to "coupon,pon"
    And promotion limitations start date should contain start date
    And promotion limitations end date should contain next year january first
    And total usage limit should equal to "Unlimited"
    And target group should contain 'All Members'
    Then limit per member should contain "Unlimited"
    Then discount summary should contain "Get NT$1 off on Selected Products with purchase over 10 items"
    Then discount summary should contain "Get NT$2 off on Selected Products with purchase over 20 items"
    And selected product list should contain '8th Product for Checkout'
    And selected product list should contain '9th Product for Checkout'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    And 1st row of promotion name should contain "Get $ off on Selected Products with purchase items"
    And 1st row of discounted on should contain "Selected Products"
    And 1st row of valid period should contain start full time
    And 1st row of valid period should contain next year january first
    And 1st row of apply to should contain 'Members Only'
    And 1st row of method should contain 'Coupon'
    When I select promotion option of edit dropdown
    Then I should be redirected to Promotion Edit Page
    And name field should contain 'Get $ off on Selected Products with purchase items'
    And general discount summary should contain 'Get NT$1 off on Selected Products with purchase over 10 items'
    And general discount summary should contain 'Get NT$2 off on Selected Products with purchase over 20 items'
    And purchase condition dropdown should contain 'Minimum items'
    And benefit type dropdown should contain "Discount amount"
    And benefit applies dropdown should contain "Selected Products"
    And 1st promotion value field should contain '1'
    And 1st promotion condition field should contain '10'
    And 2nd promotion value field should contain '2'
    And 2nd promotion condition field should contain '20'
    When I click on countinue to button
    When I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    And promotion name should contain "Get $ off on Selected Products with purchase items"
    And coupon code should equal to "coupon,pon"
    And promotion limitations start date should contain start date
    And promotion limitations end date should contain next year january first
    And total usage limit should equal to "Unlimited"
    And target group should contain 'All Members'
    Then limit per member should contain "Unlimited"
    Then discount summary should contain "Get NT$1 off on Selected Products with purchase over 10 items"
    Then discount summary should contain "Get NT$2 off on Selected Products with purchase over 20 items"
    And selected product list should contain '8th Product for Checkout'
    And selected product list should contain '9th Product for Checkout'

    And ---ROLL BACK---
    Given I am on Promotion Index Page
    And I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    Then I should see confirmation popover
    Then I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

  @EAT-1055 @EAT-1055-13 @fixture-promotion
  Scenario: create promotion: Get % off on Selected Categories with purchase over items
    Given I am on Category Create Page
    And I fill '(dirty data)Group1' to category name field
    When I click on add button 
    Then I should be redirected to Category List Page
    Then I should see 2 row of categories list
    When I click view products button of categories list for the same order of row of categories list included "Group1"
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

    Given I am on Category Create Page
    And I fill '(dirty data)Group2' to category name field
    When I click on add button 
    Then I should be redirected to Category List Page
    Then I should see 3 row of categories list
    When I click view products button of categories list for the same order of row of categories list included "Group2"
    Then I should be redirected to Category View Products Page
    And I click on add product to category button
    Then I should see add product popover
    When I input '10th Product for Checkout' to popover search field
    And 1st list of popup product list should contain '10th Product for Checkout'
    And I click on 1st list of popup product list
    When I input '11th Product for Checkout' to popover search field
    And 1st list of popup product list should contain '11th Product for Checkout'
    And I click on 1st list of popup product list
    When I click on confirm button

    Given I am on Promotion Create Page
    And I fill "(dirty data)Get % off on Selected Categories with purchase over items" to name field
    And I click on subtotal condition checkbox
    And I select minimum items of condition type dropdown
    When I select discount percent of benefit type dropdown
    When I select selected category of benefit applies dropdown
    Then I fill "1" to 1st promotion value field
    And I fill "10" to 1st promotion condition field
    When I click on add tier button
    Then I should see 2 promotion value field
    Then I fill "2" to 2nd promotion value field
    And I fill "20" to 2nd promotion condition field
    And I click on category checkbox included 'Group1'
    And I click on category checkbox included 'Group2'
    When I click on select excluded product
    Then I should see select product popup
    Then I should see 4 product of popover list
    When I input '9th Product for Checkout' to popup search field
    Then 1st product of popover list should contain '9th Product for Checkout'
    And I click on 1st checkbox of product list
    When I input '11th Product for Checkout' to popup search field
    Then 1st product of popover list should contain '11th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see 2 row of selected product
    Then 1st row of selected product should contain '9th Product for Checkout'
    Then 2nd row of selected product should contain '11th Product for Checkout'
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on unlimited checkbox
    And I fill '87' to times of use field
    And I click on 3rd countinue to button
    When I click on preview button
    And promotion name should contain "Get % off on Selected Categories with purchase over items"
    And coupon code should contain 'N/A'
    And promotion limitations start date should contain start date
    And promotion limitations end date should contain 'Never expires'
    And total usage limit should equal to "87 time(s)"
    And target group should contain 'All Customers'
    Then discount summary should contain "Get 1% off on Selected Categories with purchase over 10 items"
    Then discount summary should contain "Get 2% off on Selected Categories with purchase over 20 items"
    And 1st selected category option should contain 'Group1'
    And 2nd selected category option should contain 'Group2'
    And selected product list should contain "9th Product for Checkout"
    And selected product list should contain "11th Product for Checkout"
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    And 1st row of promotion name should contain "Get % off on Selected Categories with purchase over items"
    And 1st row of discounted on should contain "Selected Categories"
    And 1st row of valid period should contain start full time
    And 1st row of valid period should contain 'Never expires'
    And 1st row of apply to should contain 'All Customers'
    And 1st row of promotion list should contain 'Auto Apply'
    And 1st row of promotion list should contain '0 / 87'
    When I select promotion option of edit dropdown
    Then I should be redirected to Promotion Edit Page
    And name field should contain 'Get % off on Selected Categories with purchase over items'
    And general discount summary should contain 'Get 1% off on Selected Categories with purchase over 10 items'
    And general discount summary should contain 'Get 2% off on Selected Categories with purchase over 20 items'
    And purchase condition dropdown should contain 'Minimum items'
    And benefit type dropdown should contain "Discount %"
    And benefit applies dropdown should contain "Selected Categories"
    And 1st promotion value field should contain '1'
    And 1st promotion condition field should contain '10'
    And 2nd promotion value field should contain '2'
    And 2nd promotion condition field should contain '20'
    When I click on countinue to button
    When I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    And promotion name should contain "Get % off on Selected Categories with purchase over items"
    And coupon code should contain 'N/A'
    And promotion limitations start date should contain start date
    And promotion limitations end date should contain 'Never expires'
    And total usage limit should equal to "87 time(s)"
    And target group should contain 'All Customers'
    Then discount summary should contain "Get 1% off on Selected Categories with purchase over 10 items"
    Then discount summary should contain "Get 2% off on Selected Categories with purchase over 20 items"
    And 1st selected category option should contain 'Group1'
    And 2nd selected category option should contain 'Group2'
    And selected product list should contain "9th Product for Checkout"
    And selected product list should contain "11th Product for Checkout"

    And ---ROLL BACK---
    Given I am on Promotion Index Page
    And I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    Then I should see confirmation popover
    Then I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

    Given I am on Category List Page
    When I click delete button of categories list for the same order of row of categories list included "(dirty data)Group1"
    Then I should see delete confirmation popover
    And I click on delete checkbox
    When I click on confirm delete button
    Then I should see 2 row of categories list
    When I click delete button of categories list for the same order of row of categories list included "(dirty data)Group2"    
    Then I should see delete confirmation popover
    And I click on delete checkbox
    When I click on confirm delete button

  @EAT-1055 @EAT-1055-14 @CouponCode @fixture-promotion
  Scenario: create promotion: Get $ off on Selected Categories with purchase over items
    Given I am on Category Create Page
    And I fill '(dirty data)Group1' to category name field
    When I click on add button 
    Then I should be redirected to Category List Page
    Then I should see 2 row of categories list
    When I click view products button of categories list for the same order of row of categories list included "Group1"
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

    Given I am on Category Create Page
    And I fill '(dirty data)Group2' to category name field
    When I click on add button 
    Then I should be redirected to Category List Page
    Then I should see 3 row of categories list
    When I click view products button of categories list for the same order of row of categories list included "Group2"
    Then I should be redirected to Category View Products Page
    And I click on add product to category button
    Then I should see add product popover
    When I input '10th Product for Checkout' to popover search field
    And 1st list of popup product list should contain '10th Product for Checkout'
    And I click on 1st list of popup product list
    When I input '11th Product for Checkout' to popover search field
    And 1st list of popup product list should contain '11th Product for Checkout'
    And I click on 1st list of popup product list
    When I click on confirm button

    Given I am on Promotion Create Page
    And I fill "(dirty data)Get $ off on Selected Categories with purchase over items" to name field
    And I click on subtotal condition checkbox
    And I select minimum items of condition type dropdown
    When I select discount amount of benefit type dropdown
    When I select selected category of benefit applies dropdown
    Then I fill "1" to 1st promotion value field
    And I fill "10" to 1st promotion condition field
    And I click on category checkbox included 'Group1'
    And I click on category checkbox included 'Group2'
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 2nd apply method checkbox
    And I fill 'coupon' to coupon code field
    And I click on 3rd countinue to button
    When I click on preview button
    And promotion name should contain "Get $ off on Selected Categories with purchase over items"
    And coupon code should contain 'coupon'
    And promotion limitations start date should contain start date
    And promotion limitations end date should contain 'Never expires'
    And total usage limit should equal to "Unlimited"
    And target group should contain 'All Customers'
    Then discount summary should contain "Get NT$1 off on Selected Categories with purchase over 10 items"
    And 1st selected category option should contain 'Group1'
    And 2nd selected category option should contain 'Group2'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    And 1st row of promotion name should contain "Get $ off on Selected Categories with purchase over items"
    And 1st row of discounted on should contain "Selected Categories"
    And 1st row of valid period should contain start full time
    And 1st row of valid period should contain 'Never expires'
    And 1st row of apply to should contain 'All Customers'
    And 1st row of method should contain 'Coupon'
    When I select promotion option of edit dropdown
    Then I should be redirected to Promotion Edit Page
    And name field should contain 'Get $ off on Selected Categories with purchase over items'
    And general discount summary should contain 'Get NT$1 off on Selected Categories with purchase over 10 items'
    And purchase condition dropdown should contain 'Minimum items'
    And benefit type dropdown should contain "Discount amount"
    And benefit applies dropdown should contain "Selected Categories"
    And 1st promotion value field should contain '1'
    And 1st promotion condition field should contain '10'
    When I click on countinue to button
    When I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    And promotion name should contain "Get $ off on Selected Categories with purchase over items"
    And coupon code should contain 'coupon'
    And promotion limitations start date should contain start date
    And promotion limitations end date should contain 'Never expires'
    And total usage limit should equal to "Unlimited"
    And target group should contain 'All Customers'
    Then discount summary should contain "Get NT$1 off on Selected Categories with purchase over 10 items"
    And 1st selected category option should contain 'Group1'
    And 2nd selected category option should contain 'Group2'

    And ---ROLL BACK---
    Given I am on Promotion Index Page
    And I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    Then I should see confirmation popover
    Then I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

    Given I am on Category List Page
    When I click delete button of categories list for the same order of row of categories list included "(dirty data)Group1"
    Then I should see delete confirmation popover
    And I click on delete checkbox
    When I click on confirm delete button
    Then I should see 2 row of categories list
    When I click delete button of categories list for the same order of row of categories list included "(dirty data)Group2"
    Then I should see delete confirmation popover
    And I click on delete checkbox
    When I click on confirm delete button