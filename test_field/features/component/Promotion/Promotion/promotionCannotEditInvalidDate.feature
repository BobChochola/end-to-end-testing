@BaseCase @Admin @Promotion @promotionCannotEditInvalidDate @fixture-payment @fixture-delivery
Feature: Admin create new free gift promotion
  As a merchant
  I want to create promotions at rollout key promotion hour internal

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    Then I should see successful login
    When I check and click no thanks 
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button

  @EAT-739 @EAT-739-1
  Scenario: create promotions at rollout key promotion hour internal
    Given I am on Promotion Create Page
    When I fill "(dirty data) Over 1000 get 100 off" to name field
    And I click on subtotal condition checkbox
    And I select discount amount of benefit type dropdown
    And I fill "100" to promotion value field
    And I fill "1000" to promotion condition field
    And I click on countinue to button
    When I click on 2nd countinue to button
    Then I click on never expires checkbox
    And I fill tomorrow start full time to start date field
    And I fill end full time to end date field
    Then start date field should not contain tomorrow start full time
    Then end date field should not contain end full time
    And I click on start date field
    Then I should see calendar table
    And I click on today button
    And I click on now button
    And I click on done button
    And I click on end date field
    Then I should see calendar table
    When I click on 3rd available date button
    And I click on now button
    And I click on done button
    Then start date field should contain start full time
    Then end date field should contain end full time
    And I click on 3rd countinue to button
    When I click on payment options checkbox included "CVS via ECpay"
    When I click on delivery options checkbox included "Family Mart Pickup and pay in store (B2C)"
    And I click on preview button
    Then promotion name should equal to "(dirty data) Over 1000 get 100 off"
    Then coupon code should equal to "N/A"
    Then total usage limit should equal to "Unlimited"
    Then target group should equal to "All Customers"
    Then discount summary should equal to "Get NT$100 off on Entire Order with purchase over NT$1,000"
    Then payment options should not contain "CVS via ECpay"
    Then delivery options should not contain "Family Mart Pickup and pay in store (B2C)"
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    Then row of promotion list should contain "Over 1000 get 100 off"
    Then row of valid period should contain start full time
    Then row of valid period should contain end full time
    And ---ROLL BACK---
    Given I am on Promotion Index Page
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert