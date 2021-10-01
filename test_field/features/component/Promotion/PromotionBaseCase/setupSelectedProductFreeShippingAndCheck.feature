@PromotionBaseCase @Admin @Promotion @setupSelectedProductFreeShippingAndCheck @fixture-product @C24220
Feature: Setup free shipping over minimum amount/minimum items
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

  @EAT-1055 @EAT-1055-29
  Scenario: create promotion: Enjoy free shipping with purchase of Selected Products over $
    Given I am on Product Index Page
    When I input '8th Product for Checkout' to search field
    Then 1st row of product name should contain '8th Product for Checkout'
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on tab included 'Settings'
    And I input 'searchme' to tag field
    When I click on update button
    Then I should be redirected to Product Index Page

    Given I am on Free Shipping Create Page
    And I fill "(dirty data)Enjoy free shipping with purchase of Selected Products over $" to name field
    And I click on selected products condition checkbox
    And I select minimum amount of condition type dropdown
    And I fill '1000' to promotion condition field
    And I select search by tag of search dropdown
    And I fill 'searchme' to search field
    When I click on search button
    Then I should see select product popup
    Then 1st list of popup product should contain '8th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then 1st row of selected product should contain '8th Product for Checkout'
    And I click on countinue to button
    And I click on 2nd countinue to button
    When I click on start date field
    Then I should see calendar table
    And I click on date picker button
    And I click on next period button
    And I click on 1st available date button
    And I click on available date button included '01'
    And I click on done button
    When I click on never expires checkbox 
    When I click on end date field
    Then I should see calendar table
    And I click on date picker button
    And I click on next period button
    And I click on 2nd available date button
    And I click on available date button included '01'
    And I click on done button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Enjoy free shipping with purchase of Selected Products over $"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain next year january first
    Then promotion limitations end date should contain next year february first
    Then total usage limit should equal to "Unlimited"
    Then target group should contain 'All Customers'
    Then discount summary should contain "Enjoy free shipping with purchase of Selected Products over NT$1,000"
    Then 1st selected product list should contain '8th Product for Checkout'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Free Shipping Index Page
    And 1st row of promotion name should contain "Enjoy free shipping with purchase of Selected Products over $"
    And 1st row of valid period should contain next year february first
    And 1st row of valid period should contain next year january first
    And 1st row of apply to should contain 'All Customers'
    And 1st row of method should contain 'Auto Apply'
    And 1st row of free shipping list should contain '0 / Unlimited'
    When I select promotion option of edit dropdown
    Then I should be redirected to Free Shipping Edit Page
    And name field should contain 'Enjoy free shipping with purchase of Selected Products over $'
    And general discount summary should contain 'Enjoy free shipping with purchase of Selected Products over NT$1,000'
    And purchase condition dropdown should contain 'Minimum Amount'
    And 1st promotion condition field should contain '1000'
    When I click on countinue to button
    When I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Enjoy free shipping with purchase of Selected Products over $"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain next year january first
    Then promotion limitations end date should contain next year february first
    Then total usage limit should equal to "Unlimited"
    Then target group should contain 'All Customers'
    Then discount summary should contain "Enjoy free shipping with purchase of Selected Products over NT$1,000"
    Then 1st selected product list should contain '8th Product for Checkout'

    And ---ROLL BACK---
    Given I am on Free Shipping Index Page
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

  @EAT-1055 @EAT-1055-30
  Scenario: create promotion: Enjoy free shipping with purchase over items
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

    Given I am on Free Shipping Create Page
    And I fill "(dirty data)Enjoy free shipping with purchase of Selected Products over items" to name field
    And I click on selected products condition checkbox
    And I select minimum items of condition type dropdown
    And I fill "10" to 1st promotion condition field
    And I select search by categories of search dropdown
    And I select category dropdown option included 'Group1' of category dropdown
    When I click on search button
    Then I should see select product popup
    And I should see 2 list of popup product
    And I click on 1st checkbox of product list
    And I click on 2nd checkbox of product list
    When I click on popup confirm button
    Then I should see 2 row of selected product
    Then selected products should contain '9th Product for Checkout'
    Then selected products should contain '8th Product for Checkout'
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Enjoy free shipping with purchase of Selected Products over items"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Enjoy free shipping with purchase of Selected Products over 10 items"
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Free Shipping Index Page
    And 1st row of promotion name should contain "Enjoy free shipping with purchase of Selected Products over items"
    And 1st row of valid period should contain start date
    And 1st row of valid period should contain 'Never expires'
    And 1st row of apply to should contain 'All Customers'
    And 1st row of method should contain 'Auto Apply'
    And 1st row of free shipping list should contain '0 / Unlimited'
    When I select promotion option of edit dropdown
    Then I should be redirected to Free Shipping Edit Page
    And name field should contain 'Enjoy free shipping with purchase of Selected Products over items'
    And general discount summary should contain 'Enjoy free shipping with purchase of Selected Products over 10 items'
    And purchase condition dropdown should contain 'Minimum items'
    And 1st promotion condition field should contain '10'
    When I click on countinue to button
    When I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Enjoy free shipping with purchase of Selected Products over items"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Enjoy free shipping with purchase of Selected Products over 10 items"

    And ---ROLL BACK---
    Given I am on Free Shipping Index Page
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