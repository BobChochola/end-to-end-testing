@PromotionBaseCase @PostTest @PreTest @BaseCase @Admin @Promotion @promotionCreate-memberOnce
Feature: Create Promotion - member Once
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

  @C3871 @C3871-4 @EAT-1055 @EAT-1055-34
  Scenario: Create promotion - member once
    Given I am on Promotion Create Page
    And I fill "(dirty data) Member once" to name field
    And I select discount amount of benefit type dropdown
    And I fill "100" to promotion value field
    And I click on countinue to button
    And I click on target group checkbox included 'memberOnly'
    And I click on once checkbox
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should equal to "(dirty data) Member once"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain "Never expires"
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Members"
    Then discount summary should equal to "Get NT$100 off on Entire Order"
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