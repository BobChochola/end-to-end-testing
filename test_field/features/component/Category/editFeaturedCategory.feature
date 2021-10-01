@BaseCase @Admin @Storefront @Category @editFeaturedCategory @fixture-product @fixture-shop
Feature: Featured Category Edit and Update Banner
  As a merchant
  I can update the content of category

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

  Scenario: Featured Category Edit and Update Banner
    Given I am on Category List Page
    Then 1st row of categories list should contain "Featured (Show on homepage)"
    Then 1st row of categories list should contain "Edit"
    When I click on 1st edit button of categories list
    Then I should be redirected to Category Edit Page
    Then I should see seo title field
    When I fill "Seo Test" to seo title field
    Then I scroll down to update button
    And I pick category banner photo to banner photo selector
    Then I should see delete photo button
    When I click on update button
    Then I should be redirected to Category List Page
    Given I am on Shop Product Index Page
    When I click on 1st row of categories
    Then I should see product of products list
    Then I should see category banner
    And ---ROLL BACK---
    Given I am on Category List Page
    When I click on 1st edit button of categories list
    Then I should be redirected to Category Edit Page
    Then I should see seo title field
    When I fill "" to seo title field
    Then I click on delete photo button
    When I click on update button