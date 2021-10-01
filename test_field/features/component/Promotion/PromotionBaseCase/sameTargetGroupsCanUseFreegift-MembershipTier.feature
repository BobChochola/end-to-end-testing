@PromotionBaseCase @Admin @Promotion @sameTargetGroupsCanUseFreegift-MembershipTier @fixture-product @fixture-freegift @fixture-promotion @C25695
Feature: Same target groups can use a lot of freegift for a same product at the same time
  As a user of Shopline
  Same target groups can use a lot of freegift for a same product at the same time (membership tier)

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

    Given I am on Membership Tier Setting Page
    When I click on add button
    Then I should be redirected to Membership Tier New Page
    When I fill '(dirty data) VIP discount' to membership tier name field
    And I select membership upgrade condition option included 'Single purchase' of membership upgrade condition select button
    And I fill '0' to membership upgrade rules field
    And I fill '20' to member offer field
    And I click on submit button
    Then I should be redirected to Membership Tier Setting Page
    Then I should see row of membership list

    Given I am on Promotion Create Page
    And I fill "(dirty data) test Free Gift Promotion" to name field
    And I click on selected products condition checkbox
    And I select minimum items of condition type dropdown
    When I select free gift of benefit type dropdown
    And I click on select button
    Then I should see select product popup
    And I click checkbox of product list for the same order of product of popover list included '1st Created Free Gift'
    And I click on popup confirm button
    Then I fill "1" to 1st promotion value field
    And I fill "3" to 1st promotion condition field
    When I click on add tier button
    Then I fill "3" to 2nd promotion value field
    And I fill "5" to 2nd promotion condition field
    And I click on 2nd select button
    Then I should see select product popup
    And I click checkbox of product list for the same order of product of popover list included '1st Created Free Gift'
    And I click on popup confirm button
    When I click on add tier button
    Then I fill "6" to 3rd promotion value field
    And I fill "10" to 3rd promotion condition field
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
    When I fill "7th Product for Checkout" to search field
    Then I click on search button
    And I should see select product popup
    Then 1st product of popover list should contain '7th Product for Checkout'
    And I click on 1st checkbox of product list
    Then I click on popup confirm button

    And I click on countinue to button
    And I click on target group checkbox included 'memberOnly'
    And I click on membership tier checkbox
    Then I should see membership dropdown
    And I click on membership dropdown
    And I click on 1st select membership checkbox
    Then I should see membership list
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should equal to "(dirty data) test Free Gift Promotion"
    Then total usage limit should equal to "Unlimited"
    Then target group list should contain 'VIP discount'
    Then discount summary should contain "Get 1 Free Gift(s) (1st Created Free Gift) on Selected Products with purchase of Selected Products over 3 items"
    Then discount summary should contain "Get 3 Free Gift(s) (1st Created Free Gift) on Selected Products with purchase of Selected Products over 5 items"
    Then discount summary should contain "Get 6 Free Gift(s) (1st Created Free Gift) on Selected Products with purchase of Selected Products over 10 items"
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page

  @EAT-1052 @EAT-1052-1
  Scenario: Same target groups can use a lot of freegift for a same product at the same time - All
    Given I am on Promotion Create Page
    And I fill "(dirty data) test Free Gift Promotion -1" to name field
    And I click on selected products condition checkbox
    And I select minimum items of condition type dropdown
    When I select free gift of benefit type dropdown
    And I click on select button
    Then I should see select product popup
    And I click checkbox of product list for the same order of product of popover list included '1st Created Free Gift'
    And I click on popup confirm button
    Then I fill "1" to 1st promotion value field
    And I fill "3" to 1st promotion condition field
    When I click on add tier button
    Then I fill "3" to 2nd promotion value field
    And I fill "5" to 2nd promotion condition field
    And I click on 2nd select button
    Then I should see select product popup
    And I click checkbox of product list for the same order of product of popover list included '1st Created Free Gift'
    And I click on popup confirm button
    When I click on add tier button
    Then I fill "6" to 3rd promotion value field
    And I fill "10" to 3rd promotion condition field
    And I click on 3rd select button
    Then I should see select product popup
    And I click checkbox of product list for the same order of product of popover list included '1st Created Free Gift'
    And I click on popup confirm button

    When I fill "2nd Product for Checkout" to search field
    Then I click on search button
    And I should see select product popup
    And I click on 1st checkbox of product list
    Then I click on popup confirm button
    When I fill "7th Product for Checkout" to search field
    Then I click on search button
    And I should see select product popup
    And I click on 1st checkbox of product list
    Then I click on popup confirm button

    And I click on countinue to button
    And I click on target group checkbox included 'memberOnly'
    And I click on membership tier checkbox
    Then I should see membership dropdown
    And I click on membership dropdown
    And I click on 1st select membership checkbox
    Then I should see membership list
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should equal to "(dirty data) test Free Gift Promotion -1"
    Then total usage limit should equal to "Unlimited"
    Then target group list should contain 'VIP discount'
    Then discount summary should contain "Get 1 Free Gift(s) (1st Created Free Gift) on Selected Products with purchase of Selected Products over 3 items"
    Then discount summary should contain "Get 3 Free Gift(s) (1st Created Free Gift) on Selected Products with purchase of Selected Products over 5 items"
    Then discount summary should contain "Get 6 Free Gift(s) (1st Created Free Gift) on Selected Products with purchase of Selected Products over 10 items"
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    Then 1st row of promotions should contain 'test Free Gift Promotion -1'
    And ---ROLL BACK---
    Given I am on Promotion Index Page
    When I click on 1st row of select checkbox list
    When I click on 2nd row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert

    Given I am on Membership Tier Setting Page
    When I select dropdown option included "Delete" of dropdown button
    And I should see confirmation popup window
    And I click on delete button
    And I wait for 5 seconds for deleting
    When I click on logs button
    And I should see row of logs
    Then 1st row of logs should contain "Membership tier settings is deleted"