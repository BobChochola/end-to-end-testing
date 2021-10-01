@PostTest @PreTest @BaseCase @Admin @FreeGift @Promotion @CouponCode @freeGiftCreateLimited-couponCodeExcludeDelivery
@fixture-product @fixture-freegift @fixture-delivery
Feature: Admin create new free gift promotion - coupon Code Exclude Delivery
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

  @C4572 @C4572-2
  Scenario: create free gifts coupon promotions except one delivery
    Given I am on Promotion Create Page
    Then I should see name field
    When I fill "(dirty data) buy more get more gift" to name field
    And I click on subtotal condition checkbox
    And I select minimum items of condition type dropdown
    When I select free gift of benefit type dropdown
    And I click on select button
    Then I should see select product popup
    And I click checkbox of product list for the same order of product of popover list included '1st Created Free Gift'
    And I click on popup confirm button
    Then I fill "2" to 1st promotion value field
    And I fill "3" to 1st promotion condition field
    When I click on add tier button
    Then I should see 2 promotion value field
    Then I fill "1" to 2nd promotion value field
    And I fill "5" to 2nd promotion condition field
    And I click on 2nd select button
    Then I should see select product popup
    And I click checkbox of product list for the same order of product of popover list included '2nd Created Free Gift'
    And I click on popup confirm button
    And I click on countinue to button
    And I click on 2nd countinue to button
    When I click on apply method checkbox included 'codes'
    Then I should see coupon code field
    And I fill "VIP5566" to coupon code field
    Then I click on never expires checkbox
    And I click on end date field
    Then I should see calendar table
    When I click on 3rd available date button
    And I click on done button
    And I click on 3rd countinue to button
    Then I should see delivery options checkbox
    And I click on delivery options checkbox included "(DBW) - LocalDelivery"
    Then I scroll down to delivery options checkbox
    And I click on delivery options checkbox included "(DBW) CustomDelivery"
    And I click on preview button
    Then coupon code should equal to "VIP5566"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain end date
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Customers"
    Then discount summary should contain "Get 2 Free Gift(s) (1st Created Free Gift) on Entire Order with purchase over 3 items"
    Then discount summary should contain "Get 1 Free Gift(s) (2nd Created Free Gift) on Entire Order with purchase over 5 items"
    Then delivery options should not contain "(DBW) - LocalDelivery"
    Then delivery options should not contain "(DBW) CustomDelivery"
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