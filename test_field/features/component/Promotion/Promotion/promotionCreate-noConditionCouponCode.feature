@PostTest @PreTest @BaseCase @PromotionBaseCase @Admin @Promotion @promotionCreate-noConditionCouponCode @smokeTest
Feature: Create Promotion - no Condition Coupon Code(All Shop 10% off)
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

  @C3871 @C3871-1 @EAT-1055 @EAT-1055-33
  Scenario: Create promotion - All Shop 10% off
    Given I am on Promotion Create Page
    And I fill "(dirty data) All Shop 10% off" to name field
    And I fill "10" to promotion value field
    And I click on countinue to button
    And I click on 2nd countinue to button
    Then I should see 3 apply method checkbox
    And I click on apply method checkbox included 'codes'
    Then I should see coupon code field
    And I fill coupon code to coupon code field
    And I click on never expires checkbox
    And I click on end date field
    Then I should see calendar table
    When I click on 3rd available date button
    And I click on done button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should equal to "(dirty data) All Shop 10% off"
    Then coupon code should equal to coupon code
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain end date
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Customers"
    Then discount summary should equal to "Get 10% off on Entire Order"
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    And ---ROLL BACK---
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert