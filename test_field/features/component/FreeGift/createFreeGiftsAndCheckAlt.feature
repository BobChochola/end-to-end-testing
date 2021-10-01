@BaseCase @ImageService @Admin @FreeGift @Marketing @ImageALT @createFreeGiftsAndCheckAlt @fixture-product
Feature: Create free gifts product and check image alt
  As a merchant
  I want to create free gifts product
  So that I can privide to users

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

  @C4555 @C4555-2 @EAT-1022 @EAT-1022-2
  Scenario: Create free gifts product with empty quantity, SKU, cost and weight and check image alt
    Given I am on Free Gifts Index Page
    Then I should see add button
    When I click on add button
    Then I should be redirected to Free Gifts Create Page
    When I fill "(dirty data) 1st Created Free Gift" to english name field
    And I pick free gift photo to free gift photo selector
    Then I should see delete photo button
    Then I should not see alt button
    And I click on unlimited checkbox
    And I click on add button
    Then I should be redirected to Free Gifts Index Page
    Then I should see alert
    Then 1st row of free gift list should contain "1st Created Free Gift"
    Then I should have image free gift photo for row of free gift photo
    Then 1st row of quantity list should contain "∞"
    Then 1st row of status list should contain "Published"
    And ---ROLL BACK---
    Given I am on Free Gifts Index Page
    Then I should see row of select checkbox list
    When I click on 1st row of select checkbox list
    When I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should not see confirmation popover

  @C4555 @C4555-3
  Scenario: Create free gifts product with quantity, SKU, cost and weight
    Given I am on Free Gifts Index Page
    Then I should see add button
    When I click on add button
    Then I should be redirected to Free Gifts Create Page
    When I fill "(dirty data) 2nd Created Free Gift" to english name field
    And I pick free gift photo to free gift photo selector
    Then I should see delete photo button
    And I fill "55" to quantity field
    And I fill "Test Free Gift" to SKU field
    And I fill "15" to cost field
    And I fill "5" to weight field
    And I click on add button
    Then I should be redirected to Free Gifts Index Page
    Then I should see alert
    Then 1st row of free gift list should contain "2nd Created Free Gift"
    Then I should have image free gift photo for row of free gift photo
    Then 1st row of quantity list should contain "55"
    Then 1st row of status list should contain "Published"
    And ---ROLL BACK---
    Given I am on Free Gifts Index Page
    Then I should see row of select checkbox list
    When I click on 1st row of select checkbox list
    When I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should not see confirmation popover