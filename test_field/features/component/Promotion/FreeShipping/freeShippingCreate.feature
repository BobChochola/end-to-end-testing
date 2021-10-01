@PostTest @PreTest @BaseCase @Admin @Promotion @FreeShipping @CouponCode @freeShippingCreate
Feature: Create Promotion - free shipping
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

  @C3872 @C3872-1
  Scenario: Create Free Shipping - Over 500
    Given I am on Free Shipping Create Page
    And I fill "(dirty data) Over 500" to name field
    And I click on subtotal condition checkbox
    And I fill "500" to promotion condition field
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on unlimited checkbox
    And I fill "5" to limited field
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Over 500"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain "Never expires"
    Then total usage limit should equal to "5 time(s)"
    Then target group should equal to "All Customers"
    Then discount summary should equal to "Enjoy free shipping with purchase over NT$500"
    And I click on confirm button
    Then I should be redirected to Free Shipping Index Page
    Then I should see alert
    And ---ROLL BACK---
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

  @C3872 @C3872-2
  Scenario: Create Free Shipping - Member
    Given I am on Free Shipping Create Page
    When I fill "Member Only" to name field
    And I click on countinue to button
    And I click on target group checkbox included 'memberOnly'
    And I click on 2nd countinue to button
    And I click on never expires checkbox
    And I click on end date field
    Then I should see calendar table
    When I click on 3rd available date button
    And I click on done button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should contain "Member Only"
    Then coupon code should equal to "N/A"
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain end date
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Members"
    Then discount summary should contain "Enjoy free shipping"
    And I click on confirm button
    Then I should be redirected to Free Shipping Index Page
    Then I should see alert
    And ---ROLL BACK---
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

  @C3872 @C3872-3 @fixture-payment @fixture-delivery
  Scenario: Create Free Shipping - Limited Delivery and Payment
    Given I am on Free Shipping Create Page
    Then I Refresh
    Then I should see name field
    When I fill "Limited Delivery and Payment" to name field
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on apply method checkbox included 'codes'
    Then I should see coupon code field
    And I fill coupon code to coupon code field
    And I click on 3rd countinue to button
    Then I scroll down to payment options checkbox
    When I click on payment options checkbox included "Pay on 7-11 Store Pickup (B2C)"
    And I click on payment options checkbox included "Bank Transfer"
    Then I scroll down to delivery options checkbox
    Then I should see delivery options checkbox
    When I click on delivery options checkbox included "7-11 Pickup and pay in store (B2C)"
    And I click on delivery options checkbox included "Custom Delivery"
    And I click on preview button
    Then promotion name should contain "Limited Delivery and Payment"
    Then coupon code should equal to coupon code
    Then promotion limitations end date should contain "Never expires"
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Customers"
    Then discount summary should equal to "Enjoy free shipping"
    Then payment options should not contain "Pay on 7-11 Store Pickup (B2C)"
    Then payment options should not contain "Bank Transfer"
    Then payment options should contain "Cash on Delivery"
    Then delivery options should not contain "7-11 Pickup and pay in store (B2C)"
    Then delivery options should not contain "Custom Delivery"
    Then delivery options should contain "ezship pickup and pay in store"
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Free Shipping Index Page
    And ---ROLL BACK---
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert