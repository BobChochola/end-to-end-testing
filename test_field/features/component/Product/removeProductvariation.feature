@Admin @BaseCase @ImageService @Product @removeProductVariation @fixture-product
Feature:admin can remove product variation to some existing product
  As a merchant
  I cam remove product variation
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

   @EAT-677 @EAT-677-1
   Scenario:removed variations should disappear in variation list
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) removed variations" to english name field
    And I click on quantity and pricing tab
    And I fill "100" to regular price field
    And I fill "49" to sale price field
    And I click on unlimited quantity checkbox
    And I click on variations tab
    And I click on variations toggle
    And I input "R" to add options field
    And I input "G" to add options field
    When I click on add variation button
    And I input "S" to 2nd add options field
    And I input "M" to 2nd add options field
    Then I should see 4 row of variation list
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page

    Given I am on Product Index Page
    Then I should see row of product photo list
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain "removed variations"
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on variations tab
    When I click on 2nd variation remove button
    Then I should see remove popup
    And I click on ok button
    Then I should see 2 row of variation list
    And I click on add button
    Then I should be redirected to Product Index Page
    Then I should see alert
    Then 1st row of product list should contain "removed variations"
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on variations tab
    Then 1st tag options field should contain "R"
    Then 1st tag options field should contain "G"
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then 1st row of product list should not contain "removed variations"

  @EAT-677 @EAT-677-2
   Scenario:Remove some variant in variation list
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) removed variations2" to english name field
    And I click on quantity and pricing tab
    And I fill "100" to regular price field
    And I fill "49" to sale price field
    And I click on unlimited quantity checkbox
    And I click on variations tab
    And I click on variations toggle
    And I input "S" to add options field
    And I input "E" to add options field
    And I input "X" to add options field
    And I input "Y" to add options field
    Then I should see 4 row of variation list
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page

    Given I am on Product Index Page
    Then I should see row of product photo list
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain "removed variations2"
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on variations tab
    When I click on 4th variant remove button
    When I click on 3rd variant remove button
    When I click on 2nd variant remove button
    Then tag options field should not contain "E"
    Then tag options field should not contain "X"
    Then tag options field should not contain "Y"
    Then I should see 1 row of variation list
    And I click on add button
    Then I should be redirected to Product Index Page
    Then I should see alert
    Then 1st row of product list should contain "removed variations2"
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on variations tab
    Then tag options field should not contain "E"
    Then tag options field should not contain "X"
    Then tag options field should not contain "Y"
    Then I should see 1 row of variation list
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then 1st row of product list should not contain "removed variations2"

  @EAT-677 @EAT-677-3
   Scenario:Turn off Variation
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) removed variations3" to english name field
    And I click on quantity and pricing tab
    And I fill "100" to regular price field
    And I fill "49" to sale price field
    And I click on unlimited quantity checkbox
    And I click on variations tab
    And I click on variations toggle
    And I input "R" to add options field
    And I input "G" to add options field
    When I click on add variation button
    And I input "S" to 2nd add options field
    And I input "M" to 2nd add options field
    Then I should see 4 row of variation list
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page

    Given I am on Product Index Page
    Then I should see row of product photo list
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain "removed variations3"
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on variations tab
    And I click on variations toggle
    Then I click on ok button
    Then I should not see options field
    And I click on add button
    Then I should be redirected to Product Index Page
    Then I should see alert
    Then 1st row of product list should contain "removed variations3"
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on variations tab
    Then I should not see add options field
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then 1st row of product list should not contain "removed variations3"