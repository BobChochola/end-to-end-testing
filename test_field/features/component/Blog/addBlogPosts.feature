@BaseCase @ImageService @Admin @Storefront @Blog @addBlogPosts @fixture-shop
Feature: add Blog Posts
  As a merchant
  I want to write blog for my product history

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
    Given I am on Store App Page
    When I check app panel block and click included 'Blog'
    And I check and click install button

  Scenario: Add Blog Posts
    Given I am on Blog Posts Page
    When I wait for 20 seconds for loading
    When I check and click activate button
    And I should see add posts button
    When I click on add posts button
    Then I should be redirected to Blog Posts Create Page
    And I fill post title to post title field
    And I fill post content to post content field
    When I click on image upload button
    And I pick blog photo to blog image selector
    And I should see box img
    When I click on upload button
    Then I should see post content img
    And I should have image blog photo for post content img
    When I click on save button
    Then I should see publish button
    When I click on publish button
    Then I should not see publish button
    When I click on save button
    Then I should be redirected to Blog Posts Page
    Then 1st row of blog list should contain post title
    Given I am on Shop Blog Posts Page
    Then 1st row of post title list should contain 'TEST BLOG TITLE'
    When I click on row of post title list included 'TEST BLOG TITLE'
    Then I should be redirected to Shop Blog Posts Show Page
    Then I should see blog post img
    And I should have image blog photo for blog post img
    And blog post should contain post content
    And ---ROLL BACK---
    Given I am on Blog Posts Page
    Then 1st row of blog list should contain post title
    Then I click on 1st delete button
    Then blog list table should not contain post title