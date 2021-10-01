@BaseCase @Admin @Promotion @Bundle @actionLogsBundlePricing @fixture-addon @fixture-product @fixture-promotion
Feature: Action-Logs-for-Bundle-Pricing-Shopping-Cart-Add-on-Items
  As a Shopline
  I want to ckeck bundle pricing action logs

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

  @EAT-723 @EAT-723-1
  Scenario: check action logs for bundle pricing
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
    Then I should see never expires checkbox
    Then I click on never expires checkbox
    And I click on end date field
    Then I should see calendar table
    When I click on 3rd available date button
    And I click on done button
    And I click on 3rd countinue to button
    When I click on preview button
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain end date
    Then target group should equal to 'All Customers'
    Then discount summary should equal to 'Purchase 3 items of Selected Products for NT$99'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 3 for $99'
    Then I click on bundle price usage record
    Then I should be redirected to Bundle Pricing History Page
    Then I get idcode from page url and mask as key

    When I switch to 2 of tabs
    Given I am on Google Mail Page
    Then I should see account field
    When I fill merchant email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button

    Given I am on Action Logs Promotion Page
    Then id should contain "action_key"
    Then id should contain "promotion_created"

    When I switch to 1 of tabs
    Given I am on Bundle Pricing Index Page
    When I select bundle price edit dropdown option of bundle price edit dropdown
    Then I should be redirected to Bundle Pricing Edit Page
    And I click on countinue to button
    When I click on 2nd countinue to button
    Then I should see never expires checkbox
    And I click on 3rd countinue to button
    When I click on preview button
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 3 for $99'

    Given I am on Action Logs Promotion Page
    Then id should contain "action_key"
    Then id should contain "promotion_updated"
    Given I am on Bundle Pricing Index Page
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert
    Given I am on Action Logs Promotion Page
    Then id should contain "action_key"
    Then id should contain "promotion_deleted"

   @EAT-723 @EAT-723-2
   Scenario: check action logs for add on litem
    Given I am on Cart Add On Items Index Page
    When I click on add cart addon button
    Then I should be redirected to Cart Add On Items Create Page
    And I click on valid date field
    Then I should see calendar table
    When I click on today button
    And I click on done button
    And I click on invalid date field
    Then I should see calendar table
    When I click on 3rd available date button
    And I click on done button
    And I fill "Add-on Item" to english name field
    When I click on select add on items button
    Then I should see search add on items field
    And I input "2nd Addon for Checkout" to search add on items field
    When I click on search button
    Then add on items name should contain "2nd Addon for Checkout"
    And I click on 1st add on items checkbox
    When I click on add on items save button
    Then I should see add on items price field
    And I fill '10' to add on items price field
    And I click on unlimited checkbox
    When I click on save button
    Then I should be redirected to Cart Add On Items Index Page
    Then I should see alert
    Then 1st row of cart addon list should contain "Add-on Item"
    Then 1st row of cart addon list should contain date
    When I click on edit button
    Then I should be redirected to Cart Add On Items Edit Page
    Then I get idcode from page url and mask as key

    When I switch to 2 of tabs
    Given I am on Google Mail Page
    Then I should see account field
    When I fill merchant email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button

    Given I am on Action Logs Promotion Page
    Then id should contain "action_key"
    Then id should contain "promotion_created"

    When I switch to 1 of tabs
    Given I am on Cart Add On Items Index Page
    Then 1st row of cart addon list should contain "Add-on Item"
    When I click on edit button
    Then I should be redirected to Cart Add On Items Edit Page
    When I click on save button
    Then I should be redirected to Cart Add On Items Index Page
    Then I should see alert

    Given I am on Action Logs Promotion Page
    Then id should contain "action_key"
    Then id should contain "promotion_updated"
    Given I am on Cart Add On Items Index Page
    When I click on 1st select checkbox of cart addon list
    Then I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then cart add on items list should contain "No promotions yet"

    Given I am on Action Logs Promotion Page
    Then id should contain "action_key"
    Then id should contain "promotion_deleted"