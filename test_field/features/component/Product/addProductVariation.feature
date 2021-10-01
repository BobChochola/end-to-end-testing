@Admin @BaseCase @ImageService @Product @addProductVariation
Feature:admin can add product variation to some existing product
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

   @EAT-676 @EAT-676-1
   Scenario:add variations should disappear in variation list
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) add variations" to english name field
    And I click on quantity and pricing tab
    And I fill "100" to regular price field
    And I fill "49" to sale price field
    And I click on unlimited quantity checkbox
    And I click on variations tab
    And I click on variations toggle
    And I input "R" to add options field
    And I input "G" to add options field
    Then I should see 2 row of variation list
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    Then I should see row of product photo list
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain "add variations"
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on variations tab
    When I click on add variation button
    And I input "S" to 2nd add options field
    And I input "M" to 2nd add options field
    Then I should see 4 row of variation list
    And I click on add button
    Then I should be redirected to Product Index Page
    Then I should see alert
    Then 1st row of product list should contain "add variations"
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on variations tab
    Then I should see 4 row of variation list
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain "add variations"

  @EAT-676 @EAT-676-2
  Scenario:add some variant in variation list
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) add variations2" to english name field
    And I click on quantity and pricing tab
    And I fill "100" to regular price field
    And I fill "49" to sale price field
    And I click on unlimited quantity checkbox
    And I click on variations tab
    And I click on variations toggle
    And I input "R" to add options field
    And I input "G" to add options field
    Then I should see 2 row of variation list
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page

    Given I am on Product Index Page
    Then I should see row of product photo list
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain "add variations2"
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on variations tab
    Then I scroll down to add variant button
    When I click on add variant button
    Then I should see add variant popup
    And I fill 'test' to variant english name field
    And I click on popover button included 'OK'
    Then I should see 3 row of variation list
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Index Page
    Then 1st row of product list should contain "add variations2"
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on variations tab
    Then I scroll down to add variant button
    Then I should see 3 row of variation list
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain "add variations2"

  @EAT-676 @EAT-676-3
  Scenario:Turn off Variation edit variation
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    And I fill "(dirty data) add variations3" to english name field
    And I click on quantity and pricing tab
    And I fill "100" to regular price field
    And I fill "49" to sale price field
    And I click on unlimited quantity checkbox
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page

    Given I am on Product Index Page
    Then I should see row of product photo list
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain "add variations3"
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on variations tab
    And I click on variations toggle
    And I input "R" to add options field
    And I input "G" to add options field
    When I click on add variation button
    And I input "S" to 2nd add options field
    And I input "M" to 2nd add options field
    Then I scroll down to row of variation list
    Then I should see 4 row of variation list
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Index Page
    Then 1st row of product list should contain "add variations3"
    When I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    And I click on variations tab
    Then I should see 4 row of variation list
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then 1st product list should not contain "add variations3"