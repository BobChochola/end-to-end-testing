@PromotionBaseCase @Admin @Promotion @setupSelectedProductOverMinimumItemsAndCheck @fixture-product @fixture-promotion @C24220
Feature: Setup select product over minimum items with three kind of event type (discount %/discount amount/free gift)
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

  @EAT-1055 @EAT-1055-18
  Scenario: create promotion: Get % off on Selected Products with purchase of Selected Products over items
    Given I am on Product Index Page
    When I input '8th Product for Checkout' to search field
    Then 1st row of product name should contain '8th Product for Checkout'
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on tab included 'Settings'
    And I input 'searchme' to tag field
    When I click on update button
    Then I should be redirected to Product Index Page

    Given I am on Promotion Create Page
    And I fill "(dirty data)Get % off on Selected Products with purchase of Selected Products over items" to name field
    And I click on selected products condition checkbox
    And I select minimum items of condition type dropdown
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
    And I select search by tag of search dropdown
    And I fill 'searchme' to search field
    When I click on search button
    Then I should see select product popup
    Then 1st product of popover list should contain '8th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then 1st row of selected product should contain '8th Product for Checkout'
    And I click on countinue to button
    And I click on 2nd target group checkbox
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Get % off on Selected Products with purchase of Selected Products over items"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start full time
    Then promotion limitations end date should contain 'Never expires'
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Members"
    Then discount summary should contain "Get 1% off on Selected Products with purchase of Selected Products over 10 items"
    Then discount summary should contain "Get 2% off on Selected Products with purchase of Selected Products over 20 items"
    Then discount summary should contain "Get 3% off on Selected Products with purchase of Selected Products over 30 items"
    Then selected product list should contain '8th Product for Checkout'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    And 1st row of promotion name should contain "Get % off on Selected Products with purchase of Selected Products over items"
    And 1st row of discounted on should contain "Selected Products"
    And 1st row of valid period should contain start full time
    And 1st row of valid period should contain 'Never expires'
    And 1st row of apply to should contain 'Members Only'
    And 1st row of method should contain 'Auto Apply'
    When I select promotion option of edit dropdown
    Then I should be redirected to Promotion Edit Page
    And name field should contain 'Get % off on Selected Products with purchase of Selected Products over items'
    And general discount summary should contain "Get 1% off on Selected Products with purchase of Selected Products over 10 items"
    And general discount summary should contain "Get 2% off on Selected Products with purchase of Selected Products over 20 items"
    And general discount summary should contain "Get 3% off on Selected Products with purchase of Selected Products over 30 items"
    And purchase condition dropdown should contain 'Minimum items'
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
    Then promotion name should contain "Get % off on Selected Products with purchase of Selected Products over items"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start full time
    Then promotion limitations end date should contain 'Never expires'
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Members"
    Then discount summary should contain "Get 1% off on Selected Products with purchase of Selected Products over 10 items"
    Then discount summary should contain "Get 2% off on Selected Products with purchase of Selected Products over 20 items"
    Then discount summary should contain "Get 3% off on Selected Products with purchase of Selected Products over 30 items"
    Then selected product list should contain '8th Product for Checkout'

    And ---ROLL BACK---
    Given I am on Promotion Index Page
    And I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    Then I should see confirmation popover
    Then I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

    Given I am on Product Index Page
    When I input '8th Product for Checkout' to search field
    Then 1st row of product name should contain '8th Product for Checkout'
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on tab included 'Settings'
    And I click on remove tag button
    When I click on update button
    Then I should be redirected to Product Index Page

  @EAT-1055 @EAT-1055-19
  Scenario: create promotion: Get $ off on Selected Products with purchase of Selected Products over items
    Given I am on Promotion Create Page
    And I fill "(dirty data)Get $ off on Selected Products with purchase of Selected Products over items" to name field
    And I click on selected products condition checkbox
    And I select minimum items of condition type dropdown
    When I select discount amount of benefit type dropdown
    Then I fill "1" to 1st promotion value field
    And I fill "10" to 1st promotion condition field
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
    Then I should see 2 row of selected product
    Then selected products should contain '8th Product for Checkout'
    Then selected products should contain '9th Product for Checkout'
    And I click on countinue to button
    And I click on 2nd target group checkbox
    And I click on once checkbox
    And I click on 2nd countinue to button
    When I click on never expires checkbox
    When I click on end date field
    Then I should see calendar table
    And I click on date picker button
    And I click on next period button
    And I click on 1st available date button
    And I click on available date button included '01'
    And I click on done button
    And I click on unlimited checkbox
    And I fill '487' to times of use field
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Get $ off on Selected Products with purchase of Selected Products over items"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain next year january first
    Then total usage limit should equal to "487 time(s)"
    Then target group should equal to "All Members"
    Then limit per member should contain 'Once per member'
    Then discount summary should contain "Get NT$1 off on Selected Products with purchase of Selected Products over 10 items"
    Then selected product list should contain '8th Product for Checkout'
    Then selected product list should contain '9th Product for Checkout'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    And 1st row of promotion name should contain "Get $ off on Selected Products with purchase of Selected Products over items"
    And 1st row of discounted on should contain "Selected Products"
    And 1st row of valid period should contain start full time
    And 1st row of valid period should contain next year january first
    And 1st row of apply to should contain 'Members Only'
    And 1st row of method should contain 'Auto Apply'
    And 1st row of promotion list should contain '0 / 487'
    When I select promotion option of edit dropdown
    Then I should be redirected to Promotion Edit Page
    And name field should contain 'Get $ off on Selected Products with purchase of Selected Products over items'
    And general discount summary should contain 'Get NT$1 off on Selected Products with purchase of Selected Products over 10 items'
    And purchase condition dropdown should contain 'Minimum items'
    And benefit type dropdown should contain "Discount amount"
    And benefit applies dropdown should contain "Selected Products"
    And 1st promotion value field should contain '1'
    And 1st promotion condition field should contain '10'
    When I click on countinue to button
    When I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Get $ off on Selected Products with purchase of Selected Products over items"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain next year january first
    Then total usage limit should equal to "487 time(s)"
    Then target group should equal to "All Members"
    Then limit per member should contain 'Once per member'
    Then discount summary should contain "Get NT$1 off on Selected Products with purchase of Selected Products over 10 items"
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

  @EAT-1055 @EAT-1055-20 @fixture-freegift
  Scenario: create promotion: Get Free Gift on Selected Products with purchase of Selected Products over items
    Given I am on Promotion Create Page
    And I fill "(dirty data)Get Free Gift on Selected Products with purchase of Selected Products over items" to name field
    And I click on selected products condition checkbox
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
    And I click on add tier button
    Then I fill "2" to 2nd promotion value field
    And I fill "20" to 2nd promotion condition field
    When I click on 2nd select button
    Then I should see select product popup
    When I input '2nd Created Free Gift' to search free gift field
    Then 1st product of popover list should contain '2nd Created Free Gift'
    And I click on 1st checkbox of product list
    And I click on popup confirm button
    Then I scroll down to 2nd row free gift
    And 2nd row free gift should contain '2nd Created Free Gift'
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
    Then selected products should contain '8th Product for Checkout'
    Then selected products should contain '9th Product for Checkout'
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Get Free Gift on Selected Products with purchase of Selected Products over items"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Get 1 Free Gift(s) (1st Created Free Gift) on Selected Products with purchase of Selected Products over 10 items"
    Then discount summary should contain "Get 2 Free Gift(s) (2nd Created Free Gift) on Selected Products with purchase of Selected Products over 20 items"
    Then selected product list should contain '8th Product for Checkout'
    Then selected product list should contain '9th Product for Checkout'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    And 1st row of promotion name should contain "Get Free Gift on Selected Products with purchase of Selected Products over items"
    And 1st row of discounted on should contain "Selected Products"
    And 1st row of valid period should contain start full time
    And 1st row of valid period should contain 'Never expires'
    And 1st row of apply to should contain 'All Customers'
    And 1st row of method should contain 'Auto Apply'
    And 1st row of promotion list should contain '0 / Unlimited'
    When I select promotion option of edit dropdown
    Then I should be redirected to Promotion Edit Page
    And name field should contain 'Get Free Gift on Selected Products with purchase of Selected Products over items'
    And general discount summary should contain 'Get 1 Free Gift(s) (1st Created Free Gift) on Selected Products with purchase of Selected Products over 10 items'
    And general discount summary should contain 'Get 2 Free Gift(s) (2nd Created Free Gift) on Selected Products with purchase of Selected Products over 20 items'
    And purchase condition dropdown should contain 'Minimum items'
    And benefit type dropdown should contain "Free Gift"
    And 1st promotion value field should contain '1'
    And 1st promotion condition field should contain '10'
    When I click on countinue to button
    When I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Get Free Gift on Selected Products with purchase of Selected Products over items"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Get 1 Free Gift(s) (1st Created Free Gift) on Selected Products with purchase of Selected Products over 10 items"
    Then discount summary should contain "Get 2 Free Gift(s) (2nd Created Free Gift) on Selected Products with purchase of Selected Products over 20 items"
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