@BaseCase @Admin @Storefront @Marketing @ImageALT @Category @imageAltTagCategoryBanner @fixture-shop @EAT-1022
Feature: Add Image Alt for Category Banner
  As a Merchant
  I want to create category banner with alt tag
  So that I can see the image with alt tag

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

  @EAT-1022-3
  Scenario: Add Image Alt for Category Banner
    Given I am on Category Create Page
    When I fill '(dirty data) Alt Category' to category name field
    And I scroll down to add button
    And I pick category banners photo to category banners photo selector
    Then I should see delete photo button
    Then I should see alt button
    When I click on alt button
    And I fill 'category banners alt test' to alt field
    And I click on alt ok button
    And I click on add button
    Then I should be redirected to Category List Page
    Then 2nd row of categories list should contain 'Alt Category'

    Given I am on Menu Navigation Page
    Then I should see add button
    And I click on add button
    Then I should be redirected to Menu Navigation Create Page
    And I select menu dropdown option included 'Product Category' of menu type list dropdown
    And I select page dropdown option included 'Alt Category' of page list dropdown
    Then I should see add button
    And I click on add button
    Then I should be redirected to Menu Navigation Page
    Then I should see 4 row of menu list
    Then 4th row of menu list should contain "Alt Category"

    Given I am on Shop Home Page
    Then 4th navigation bar should contain "Alt Category"
    When I click on 4th navigation bar
    Then I should be redirected to Shop Product Index Page
    Then I should see category banners
    Then the tag name of category banners is 'img'
    Then category banners should have attribute 'alt' equal to 'category banners alt test'
    And ---ROLL BACK---
    Given I am on Menu Navigation Page
    When I click on 4th delete button
    Then I should see confirm popover
    And I click on delete checkbox
    When I click on ok button
    Then I should see 3 row of menu list

    Given I am on Category List Page
    When I click delete button of categories list for the same order of row of categories list included "(dirty data) Alt Category"
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see 1 delete button of categories list