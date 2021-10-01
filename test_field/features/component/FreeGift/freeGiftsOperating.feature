@BaseCase @Admin @FreeGift @freeGiftsOperating
Feature: Create free gifts product and test operating
  As a merchant
  I want to create free gifts product
  And execute all of function normally

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

  @C4556 @C4556-1
  Scenario: Execute Edit button
    Given I am on Free Gifts Index Page
    When I click on add button
    Then I should be redirected to Free Gifts Create Page
    And I fill "(dirty data) 1st Created Free Gift" to english name field
    When I pick free gift photo to free gift photo selector
    Then I should see delete photo button
    And I click on unlimited checkbox
    And I click on add button
    Then I should be redirected to Free Gifts Index Page
    Then I should see alert
    Then 1st row of free gift list should contain "1st Created Free Gift"
    When I click on 1st row of edit button
    Then I should be redirected to Free Gifts Edit Page
    And I fill "1st Edited Free Gift" to english name field
    And I click on update button
    Then I should be redirected to Free Gifts Index Page
    Then 1st row of free gift list should contain "1st Edited Free Gift"
    And ---ROLL BACK---
    Given I am on Free Gifts Index Page
    Then I should see row of select checkbox list
    When I click on 1st row of select checkbox list
    When I select delete of bulk actions dropdown
    Then I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then free gift table should not contain '1st Edited Free Gift'

  @C4556 @C4556-2
  Scenario: BulkUpdate - unpublish
    Given I am on Free Gifts Index Page
    When I click on add button
    Then I should be redirected to Free Gifts Create Page
    And I fill "(dirty data) 1st Created Free Gift" to english name field
    When I pick free gift photo to free gift photo selector
    Then I should see delete photo button
    And I click on unlimited checkbox
    And I click on add button
    Then I should be redirected to Free Gifts Index Page
    Then I should see alert
    Then 1st row of free gift list should contain "1st Created Free Gift"
    When I click on 1st row of select checkbox list
    When I select unpublish of bulk actions dropdown
    Then I should see row of status list
    Then I should not see loading icon
    Then 1st row of status list should contain "Unpublish"
    And ---ROLL BACK---
    Given I am on Free Gifts Index Page
    Then I should see row of select checkbox list
    When I click on 1st row of select checkbox list
    When I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then free gift table should not contain '1st Created Free Gift'

  @C4556 @C4556-3
  Scenario: BulkUpdate - Publish
    Given I am on Free Gifts Index Page
    When I click on add button
    Then I should be redirected to Free Gifts Create Page
    And I fill "(dirty data) 1st Created Free Gift" to english name field
    When I pick free gift photo to free gift photo selector
    Then I should see delete photo button
    And I click on unlimited checkbox
    And I click on add button
    Then I should be redirected to Free Gifts Index Page
    Then I should see alert
    Then 1st row of free gift list should contain "1st Created Free Gift"
    When I click on 1st row of select checkbox list
    When I select unpublish of bulk actions dropdown
    Then I should see row of status list
    Then 1st row of status list should contain "Unpublish"
    When I click on 1st row of select checkbox list
    When I select publish of bulk actions dropdown
    Then I should see row of status list
    Then 1st row of status list should contain "Publish"
    And ---ROLL BACK---
    Given I am on Free Gifts Index Page
    Then I should see row of select checkbox list
    When I click on 1st row of select checkbox list
    When I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then free gift table should not contain '1st Created Free Gift'

  @C4556 @C4556-4 @fixture-freegift
  Scenario: BulkUpdate - Delete
    Given I am on Free Gifts Index Page
    When I click on add button
    Then I should be redirected to Free Gifts Create Page
    And I fill "(dirty data) 1st Deleted Free Gift" to english name field
    When I pick free gift photo to free gift photo selector
    Then I should see delete photo button
    And I click on unlimited checkbox
    And I click on add button
    Then I should be redirected to Free Gifts Index Page
    Then I should see alert
    Then 1st row of free gift list should contain "1st Deleted Free Gift"
    When I click on 1st row of select checkbox list
    When I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then 1st row of free gift list should not contain '1st Deleted Free Gift'