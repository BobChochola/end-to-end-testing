@PromotionBaseCase @Admin @Promotion @setupSelectedCategoryOverMinimumAmountAndCheck @fixture-product @C24220 
Feature: Setup selected category over minimum amount with event type (discount %/discount amount/free gift)
  As a merchant
  I want to creat selected category promotions with three kind of event type (discount %/discount amount/free gift)

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

  @EAT-1055 @EAT-1055-21
  Scenario: create promotion: Get % off on Selected Categories with purchase of products in Selected Categories over $
    Given I am on Promotion Create Page
    And I fill "(dirty data)Get % off on Selected Categories with purchase of products in Selected Categories over $" to name field
    And I click on selected categories condition checkbox
    And I select minimum amount of condition type dropdown
    When I select discount percent of benefit type dropdown
    Then I fill "1" to 1st promotion value field
    And I fill "10" to 1st promotion condition field
    When I click on add tier button
    Then I should see 2 promotion value field
    Then I fill "2" to 2nd promotion value field
    And I fill "20" to 2nd promotion condition field
    And I click on category checkbox included 'Group1'
    And I should see select excluded product
    And I click on countinue to button
    And I click on 2nd target group checkbox
    And I click on 2nd countinue to button
    And I click on 3rd apply method checkbox
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Get % off on Selected Categories with purchase of products in Selected Categories over $"
    Then promotion limitation should contain 'For Affiliate Campaign Only' 
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Members"
    Then discount summary should contain "Get 1% off on Selected Categories with purchase of products in Selected Categories over NT$10"
    Then discount summary should contain "Get 2% off on Selected Categories with purchase of products in Selected Categories over NT$20"
    Then selected category option should contain 'Group1'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    And 1st row of promotion name should contain "Get % off on Selected Categories with purchase of products in Selected Categories over $"
    And 1st row of discounted on should contain "Selected Categories"
    And 1st row of valid period should contain start full time
    And 1st row of valid period should contain 'Never expires'
    And 1st row of apply to should contain 'Members Only'
    And 1st row of promotion list should contain 'Affiliate Campaign'
    When I select promotion option of edit dropdown
    Then I should be redirected to Promotion Edit Page
    And name field should contain "Get % off on Selected Categories with purchase of products in Selected Categories over $"
    And general discount summary should contain "Get 1% off on Selected Categories with purchase of products in Selected Categories over NT$10"
    And general discount summary should contain "Get 2% off on Selected Categories with purchase of products in Selected Categories over NT$20"
    And purchase condition dropdown should contain 'Minimum Amount'
    And benefit type dropdown should contain "Discount %"
    And benefit applies dropdown should contain "Selected Categories"
    And 1st promotion value field should contain '1'
    And 2nd promotion value field should contain '2'
    And 1st promotion condition field should contain '10'
    And 2nd promotion condition field should contain '20'
    When I click on countinue to button
    When I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Get % off on Selected Categories with purchase of products in Selected Categories over $"
    Then promotion limitation should contain 'For Affiliate Campaign Only' 
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Members"
    Then discount summary should contain "Get 1% off on Selected Categories with purchase of products in Selected Categories over NT$10"
    Then discount summary should contain "Get 2% off on Selected Categories with purchase of products in Selected Categories over NT$20"
    Then selected category option should contain 'Group1'

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
    Then I should see 1 row of categories list

  @EAT-1055 @EAT-1055-22 @CouponCode
  Scenario: create promotion: Get $ off on Selected Categories with purchase of products in Selected Categories over $
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
    And I fill "(dirty data)Get $ off on Selected Categories with purchase of products in Selected Categories over $" to name field
    And I click on selected categories condition checkbox
    And I select minimum amount of condition type dropdown
    When I select discount amount of benefit type dropdown
    Then I fill "1" to 1st promotion value field
    And I fill "10" to 1st promotion condition field
    And I click on category checkbox included 'Group1'
    When I click on select excluded product
    Then I should see select product popup
    Then I should see 2 product of popover list
    When I input '9th Product for Checkout' to popup search field
    Then 1st product of popover list should contain '9th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see 1 row of selected product
    Then 1st row of selected product should contain '9th Product for Checkout'
    And I click on countinue to button
    And I click on 2nd target group checkbox
    And I click on membership tier checkbox
    And I select membership dropdown option included 'VIP' of membership dropdown
    And I click on once checkbox
    And I click on 2nd countinue to button
    And I click on 2nd apply method checkbox
    And I fill 'doNotUseMe' to coupon code field
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Get $ off on Selected Categories with purchase of products in Selected Categories over $"
    Then coupon code should equal to "doNotUseMe"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    Then total usage limit should equal to "Unlimited"
    Then member tier target should contain 'VIP'
    Then number of target group should contain '1'
    Then number of target customer should contain '0'
    Then limit per member should contain 'Once per member'
    Then discount summary should contain "Get NT$1 off on Selected Categories with purchase of products in Selected Categories over NT$10"
    Then selected product list should contain '9th Product for Checkout'
    Then selected category option should contain 'Group1'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    And 1st row of promotion name should contain "Get $ off on Selected Categories with purchase of products in Selected Categories over $"
    And 1st row of discounted on should contain "Selected Categories"
    And 1st row of valid period should contain start full time
    And 1st row of valid period should contain 'Never expires'
    And 1st row of apply to should contain 'Specific Membership Tier(s)'
    And 1st row of method should contain 'Coupon'
    When I select promotion option of edit dropdown
    Then I should be redirected to Promotion Edit Page
    And name field should contain 'Get $ off on Selected Categories with purchase of products in Selected Categories over $'
    And general discount summary should contain 'Get NT$1 off on Selected Categories with purchase of products in Selected Categories over NT$10'
    And purchase condition dropdown should contain 'Minimum Amount'
    And benefit type dropdown should contain "Discount amount"
    And benefit applies dropdown should contain "Selected Categories"
    And 1st promotion value field should contain '1'
    And 1st promotion condition field should contain '10'
    When I click on countinue to button
    When I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Get $ off on Selected Categories with purchase of products in Selected Categories over $"
    Then coupon code should equal to "doNotUseMe"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    Then total usage limit should equal to "Unlimited"
    Then member tier target should contain 'VIP'
    Then number of target group should contain '1'
    Then number of target customer should contain '0'
    Then limit per member should contain 'Once per member'
    Then discount summary should contain "Get NT$1 off on Selected Categories with purchase of products in Selected Categories over NT$10"
    Then selected product list should contain '9th Product for Checkout'
    Then selected category option should contain 'Group1'

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

    Given I am on Membership Tier Setting Page
    When I click dropdown button for the same order of row of membership list included '(dirty data)'
    And I click on dropdown option included 'Delete'
    And I click on popup confirm button

  @EAT-1055 @EAT-1055-23 @fixture-freegift
  Scenario: create promotion: Get Free Gift(s) on Selected Categories with purchase in Selected Categories over $
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
    And I fill "(dirty data)Get Free Gift(s) on Selected Categories with purchase in Selected Categories over $" to name field
    And I click on selected categories condition checkbox
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
    And I click on category checkbox included 'Group1'
    And I click on category checkbox included 'Group2'
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on payment options checkbox included 'Bank Transfer'
    And I click on delivery options checkbox included 'Custom Delivery'
    And I click on preview button
    Then promotion name should contain "Get Free Gift(s) on Selected Categories with purchase in Selected Categories over $"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Get 1 Free Gift(s) (1st Created Free Gift) on Selected Categories with purchase of products in Selected Categories over NT$10"
    Then selected category option should contain 'Group1'
    Then 2nd selected category option should contain 'Group2'
    Then payment options should not contain 'Bank Transfer'
    Then delivery options should not contain 'Custom Delivery'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    And 1st row of promotion name should contain "Get Free Gift(s) on Selected Categories with purchase in Selected Categories over $"
    And 1st row of discounted on should contain "Selected Categories"
    And 1st row of valid period should contain start full time
    And 1st row of valid period should contain 'Never expires'
    And 1st row of apply to should contain 'All Customers'
    And 1st row of method should contain 'Auto Apply'
    And 1st row of promotion list should contain '0 / Unlimited'
    When I select promotion option of edit dropdown
    Then I should be redirected to Promotion Edit Page
    And name field should contain 'Get Free Gift(s) on Selected Categories with purchase in Selected Categories over $'
    And general discount summary should contain 'Get 1 Free Gift(s) (1st Created Free Gift) on Selected Categories with purchase of products in Selected Categories over NT$10'
    And purchase condition dropdown should contain 'Minimum Amount'
    And benefit type dropdown should contain "Free Gift"
    And 1st promotion value field should contain '1'
    And 1st promotion condition field should contain '10'
    When I click on countinue to button
    When I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Get Free Gift(s) on Selected Categories with purchase in Selected Categories over $"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Get 1 Free Gift(s) (1st Created Free Gift) on Selected Categories with purchase of products in Selected Categories over NT$10"
    Then selected category option should contain 'Group1'
    Then 2nd selected category option should contain 'Group2'
    Then payment options should not contain 'Bank Transfer'
    Then delivery options should not contain 'Custom Delivery'

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