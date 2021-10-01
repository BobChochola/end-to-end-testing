@PostTest @PreTest @BaseCase @PromotionBaseCase @Admin @FreeGift @Promotion @freeGiftCreateLimited-excludeDelivery
@fixture-freegift @fixture-delivery
Feature: Admin create new free gift promotion - exclude Delivery
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

  @C4572 @C4572-1 @EAT-1055 @EAT-1055-35
  Scenario: create free gifts promotions except one delivery
    Given I am on Promotion Create Page
    And I fill "(dirty data) member get two free gift" to name field
    When I select free gift of benefit type dropdown
    And I click on select button
    Then I should see select product popup
    When I input '1st Created Free Gift' to free gift search field
    Then 1st product of popover list should contain '1st Created Free Gift'
    And I click on 1st checkbox of product list
    And I click on popup confirm button
    Then I fill "2" to promotion value field
    And I click on countinue to button
    And I click on target group checkbox included 'memberOnly'
    And I click on 2nd countinue to button
    Then I click on never expires checkbox
    And I click on end date field
    Then I should see calendar table
    When I click on 3rd available date button
    And I click on done button
    And I click on 3rd countinue to button
    Then I should see delivery options checkbox
    And I click on delivery options checkbox included "(DBW) Ezship pickup and pay in store"
    Then I should see preview button
    And I click on preview button
    Then promotion name should equal to "(dirty data) member get two free gift"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain end date
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Members"
    Then discount summary should equal to "Get 2 Free Gift(s) (1st Created Free Gift) on Entire Order"
    Then delivery options should not contain "(DBW) Ezship pickup and pay in store"
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    And ---ROLL BACK---
    Given I am on Promotion Index Page
    And I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    Then I should see confirmation popover
    Then I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert