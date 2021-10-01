@PostTest @PreTest @BaseCase @Admin @Promotion @promotionCreate-discountAmount
Feature: Create Promotion - discount Amount
  As a user of Shopline
  I want to create promotion for my customer
  So that my customer can use that when checkout

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

  @C3871 @C3871-2 @fixture-payment @fixture-delivery
  Scenario: Create promotion - Over 1000 get 100 off
    Given I am on Promotion Create Page
    When I fill "(dirty data) Over 1000 get 100 off" to name field
    And I click on subtotal condition checkbox
    And I select discount amount of benefit type dropdown
    And I fill "100" to promotion value field
    And I fill "1000" to promotion condition field
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    Then I should see payment options checkbox
    When I click on payment options checkbox included "CVS via ECpay"
    When I scroll down to delivery options checkbox
    When I click on delivery options checkbox included "Family Mart Pickup and pay in store (B2C)"
    Then I should see preview button
    And I click on preview button
    Then promotion name should equal to "(dirty data) Over 1000 get 100 off"
    Then coupon code should equal to "N/A"
    Then promotion limitations end date should contain "Never expires"
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Customers"
    Then discount summary should equal to "Get NT$100 off on Entire Order with purchase over NT$1,000"
    Then payment options should not contain "CVS via ECpay"
    Then delivery options should not contain "Family Mart Pickup and pay in store (B2C)"
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    And ---ROLL BACK---
    Given I am on Promotion Index Page
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert