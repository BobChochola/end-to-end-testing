@PromotionBaseCase @Admin @Promotion @setupSelectedProductsOverMinimumAmountAndCheck @fixture-product @fixture-promotion @C24220
Feature: Setup selected products over minimum amount with event type (discount %/discount amount/free gift)
  As a merchant
  I want to creat selected products over minimum amount promotion with three kind of event type (discount %/discount amount/free gift)

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

  @EAT-1055 @EAT-1055-15
  Scenario: create promotion: Get % off on Selected Products with purchase of Selected Products over $
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

    Given I am on Promotion Create Page
    And I fill "(dirty data)Get % off on Selected Products with purchase of Selected Products over $" to name field
    And I click on selected products condition checkbox
    And I select minimum amount of condition type dropdown
    When I select discount percent of benefit type dropdown
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
    And I select search by categories of search dropdown
    And I select category dropdown option included 'Group1' of category dropdown
    When I click on search button
    Then I should see select product popup
    And I should see 2 product of popover list
    And I click on 1st checkbox of product list
    And I click on 2nd checkbox of product list
    When I click on popup confirm button
    Then I should see 2 row of selected product
    Then selected products should contain '9th Product for Checkout'
    Then selected products should contain '8th Product for Checkout'
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
    Then promotion name should contain "Get % off on Selected Products with purchase of Selected Products over $"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain next year january first
    Then promotion limitations end date should contain 'Never expires'
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Get 1% off on Selected Products with purchase of Selected Products over NT$10"
    Then discount summary should contain "Get 2% off on Selected Products with purchase of Selected Products over NT$20"
    Then discount summary should contain "Get 3% off on Selected Products with purchase of Selected Products over NT$30"
    Then selected product list should contain '8th Product for Checkout'
    Then selected product list should contain '9th Product for Checkout'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    And 1st row of promotion name should contain "Get % off on Selected Products with purchase of Selected Products over $"
    And 1st row of discounted on should contain "Selected Products"
    And 1st row of valid period should contain next year january first
    And 1st row of valid period should contain 'Never expires'
    And 1st row of apply to should contain 'All Customers'
    And 1st row of method should contain 'Auto Apply'
    When I select promotion option of edit dropdown
    Then I should be redirected to Promotion Edit Page
    And name field should contain "Get % off on Selected Products with purchase of Selected Products over $"
    And general discount summary should contain "Get 1% off on Selected Products with purchase of Selected Products over NT$10"
    And general discount summary should contain "Get 2% off on Selected Products with purchase of Selected Products over NT$20"
    And general discount summary should contain "Get 3% off on Selected Products with purchase of Selected Products over NT$30"
    And purchase condition dropdown should contain 'Minimum Amount'
    And benefit type dropdown should contain "Discount %"
    And benefit applies dropdown should contain "Selected Products"
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
    Then promotion name should contain "Get % off on Selected Products with purchase of Selected Products over $"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain next year january first
    Then promotion limitations end date should contain 'Never expires'
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Get 1% off on Selected Products with purchase of Selected Products over NT$10"
    Then discount summary should contain "Get 2% off on Selected Products with purchase of Selected Products over NT$20"
    Then discount summary should contain "Get 3% off on Selected Products with purchase of Selected Products over NT$30"
    Then selected product list should contain '8th Product for Checkout'
    Then selected product list should contain '9th Product for Checkout'

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

  @EAT-1055 @EAT-1055-16
  Scenario: create promotion: Get $ off on Selected Products with purchase of Selected Products over $
    Given I am on Promotion Create Page
    And I fill "(dirty data)Get $ off on Selected Products with purchase of Selected Products over $" to name field
    And I click on selected products condition checkbox
    And I select minimum amount of condition type dropdown
    When I select discount amount of benefit type dropdown
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
    When I fill '8th Product for Checkout' to search field
    Then I click on search button
    Then I should see select product popup
    And 1st product of popover list should contain '8th Product for Checkout'
    And I click on 1st checkbox of product list
    And I click on popup confirm button
    When I fill '9th Product for Checkout' to search field
    Then I click on search button
    Then I should see select product popup
    And 1st product of popover list should contain '9th Product for Checkout'
    And I click on 1st checkbox of product list
    And I click on popup confirm button
    Then 1st row of selected product should contain '8th Product for Checkout'
    Then 2nd row of selected product should contain '9th Product for Checkout'
    Then I should see 2 row of selected product
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
    Then promotion name should contain "Get $ off on Selected Products with purchase of Selected Products over $"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain next year january first
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Get NT$1 off on Selected Products with purchase of Selected Products over NT$10"
    Then discount summary should contain "Get NT$2 off on Selected Products with purchase of Selected Products over NT$20"
    Then discount summary should contain "Get NT$3 off on Selected Products with purchase of Selected Products over NT$30"
    Then selected product list should contain '8th Product for Checkout'
    Then selected product list should contain '9th Product for Checkout'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    And 1st row of promotion name should contain "Get $ off on Selected Products with purchase of Selected Products over $"
    And 1st row of discounted on should contain "Selected Products"
    And 1st row of valid period should contain start full time
    And 1st row of valid period should contain next year january first
    And 1st row of apply to should contain 'All Customers'
    And 1st row of method should contain 'Auto Apply'
    When I select promotion option of edit dropdown
    Then I should be redirected to Promotion Edit Page
    And name field should contain 'Get $ off on Selected Products with purchase of Selected Products over $'
    And general discount summary should contain 'Get NT$1 off on Selected Products with purchase of Selected Products over NT$10'
    And general discount summary should contain 'Get NT$2 off on Selected Products with purchase of Selected Products over NT$20'
    And general discount summary should contain 'Get NT$3 off on Selected Products with purchase of Selected Products over NT$30'
    And purchase condition dropdown should contain 'Minimum Amount'
    And benefit type dropdown should contain "Discount amount"
    And benefit applies dropdown should contain "Selected Products"
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
    Then promotion name should contain "Get $ off on Selected Products with purchase of Selected Products over $"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain next year january first
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Get NT$1 off on Selected Products with purchase of Selected Products over NT$10"
    Then discount summary should contain "Get NT$2 off on Selected Products with purchase of Selected Products over NT$20"
    Then discount summary should contain "Get NT$3 off on Selected Products with purchase of Selected Products over NT$30"
    Then selected product list should contain '8th Product for Checkout'
    Then selected product list should contain '9th Product for Checkout'

    And ---ROLL BACK---
    Given I am on Promotion Index Page
    And I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    Then I should see confirmation popover
    Then I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

  @EAT-1055 @EAT-1055-17 @fixture-freegift
  Scenario: create promotion: Get Free Gift on Selected Products with purchase of Selected Products over $
    Given I am on Promotion Create Page
    And I fill "(dirty data)Get Free Gift on Selected Products with purchase of Selected Products over $" to name field
    And I click on selected products condition checkbox
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
    When I fill '8th Product for Checkout' to search field
    Then I click on search button
    Then I should see select product popup
    And 1st product of popover list should contain '8th Product for Checkout'
    And I click on 1st checkbox of product list
    And I click on popup confirm button
    When I fill '9th Product for Checkout' to search field
    Then I click on search button
    Then I should see select product popup
    And 1st product of popover list should contain '9th Product for Checkout'
    And I click on 1st checkbox of product list
    And I click on popup confirm button
    Then 1st row of selected product should contain '8th Product for Checkout'
    Then 2nd row of selected product should contain '9th Product for Checkout'
    Then I should see 2 row of selected product
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on unlimited checkbox
    And I fill '100' to times of use field
    And I click on 3rd countinue to button
    And I click on payment options checkbox included 'Bank Transfer'
    And I click on delivery options checkbox included 'Custom Delivery'
    And I click on preview button
    Then promotion name should contain "Get Free Gift on Selected Products with purchase of Selected Products over $"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    Then total usage limit should equal to "100 time(s)"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Get 1 Free Gift(s) (1st Created Free Gift) on Selected Products with purchase of Selected Products over NT$10"
    Then selected product list should contain '8th Product for Checkout'
    Then selected product list should contain '9th Product for Checkout'
    Then payment options should not contain 'Bank Transfer'
    Then delivery options should not contain 'Custom Delivery'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    And 1st row of promotion name should contain "Get Free Gift on Selected Products with purchase of Selected Products over $"
    And 1st row of discounted on should contain "Selected Products"
    And 1st row of valid period should contain start full time
    And 1st row of valid period should contain 'Never expires'
    And 1st row of apply to should contain 'All Customers'
    And 1st row of method should contain 'Auto Apply'
    And 1st row of promotion list should contain '0 / 100'
    When I select promotion option of edit dropdown
    Then I should be redirected to Promotion Edit Page
    And name field should contain 'Get Free Gift on Selected Products with purchase of Selected Products over $'
    And general discount summary should contain 'Get 1 Free Gift(s) (1st Created Free Gift) on Selected Products with purchase of Selected Products over NT$10'
    And purchase condition dropdown should contain 'Minimum Amount'
    And benefit type dropdown should contain "Free Gift"
    And 1st promotion value field should contain '1'
    And 1st promotion condition field should contain '10'
    When I click on countinue to button
    When I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Get Free Gift on Selected Products with purchase of Selected Products over $"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    Then total usage limit should equal to "100 time(s)"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Get 1 Free Gift(s) (1st Created Free Gift) on Selected Products with purchase of Selected Products over NT$10"
    Then selected product list should contain '8th Product for Checkout'
    Then selected product list should contain '9th Product for Checkout'
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