@PostTest @PreTest @BaseCase @Admin @FreeGift @Promotion @freeGiftCreateLimited-selectedProduct
@fixture-product @fixture-freegift
Feature: Admin create new free gift promotion - selected Product
  As a merchant
  I want to create different free gifts promotions

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

  @C4572 @C4572-3
  Scenario: create free gifts promotions with specific product
    Given I am on Promotion Create Page
    And I fill "(dirty data) specific product get free gift" to name field
    And I click on selected products condition checkbox
    And I select minimum amount of condition type dropdown
    When I select free gift of benefit type dropdown
    And I click on select button
    Then I should see select product popup
    Then I scroll down to benefit type dropdown
    And I click checkbox of product list for the same order of product of popover list included '1st Created Free Gift'
    And I click on popup confirm button
    Then I fill "2" to 1st promotion value field
    And I fill "10" to 1st promotion condition field
    When I click on add tier button
    Then I should see 2 promotion value field
    Then I fill "3" to 2nd promotion value field
    And I fill "30" to 2nd promotion condition field
    And I click on 2nd select button
    Then I should see select product popup
    And I click checkbox of product list for the same order of product of popover list included '1st Created Free Gift'
    And I click on popup confirm button
    When I click on add tier button
    Then I should see 3 promotion value field
    Then I fill "5" to 3rd promotion value field
    And I fill "50" to 3rd promotion condition field
    And I click on 3rd select button
    Then I should see select product popup
    And I click checkbox of product list for the same order of product of popover list included '1st Created Free Gift'
    And I click on popup confirm button
    When I fill "2nd Product for Checkout" to search field
    Then I click on search button
    And I should see select product popup
    Then 1st product of popover list should contain '2nd Product for Checkout'
    And I click on 1st checkbox of product list
    Then I click on popup confirm button
    When I fill "4th Product for Checkout" to search field
    Then I click on search button
    And I should see select product popup
    Then 1st product of popover list should contain '4th Product for Checkout'
    And I click on 1st checkbox of product list
    Then I click on popup confirm button
    When I fill "7th Product for Checkout" to search field
    Then I click on search button
    And I should see select product popup
    Then 1st product of popover list should contain '7th Product for Checkout'
    And I click on 1st checkbox of product list
    Then I click on popup confirm button
    And I click on countinue to button
    And I click on 2nd countinue to button
    Then I click on never expires checkbox
    And I click on end date field
    Then I should see calendar table
    When I click on 3rd available date button
    And I click on done button
    Then I click on unlimited checkbox
    And I fill "5" to times of use field
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should equal to "(dirty data) specific product get free gift"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain end date
    Then total usage limit should equal to "5 time(s)"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Get 2 Free Gift(s) (1st Created Free Gift) on Selected Products with purchase of Selected Products over NT$10"
    Then discount summary should contain "Get 3 Free Gift(s) (1st Created Free Gift) on Selected Products with purchase of Selected Products over NT$30"
    Then discount summary should contain "Get 5 Free Gift(s) (1st Created Free Gift) on Selected Products with purchase of Selected Products over NT$50"
    And selected product list should contain "2nd Product for Checkout"
    And selected product list should contain "4th Product for Checkout"
    And selected product list should contain "7th Product for Checkout"
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    And ---ROLL BACK---
    Given I am on Promotion Index Page
    And I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    Then I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert