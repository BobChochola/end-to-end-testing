@BaseCase @ImageService @Admin @Product @checkIncreaseVariationLimit @fixture-enterprise-plan
Feature: Increase Product Variant Combinations Limit to 400
  As a user of Shopline
  I want to create Product Variant Combinations Limit to 400
  check rollout key Increase_Variation_Limit internal

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

  @EAT-741 @EAT-741-1
  Scenario: the limit will be increased to 400
    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on quantity and pricing tab
    And I fill "20" to regular price field
    And I fill "11" to quantity field
    And I click on info tab
    And I fill "(dirty data) be increased to 400 variation" to english name field
    And I click on variations tab
    And I click on variations toggle
    And I input "1" to add options field
    And I input "2" to add options field
    And I input "3" to add options field
    And I input "4" to add options field
    And I input "5" to add options field
    And I input "6" to add options field
    And I input "7" to add options field
    And I input "8" to add options field
    And I input "9" to add options field
    And I input "10" to add options field
    And I input "11" to add options field
    And I input "12" to add options field
    And I input "13" to add options field
    And I input "14" to add options field
    And I input "15" to add options field
    And I input "16" to add options field
    And I input "17" to add options field
    And I input "18" to add options field
    And I input "19" to add options field
    And I input "20" to add options field
    When I click on add variation button
    And I input "one" to 2nd add options field
    And I input "two" to 2nd add options field
    And I input "three" to 2nd add options field
    And I input "four" to 2nd add options field
    And I input "five" to 2nd add options field
    And I input "six" to 2nd add options field
    And I input "seven" to 2nd add options field
    And I input "eight" to 2nd add options field
    And I input "nine" to 2nd add options field
    And I input "ten" to 2nd add options field
    And I input "eleven" to 2nd add options field
    And I input "twelve" to 2nd add options field
    And I input "thirteen" to 2nd add options field
    And I input "fourteen" to 2nd add options field
    And I input "fifteen" to 2nd add options field
    And I input "sixteen" to 2nd add options field
    And I input "seventeen" to 2nd add options field
    And I input "eighteen" to 2nd add options field
    And I input "nineteen" to 2nd add options field
    And I input "twenty" to 2nd add options field
    And I input "error" to 2nd add options field
    Then I should see variants error message
    Then variants error message should contain "Adding this would exceed variant limit. (Max:400)"
    When I select language dropdown option included '繁' of language dropdown
    Then variants error message should contain "增加此項會超過款式上限（最多 400 個款式）"
    And I click on 40th variants option remove button
    And I input "error" to 2nd add options field
    Then variant list title should contain '400 / 400'
    Then I should see 8 variant list page button
    Then I should see 50 row of variation list
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    Then I should see row of product photo list
    Then I should have image product photo for row of product photo list
    Then 1st row of product list should contain "be increased to 400 variation"
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then product list should not contain "be increased to 400 variation"
