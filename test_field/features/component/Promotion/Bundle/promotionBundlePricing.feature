@BaseCase @PromotionBaseCase @Admin @Promotion @Bundle @promotionBundlePricing @C24220
@fixture-shop @fixture-product
Feature: Create Promotion - discount
  As a user of Shopline
  I want to create promotion for my customer
  So that my customer can use that when checkout

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

  @EAT-456 @EAT-456-1 @EAT-1055-31
  Scenario: Create promotion of BundlePricing  - Buy 3 for $99 by date
    Given I am on Bundle Pricing Create Page
    And I fill '(dirty data) Buy 3 for $99' to name field
    And I fill '3' to promotion value field
    And I fill '99' to discounted price field
    When I click on countinue to button
    Then I should see alert
    And I fill '18th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '18th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should not see alert
    Then I should see row of selected product
    And I click on countinue to button
    When I click on 2nd countinue to button
    Then I click on never expires checkbox
    And I click on end date field
    Then I should see calendar table
    When I click on 3rd available date button
    And I click on done button
    And I click on 3rd countinue to button
    When I click on preview button
    Then discount summary should equal to 'Purchase 3 items of Selected Products for NT$99'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 3 for $99'
    Then 1st row of promotions should contain start date
    Then 1st row of promotions should contain end date
    Then 1st row of promotions should contain 'All Customers'
    Then 1st row of promotions should contain '0 / Unlimited'
    When I select bundle price edit dropdown option included 'Promotion' of bundle price edit dropdown
    Then I should be redirected to Bundle Pricing Edit Page
    Then name field should contain 'Buy 3 for $99'
    Then promotion value field should contain '3'
    Then discounted price field should contain '99'
    And I click on countinue to button
    When I click on 2nd countinue to button
    And I click on 3rd countinue to button
    When I click on preview button
    Then promotion name should contain 'Buy 3 for $99'
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain end date
    Then target group should equal to 'All Customers'
    Then discount summary should equal to 'Purchase 3 items of Selected Products for NT$99'

    And ---ROLL BACK---
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

  @EAT-456 @EAT-456-2
  Scenario: Create promotion of BundlePricing  - Buy 5 for $120 by Never expires
    Given I am on Bundle Pricing Create Page
    And I fill '(dirty data) Buy 5 for $120' to name field
    And I fill '5' to promotion value field
    And I fill '120' to discounted price field
    When I click on countinue to button
    Then I should see alert
    And I click on search product button
    Then I should see select product popup
    And I click on 2nd checkbox of product list
    When I click on popup confirm button
    Then I should not see alert
    Then I should see row of selected product
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    When I click on preview button
    Then discount summary should equal to 'Purchase 5 items of Selected Products for NT$120'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 5 for $120'
    Then 1st row of promotions should contain 'Never expires'

    And ---ROLL BACK---
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert