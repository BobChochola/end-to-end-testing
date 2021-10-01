@BaseCase @Admin @Storefornt @PromotionBaseCase @Promotion @BundleGroup @Unstackable @bundleGroupPricing-unstackable
@fixture-payment @fixture-delivery @fixture-product @fixture-shop @fixture-promotion @C24220
Feature: Checkout Unstackable Bundle Group Pricing Apply
  As a merchant
  When I want to create bundle group promotion for my customer

   Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

    Given I am on Basic Setting Page
    And I mark the value of shop name field as variable shop name

  @EAT-981 @EAT-981-1 @EAT-996 @EAT-996-2 @EAT-1055 @EAT-1055-32
  Scenario: Check bundle group creat page ui and use bundle group promotion on storefront
    Given I am on Bundle Pricing Index Page
    Then 1st tab should contain 'Bundle Pricing'
    Then 2nd tab should contain 'Bundle Group Pricing'
    When I select add promotion dropdown option included 'Bundle Group' of add promotion dropdown
    Then I should be redirected to Bundle Group Create Page
    And I fill '（dirty data）Buy 2 in Group A & 1 in Group B for $49' to name field
    And I click on stackable off checkbox
    When I fill '2' to group a field
    When I fill '1' to group b field
    When I fill '49' to price field
    Then discount summary should contain 'Purchase 2 items of Selected Products in Group A and 1 items of Selected Products in Group B for NT$49'
    And I should see group a tab
    Then select product button should contain 'Select Products in Group A'
    When I click on select product button
    Then I should see select product popup
    Then I input '6th Product for Checkout' to search field
    Then 1st product list should contain '6th Product for Checkout'
    Then I click on 1st checkbox of product list
    Then I input '10th Product for Checkout' to search field
    Then 1st product list should contain '10th Product for Checkout'
    Then I click on 1st checkbox of product list
    Then I input '12th Product for Checkout' to search field
    Then 1st product list should contain '12th Product for Checkout'
    Then I click on 1st checkbox of product list
    Then I input '13th Product for Checkout' to search field
    Then 1st product list should contain '13th Product for Checkout'
    Then I click on 1st checkbox of product list
    When I click on popup confirm button
    Then selected products should contain '6th Product for Checkout'
    Then selected products should contain '10th Product for Checkout'
    Then selected products should contain '12th Product for Checkout'
    Then selected products should contain '13th Product for Checkout'
    When I click on group b tab
    Then select product button should contain 'Select Products in Group B'
    When I click on select product button
    Then I should see select product popup
    When I input '17th Product for Checkout' to search field
    Then 1st product list should contain '17th Product for Checkout'
    Then I click on 1st checkbox of product list
    When I input '18th Product for Checkout' to search field
    Then 1st product list should contain '18th Product for Checkout'
    Then I click on 1st checkbox of product list
    When I input '6th Product for Checkout' to search field
    Then 1st product list should contain '6th Product for Checkout'
    Then I should see 1 product list
    Then I should see 1 red dot
    Then 1st product list should contain 'Selected'
    When I input '10th Product for Checkout' to search field
    Then 1st product list should contain '10th Product for Checkout'
    Then I should see 1 product list
    Then I should see 1 red dot
    Then 1st product list should contain 'Selected'
    When I input '12th Product for Checkout' to search field
    Then 1st product list should contain '12th Product for Checkout'
    Then I should see 1 product list
    Then I should see 1 red dot
    Then 1st product list should contain 'Selected'
    When I input '13th Product for Checkout' to search field
    Then 1st product list should contain '13th Product for Checkout'
    Then I should see 1 product list
    Then I should see 1 red dot
    Then 1st product list should contain 'Selected'
    When I click on popup confirm button
    Then selected products should contain '17th Product for Checkout'
    Then selected products should contain '18th Product for Checkout'
    When I click on group a tab
    Then select product button should contain 'Select Products in Group A'
    When I click on select product button
    Then I should see select product popup
    When I input '17th Product for Checkout' to search field
    Then 1st product list should contain '17th Product for Checkout'
    Then I should see 1 product list
    Then I should see 1 green dot
    Then 1st product list should contain 'Selected'
    When I input '18th Product for Checkout' to search field
    Then 1st product list should contain '18th Product for Checkout'
    Then I should see 1 product list
    Then I should see 1 green dot
    Then 1st product list should contain 'Selected'
    Then I click on close popover button
    When I click on 1st countinue to button
    Then I should see 3 target group checkbox
    When I click on 2nd countinue to button
    Then I should see start date field
    Then I should see end date field
    Then I should see never expires checkbox
    And I click on never expires checkbox
    When I click on end date field
    Then I should see calendar table
    And I click on date picker
    And I click on next button
    And I click on 1st available date button
    And I click on 1st available date button
    And I click on done button
    When I click on 3rd countinue to button
    Then I should see payment options
    Then I should see delivery options
    Then I scroll down to preview button
    When I click on preview button
    Then target group should contain 'All Customers'
    Then stackable pricing should contain 'Off'
    Then promotion name should contain 'Buy 2 in Group A & 1 in Group B for $49'
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain end date
    When I click on preview group a tab
    Then preview selected products should contain '6th Product for Checkout'
    Then preview selected products should contain '10th Product for Checkout'
    Then preview selected products should contain '12th Product for Checkout'
    Then preview selected products should contain '13th Product for Checkout'
    When I click on preview group b tab
    Then preview selected products should contain '17th Product for Checkout'
    Then preview selected products should contain '18th Product for Checkout'
    When I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 2 in Group A & 1 in Group B for $49'
    Then 1st row of promotions should contain start date
    Then 1st row of promotions should contain end date
    Then 1st row of promotions should contain 'All Customers'
    Then 1st row of promotions should contain 'Unlimited'
    When I select bundle price edit dropdown option included 'Promotion' of bundle price edit dropdown
    Then I should be redirected to Bundle Group Edit Page
    Then name field should contain 'Buy 2 in Group A & 1 in Group B for $49'
    Then group a field should contain '2'
    Then group b field should contain '1'
    Then price field should contain '49'
    When I click on group a tab
    Then selected products should contain '6th Product for Checkout'
    Then selected products should contain '10th Product for Checkout'
    Then selected products should contain '12th Product for Checkout'
    Then selected products should contain '13th Product for Checkout'
    When I click on group b tab
    Then selected products should contain '17th Product for Checkout'
    Then selected products should contain '18th Product for Checkout'
    When I click on 1st countinue to button
    When I click on 2nd countinue to button
    When I click on 3nd countinue to button
    When I click on preview button
    Then target group should contain 'All Customers'
    Then stackable pricing should contain 'Off'
    Then promotion name should contain 'Buy 2 in Group A & 1 in Group B for $49'
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain end date
    When I click on preview group a tab
    Then preview selected products should contain '6th Product for Checkout'
    Then preview selected products should contain '10th Product for Checkout'
    Then preview selected products should contain '12th Product for Checkout'
    Then preview selected products should contain '13th Product for Checkout'
    When I click on preview group b tab
    Then preview selected products should contain '17th Product for Checkout'
    Then preview selected products should contain '18th Product for Checkout'

    Given I am on Shop Product Index Page
    Then I input '6th Product for Checkout' to search field
    Then 1st product of products list should contain '6th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    Then I input '10th Product for Checkout' to search field
    Then 1st product of products list should contain '10th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    Then I input '12th Product for Checkout' to search field
    Then 1st product of products list should contain '12th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    Then I input '13th Product for Checkout' to search field
    Then 1st product of products list should contain '13th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    Then I input '17th Product for Checkout' to search field
    Then 1st product of products list should contain '17th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    Then I input '18th Product for Checkout' to search field
    Then 1st product of products list should contain '18th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then applied promotion should contain '-NT$160'
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 3 seconds for loading
    Then cart item subtotal should contain 'NT$264'
    Then discount applied should contain '-NT$160'
    Then delivery fee should contain 'NT$10'
    Then total should contain 'NT$114'
    Then I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on become member checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then 1st row of product items should contain '6th Product for Checkout'
    Then 1st row of product items should contain 'Buy 2 in Group A & 1 in Group B for $49'
    Then 1st row of product unit price should contain 'NT$59'
    Then 1st row of product quantity should equal to '1'
    Then 1st row of product items should contain 'NT$59'
    Then 2nd row of product items should contain '10th Product for Checkout'
    Then 2nd row of product items should contain 'Buy 2 in Group A & 1 in Group B for $49'
    Then 2nd row of product unit price should contain 'NT$50'
    Then 2nd row of product quantity should equal to '1'
    Then 2nd row of product items should contain 'NT$50'
    Then 3rd row of product items should contain '12th Product for Checkout'
    Then 3rd row of product items should not contain 'Buy 2 in Group A & 1 in Group B for $49'
    Then 3rd row of product unit price should contain 'NT$10'
    Then 3rd row of product quantity should equal to '1'
    Then 3rd row of product items should contain 'NT$10'
    Then 4th row of product items should contain '13th Product for Checkout'
    Then 4th row of product items should not contain 'Buy 2 in Group A & 1 in Group B for $49'
    Then 4th row of product unit price should contain 'NT$35'
    Then 4th row of product quantity should equal to '1'
    Then 4th row of product items should contain 'NT$35'
    Then 5th row of product items should contain '17th Product for Checkout'
    Then 5th row of product items should not contain 'Buy 2 in Group A & 1 in Group B for $49'
    Then 5th row of product unit price should contain 'NT$10'
    Then 5th row of product quantity should equal to '1'
    Then 5th row of product items should contain 'NT$10'
    Then 6th row of product items should contain '18th Product for Checkout'
    Then 6th row of product items should contain 'Buy 2 in Group A & 1 in Group B for $49'
    Then 6th row of product unit price should contain 'NT$100'
    Then 6th row of product quantity should equal to '1'
    Then 6th row of product items should contain 'NT$100'
    Then discount applied should contain 'Buy 2 in Group A & 1 in Group B for $49'
    Then item subtotal should contain 'NT$264'
    Then item discount applied should contain '-NT$160'
    Then delivery fee should contain 'NT$10'
    Then total should contain 'NT$114'
    Then I mark the value of order confirm info as variable order info

    Given I am on Bundle Pricing Index Page
    When I click on tab included 'Bundle Group Pricing'
    Then 1st row of promotions should contain 'Buy 2 in Group A & 1 in Group B for $49'
    Then I click on 1st bundle price usage record
    Then I should be redirected to Bundle Pricing History Page
    Then bundle prmotion name should contain 'Buy 2 in Group A & 1 in Group B for $49'
    Then 1st row of bundle promotion should contain order number
    Then bundle promotion total should contain 'NT$114'
    Then bundle promotion discounted amount should contain 'NT$160'
    When I click on export promotions button
    Then I should see confirm button
    When I click on confirm button
    Then I wait for 60 seconds for mail sent
    Given I am on Google Mail Page
    When I fill customer email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    Then I should see search mail list
    When I click on row of mail list included 'Download Promotion Report'
    Then I should see mail detail
    Then I should see download button

    And ---ROLL BACK---
    Given I am on Bundle Pricing Index Page
    And I click on tab included 'Bundle Group Pricing'
    Then I click on 1st row of select checkbox list
    When I select delete of bulk actions dropdown
    Then I should see confirmation popover
    Then I click on delete checkbox
    When I click on confirm delete button
    Then promotions should contain 'No promotions yet'